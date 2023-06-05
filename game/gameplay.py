# stdlib imports
from random import randint

# 3rd-party imports
import pygame as pg
from pygame.locals import (
    K_r,
    K_w,
    K_SPACE,
    KEYDOWN,
    QUIT,
    SRCALPHA,
)

# project imports
from attacks import Weapon
from defs import FPS, SCREEN_WIDTH, SCREEN_HEIGHT, GameState
import debug
from events import Event, initialize_event_timers, disable_event_timers
from sprites.player import create_player
import sprites.background as background
import sprites.enemies as enemies
import sprites.projectiles as projectiles
import sprites.groups as groups
from stats import stat_tracker


def run_gameplay(game_clock: pg.time.Clock, main_screen: pg.Surface):
    # create game screen
    game_screen = pg.Surface((SCREEN_WIDTH, SCREEN_HEIGHT), flags=SRCALPHA)

    # track stats for this playthrough
    stat_tracker.init_new_playthrough(pg.time.get_ticks())

    # start initial events
    initialize_event_timers()

    # handle frame-independent phsyics
    timedelta = 0

    # create the player
    player = create_player(game_screen.get_rect())

    gameplay_loop = True
    while gameplay_loop:
        # event handler
        for event in pg.event.get():
            # handle exit
            if event.type == QUIT:
                gameplay_loop = False
                next_state = GameState.QUIT

            # handle creating stars
            elif event.type == Event.ADD_STAR.type:
                for _ in range(background.Star.NUM_STARS_PER_EVENT):
                    star = background.Star(game_screen.get_rect())
                    groups.stars.add(star)
                    groups.all_sprites.add(star)

            # handle player death
            elif event.type == Event.PLAYER_DEATH.type:
                gameplay_loop = False
                next_state = GameState.MAIN_MENU

            # handle creating grunts
            elif event.type == Event.ADD_STRAFER_GRUNT.type and \
                not groups.strafer_grunt_enemies.is_full() and \
                not debug.NO_ENEMIES:
                # create Grunt object
                grunt_weapon = Weapon(
                    projectiles.RedEnergyBeam,
                    groups.enemy_projectiles,
                    Weapon.INFINITE_AMMO,
                    damage=1,
                    attack_speed=randint(4, 7),
                    rate_of_fire=randint(500, 2000),
                    projectile_scale=0.5,
                )
                grunt = groups.strafer_grunt_enemies.create_new_grunt([grunt_weapon])
                groups.all_sprites.add(grunt)
                groups.all_enemies.add(grunt)

            # Handle creating Spinner Grunts
            elif event.type == Event.ADD_SPINNER_GRUNT.type and \
                not groups.spinner_grunt_enemies.is_full() and \
                not debug.NO_ENEMIES:
                # create Grunt object
                grunt_weapon = Weapon(
                    projectiles.OrangeEnergyOrb,
                    groups.enemy_projectiles,
                    Weapon.INFINITE_AMMO,
                    damage=1,
                    attack_speed=4,
                    rate_of_fire=300,
                    projectile_scale=0.5,
                )
                grunt = enemies.SpinnerGrunt([grunt_weapon])

                # Add grunt to groups
                groups.spinner_grunt_enemies.add(grunt)
                groups.all_enemies.add(grunt)
                groups.all_sprites.add(grunt)

            elif event.type == KEYDOWN:
                if event.key == K_r:
                    # Cycle through players weapons
                    player.switch_weapon()

        # get pressed key events
        pressed_keys = pg.key.get_pressed()
        if pressed_keys[K_w] or pressed_keys[K_SPACE]:
            player.attack()

        # move the player
        player.update(pressed_keys, game_screen.get_rect())

        # move enemies
        groups.all_enemies.update(game_screen.get_rect())

        # enemy attacks
        for enemy in groups.all_enemies:
            enemy.attack()

        # move projectiles
        groups.player_projectiles.update(game_screen.get_rect())
        groups.enemy_projectiles.update(game_screen.get_rect())

        # move stars
        groups.stars.update(game_screen.get_rect())

        # collision checks
        handle_collisions(player)

        # screen background
        game_screen.fill((0, 0, 0,))

        # draw all sprites
        for sprite in groups.all_sprites:
            game_screen.blit(sprite.surf, sprite.rect)

        # draw game screen to display
        main_screen.blit(game_screen, game_screen.get_rect())

        # render screen
        pg.display.flip()

        # update stats tracker
        stat_tracker.update_stats()

        # lock FPS
        timedelta = game_clock.tick(FPS) / 1000

    # return the next state
    end_game()
    return next_state


def handle_collisions(player):
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

            grunt.switch_strafe_direction_on_collision(collided_enemy)
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
            stat_tracker.player_enemies_hit += 1
            enemy.take_damage(projectile.damage)

    # projectiles + player collision
    # destroy projectile + damage player
    collided = pg.sprite.spritecollide(
        player,
        groups.enemy_projectiles,
        dokill=False,
        collided=pg.sprite.collide_mask
    )
    for projectile in collided:
        player.take_damage(projectile.damage)
        projectile.kill()


def end_game():
    """Reset the game so it can be played again from the beginning"""
    disable_event_timers()

    for sprite in groups.all_sprites:
        if sprite not in groups.stars:
            sprite.kill()

    stat_tracker.set_game_time(pg.time.get_ticks())
    stat_tracker.print_stats()
