# stdlib imports
from random import randint, choice as randelem

# 3rd-party imports
import pygame as pg
from pygame.locals import (
    K_w,
    K_1,
    K_2,
    K_r,
    K_SPACE,
    KEYDOWN,
    QUIT,
    SRCALPHA,
)

# project imports
from defs import (
    FPS,
    SCREEN_WIDTH,
    SCREEN_HEIGHT,
    GameState,
    FADE_FRAMES,
    FADE_MULTIPLIER,
    MAX_ALPHA,
)
import debug
from events import (
    Event,
    initialize_event_timers,
    disable_event_timers,
    SpecialEventManager,
)
from sprites.player import create_player, Player
import sprites.background as background
import sprites.groups as groups
from stats import stat_tracker


def run_gameplay(game_clock: pg.time.Clock, main_screen: pg.Surface):
    # create game screen
    game_screen = pg.Surface((SCREEN_WIDTH, SCREEN_HEIGHT), flags=SRCALPHA)
    screen_rect = game_screen.get_rect()

    # track stats for this playthrough
    stat_tracker.init_new_playthrough(
        start_time_ms=pg.time.get_ticks(),
        player_max_health=Player.DEFAULT_HEALTH,
    )

    # start initial events
    initialize_event_timers()

    # handle frame-independent phsyics
    timedelta = 0

    # create the background
    for _ in range(background.Star.NUM_ON_LOAD):
        star = background.Star(screen_rect, on_load=True)
        groups.stars.add(star)
        groups.all_sprites.add(star)

    # handle fade-in
    fade_surf = pg.Surface(main_screen.get_size())
    fade_surf.fill('white')
    curr_fade_in_frame = 0

    # create the player
    player = create_player(screen_rect)

    # enable game music
    stat_tracker.control__game_init += 1

    # special events
    special_event_manager = SpecialEventManager(screen_rect)

    # difficulty manager
    difficulty_manager = DifficultyManager()

    gameplay_loop = True
    while gameplay_loop:
        # update frame counter
        stat_tracker.game__total_frames += 1

        # event handler
        for event in pg.event.get():
            # handle exit
            if event.type == QUIT:
                gameplay_loop = False
                next_state = GameState.QUIT

            # handle creating background
            elif event.type == Event.ADD_NOTE.type:
                for _ in range(background.Note.NUM_NOTES_PER_EVENT):
                    note = background.Note(screen_rect)
                    groups.notes.add(note)
                    groups.all_sprites.add(note)

            elif event.type == Event.ADD_STAR.type:
                for _ in range(background.Star.NUM_STARS_PER_EVENT):
                    star = background.Star(screen_rect)
                    groups.stars.add(star)
                    groups.all_sprites.add(star)

            # handle player death
            elif event.type == Event.PLAYER_DEATH.type:
                gameplay_loop = False
                next_state = GameState.DEATH_MENU

            # handle creating grunts
            elif event.type == Event.ADD_STRAFER_GRUNT.type and \
                not groups.strafer_grunt_enemies.is_full and \
                not special_event_manager.event_queued and \
                not special_event_manager.event_in_progress and \
                not debug.NO_ENEMIES:
                groups.strafer_grunt_enemies.create_new_grunt()

            # Handle creating Spinner Grunts
            elif event.type == Event.ADD_SPINNER_GRUNT.type and \
                not groups.spinner_grunt_enemies.is_full and \
                not special_event_manager.event_queued and \
                not special_event_manager.event_in_progress and \
                not debug.NO_ENEMIES:
                groups.spinner_grunt_enemies.create_new_grunt()

            # Hanlde LetterField event fade out
            elif event.type == Event.FADE_OUT_LETTERS.type:
                for letter in groups.letters:
                    letter.enable_fade_out()

            elif event.type == KEYDOWN:
                # Cycle through players weapons
                if event.key == K_1:
                    player.switch_weapon(0)
                    stat_tracker.weapon__selected.update(0)
                elif event.key == K_2:
                    player.switch_weapon(1)
                    stat_tracker.weapon__selected.update(1)
                elif event.key == K_r:
                    player.cycle_weapons()
                    stat_tracker.weapon__selected.update(player.current_weapon_id)

        # handle fade-in on game start
        if curr_fade_in_frame < FADE_FRAMES:
            new_alpha = MAX_ALPHA - int(curr_fade_in_frame * FADE_MULTIPLIER)
            fade_surf.set_alpha(new_alpha)
            curr_fade_in_frame += 1

        # get pressed key events
        pressed_keys = pg.key.get_pressed()
        if pressed_keys[K_w] or pressed_keys[K_SPACE]:
            player.attack()

        # move the player
        player.update(pressed_keys, screen_rect)

        # move enemies
        groups.all_enemies.update(screen_rect)

        # enemy attacks
        for enemy in groups.all_enemies:
            enemy.attack()

        # move projectiles
        groups.player_projectiles.update(screen_rect)
        groups.enemy_projectiles.update(screen_rect)

        # move upgrades
        groups.health_upgrades.update(timedelta=timedelta)

        # move background
        groups.notes.update(screen_rect)
        groups.stars.update(screen_rect)
        groups.letters.update(screen_rect)

        # move indicators
        groups.side_bars.update(screen_rect)

        # collision checks
        handle_collisions(player)

        # update difficulty
        difficulty_manager.update_difficulty(special_event_manager)

        # handle special events
        standard_enemy_count = stat_tracker.enemies__standard_count
        if special_event_manager.kill_event_should_start(standard_enemy_count):
            special_event_manager.queue_event()

        # Wait until all remaining enemies are killed before beginning event
        if special_event_manager.event_queued and stat_tracker.enemies__num_on_screen.last == 0:
            special_event_manager.start_event()

        special_event_manager.update(timedelta=timedelta)

        if special_event_manager.event_in_progress and special_event_manager.event_is_finished:
            special_event_manager.end_event()

        # screen background
        game_screen.fill((0, 0, 0,))

        # draw all sprites
        for sprite in groups.all_sprites:
            game_screen.blit(sprite.surf, sprite.rect)

        # handle fade-in on game start
        if curr_fade_in_frame < FADE_FRAMES:
            game_screen.blit(fade_surf, fade_surf.get_rect())

        # draw game screen to display
        main_screen.blit(game_screen, screen_rect)

        # render screen
        pg.display.flip()

        # update stats tracker
        stat_tracker.player__position.update(player.rect.centerx, player.rect.centery)
        stat_tracker.player__alive_projectiles.update(len(groups.player_projectiles))
        stat_tracker.enemies__num_on_screen.add(len(groups.all_enemies))
        stat_tracker.enemies__alive_projectiles.update(len(groups.enemy_projectiles))
        stat_tracker.update_stats()
        stat_tracker.set_game_time(pg.time.get_ticks())
        stat_tracker.send_stats()

        # lock FPS
        timedelta = game_clock.tick(FPS) / 1000

    # return the next state
    end_game()
    return next_state


def handle_collisions(player: Player):
    # grunt + enemies collison
    # change Grunt strafe direction
    handled_enemies = set()
    for grunt in groups.strafer_grunt_enemies:
        collided_enemies = pg.sprite.spritecollide(
            grunt,
            groups.all_enemies,
            dokill=False,
            collided=pg.sprite.collide_rect,
        )
        for collided_enemy in collided_enemies:
            # skip for enemy colliding with itself and if the enemy has already been handled
            if grunt == collided_enemy or grunt in handled_enemies:
                continue

            grunt.switch_strafe_direction_on_enemy_collision(collided_enemy)
            handled_enemies.add(grunt)

    # projectiles + enemies collision
    # destroy projectile + damage enemy
    collided = pg.sprite.groupcollide(
        groups.player_projectiles,
        groups.all_enemies,
        dokilla=True,
        dokillb=False,
        collided=pg.sprite.collide_mask,
    )
    for projectile, enemies in collided.items():
        for enemy in enemies:
            stat_tracker.enemies__hit += 1
            enemy.take_damage(projectile.damage)

        if enemy.is_dead:
            groups.health_upgrades.create_new_health_upgrade_on_probability(enemy.rect.center)

        projectile_distance = projectile.get_distance_traveled()
        stat_tracker.enemies__hit_distance.add(projectile_distance)

    # notes + player collision
    collided = pg.sprite.spritecollide(
        player,
        groups.notes,
        dokill=False,
        collided=pg.sprite.collide_circle_ratio(0.6),
    )

    for note in collided:
        player.collect_note()
        curr_time = pg.time.get_ticks()
        stat_tracker.notes__time__between_collecting.add(curr_time - note.spawn_time)
        note.kill()
        stat_tracker.notes__score += note.score
        stat_tracker.notes__collected += 1

    # letters + player collision
    collided = pg.sprite.spritecollide(
        player,
        groups.letters,
        dokill=False,
        collided=pg.sprite.collide_mask,
    )

    for letter in collided:
        player.take_damage(letter.damage)
        letter.kill()

    # letter + letter collison
    # change letter movement
    handled_letters = set()
    for letter in groups.letters:
        collided_letters = pg.sprite.spritecollide(
            letter,
            groups.letters,
            dokill=False,
            collided=pg.sprite.collide_mask,
        )
        for collided_letter in collided_letters:
            # skip for enemy colliding with itself and if the enemy has already been handled
            if letter == collided_letter or letter in handled_letters:
                continue

            letter.change_movement_on_collision(collided_letter)
            handled_letters.add(letter)

    # letter + player projectiles
    collided = pg.sprite.groupcollide(
        groups.player_projectiles,
        groups.letters,
        dokilla=True,
        dokillb=False,
        collided=pg.sprite.collide_rect_ratio(0.5),
    )

    # health upgrades + player collision
    collided = pg.sprite.spritecollide(
        player,
        groups.health_upgrades,
        dokill=False,
        collided=pg.sprite.collide_mask,
    )

    for health_upgrade in collided:
        player.heal(health_upgrade.health_increase)
        curr_time = pg.time.get_ticks()
        stat_tracker.upgrades__time__between_collecting.add(curr_time - health_upgrade.spawn_time)
        health_upgrade.kill()
        stat_tracker.upgrades__picked_up += 1

    # health upgrades + grunt collision
    collided = pg.sprite.groupcollide(
        groups.strafer_grunt_enemies,
        groups.health_upgrades,
        dokilla=False,
        dokillb=False,
        collided=pg.sprite.collide_rect,
    )

    for grunt, upgrades in collided.items():
        for upgrade in upgrades:
            grunt.switch_strafe_direction_on_upgrade_collision(upgrade)

    # strafer grunt + player collision
    collided = pg.sprite.spritecollide(
        player,
        groups.strafer_grunt_enemies,
        dokill=False,
        collided=pg.sprite.collide_mask,
    )

    for enemy in collided:
        enemy.switch_strafe_direction_on_player_collision(player)

    # player + enemy collision
    collided = pg.sprite.spritecollide(
        player,
        groups.all_enemies,
        dokill=False,
        collided=pg.sprite.collide_mask,
    )

    for enemy in collided:
        player.update_enemies_collided(enemy)

    # projectile + player near misses
    collided = pg.sprite.spritecollide(
        player,
        groups.enemy_projectiles,
        dokill=False,
        collided=pg.sprite.collide_rect,
    )
    player.add_projectiles_in_range(collided)

    # projectiles + player collision
    # destroy projectile + damage player
    collided = pg.sprite.spritecollide(
        player,
        groups.enemy_projectiles,
        dokill=False,
        collided=pg.sprite.collide_mask,
    )
    for projectile in collided:
        player.update_dodges(projectile)
        player.take_damage(projectile.damage)
        projectile.kill()
        stat_tracker.player__hit_distance.add(projectile.get_distance_traveled())
        if projectile.AVAILABLE_VARIANTS is not None and hasattr(projectile, 'variant'):
            stat_tracker.player__projectile_hit_count.increase(projectile.variant)


def end_game():
    """Reset the game so it can be played again from the beginning"""
    disable_event_timers()

    for sprite in groups.all_sprites:
        if sprite not in groups.stars:
            sprite.kill()

    stat_tracker.control__game_init -= 1
    stat_tracker.send_stats()


class DifficultyManager:
    # Change difficulty thresholds
    KILL_THRESHOLD = 20
    EVENT_THRESHOLD = 2

    # Change Difficulty functions
    STANDARD_FUNCTIONS = [
        groups.strafer_grunt_enemies.change_max_rows,
        groups.strafer_grunt_enemies.change_grunts_per_row,
        groups.strafer_grunt_enemies.change_spawn_timer,
        groups.strafer_grunt_enemies.change_grunt_health,
        groups.spinner_grunt_enemies.change_max_grunts,
        groups.spinner_grunt_enemies.change_spawn_timer,
        groups.spinner_grunt_enemies.change_grunt_health,
    ]
    SPECIAL_FUNCTIONS = [
        groups.spinner_grunt_enemies.change_grunts_per_ellipse_event,
    ]
    RESET_FUNCTIONS = [
        groups.strafer_grunt_enemies.reset,
        groups.spinner_grunt_enemies.reset,
        groups.health_upgrades.reset,
    ]

    def roll_probability(self) -> int:
        player_max_health = stat_tracker.player__max_health.value
        return randint(0, player_max_health - 1)

    def __init__(self) -> None:
        self.standard_change_count = 0
        self.special_change_count = 0
        self.reset_difficulty()

    def reset_difficulty(self):
        for reset_func in self.RESET_FUNCTIONS:
            reset_func()

    def update_difficulty(self, event_manager: SpecialEventManager) -> None:
        self.update_standard_difficulty()
        self.update_special_event_difficulty(event_manager)

    def update_standard_difficulty(self) -> None:
        num_enemies_killed = stat_tracker.enemies__killed.value

        if num_enemies_killed >= (self.standard_change_count + 1) * self.KILL_THRESHOLD:
            player_curr_health = stat_tracker.player__curr_health.value
            change_difficulty_function = randelem(self.STANDARD_FUNCTIONS)

            if self.roll_probability() < player_curr_health:
                change_difficulty_function(1)
            elif self.roll_probability() > player_curr_health:
                change_difficulty_function(-1)

            # update count whether difficulty changes or not
            self.standard_change_count += 1

    def update_special_event_difficulty(self, event_manager: SpecialEventManager) -> None:
        if event_manager.event_count >= (self.special_change_count + 1) * self.EVENT_THRESHOLD:
            player_curr_health = stat_tracker.player__curr_health.value
            change_difficulty_function = randelem(self.SPECIAL_FUNCTIONS)
            # increase difficulty
            if self.roll_probability() < player_curr_health:
                change_difficulty_function(1)
            # decrease difficulty
            elif self.roll_probability() > player_curr_health:
                change_difficulty_function(-1)

            # update count whether difficulty changes or not
            self.special_change_count += 1
