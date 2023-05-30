# 3rd-party imports
import pygame as pg
from pygame.locals import (
    K_SPACE,
    QUIT,
    SRCALPHA,
)

# project imports
from attacks import PRIMARY_ATTACK, StandardAttack, Weapon
from defs import FPS, SCREEN_WIDTH, SCREEN_HEIGHT, GameState
from events import Event, initialize_event_timers
from sprites.manager import GroupManager, SpriteManager


def run_gameplay(game_clock: pg.time.Clock, main_screen: pg.Surface):
    print('Gameplay State')

    # create game screen
    game_screen = pg.Surface((SCREEN_WIDTH, SCREEN_HEIGHT), flags=SRCALPHA)

    # start initial events
    initialize_event_timers()

    # create the player
    player = SpriteManager.PLAYER['player'](game_screen.get_rect(), PRIMARY_ATTACK)
    GroupManager.all_sprites.add(player)

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
                for _ in range(SpriteManager.BACKGROUND['star'].NUM_STARS_PER_EVENT):
                    star = SpriteManager.BACKGROUND['star'](game_screen.get_rect())
                    GroupManager.stars.add(star)
                    GroupManager.all_sprites.add(star)

            # handle creating grunts
            elif event.type == Event.ADD_STRAFER_GRUNT.type and not GroupManager.grunt_enemies.is_full():
                # create Grunt object
                grunt_row = GroupManager.grunt_enemies.curr_row_to_fill
                grunt_weapon = Weapon(
                    SpriteManager.PROJECTILES['turret'],
                    Weapon.INFINITE_AMMO,
                    1000,
                )
                grunt_attack = StandardAttack(grunt_weapon, GroupManager.enemy_projectiles)
                grunt = SpriteManager.ENEMIES['strafer_grunt'](grunt_attack, grunt_row)

                # determine where grunt stops on screen
                grunt_y_position = (
                    GroupManager.grunt_enemies.ROW_START +
                    (GroupManager.grunt_enemies.curr_row_to_fill * grunt.rect.height * GroupManager.grunt_enemies.ROW_SPACING)
                )
                grunt.set_stopping_point_y(grunt_y_position)

                # Add Grunt to groups
                GroupManager.grunt_enemies.add(grunt)
                GroupManager.all_sprites.add(grunt)
                GroupManager.all_enemies.add(grunt)

                # Calculate new grunt row
                GroupManager.grunt_enemies.update_curr_row()

        # get pressed key events
        pressed_keys = pg.key.get_pressed()

        # player attack
        if pressed_keys[K_SPACE]:
            player.light_attack()

        # move the player
        player.update(pressed_keys, game_screen.get_rect())

        # move enemies
        GroupManager.all_enemies.update(game_screen.get_rect())

        # enemy attacks
        for grunt in GroupManager.grunt_enemies:
            grunt.attack()

        # move projectiles
        GroupManager.player_projectiles.update(game_screen.get_rect())
        GroupManager.enemy_projectiles.update(game_screen.get_rect())

        # move stars
        GroupManager.stars.update(game_screen.get_rect())

        # collision checks
        handle_collisions()

        # screen background
        game_screen.fill((0, 0, 0,))

        # draw all sprites
        for sprite in GroupManager.all_sprites:
            game_screen.blit(sprite.surf, sprite.rect)

        # draw game screen to display
        main_screen.blit(game_screen, game_screen.get_rect())

        # render screen
        pg.display.flip()

        # lock FPS
        game_clock.tick(FPS)

    # return the next state
    return next_state


def handle_collisions():
    # grunt + enemies collison
    # change Grunt strafe direction
    handled_enemies = set()
    for grunt in GroupManager.grunt_enemies:
        collided_enemies = pg.sprite.spritecollide(
            grunt,
            GroupManager.all_enemies,
            dokill=False,
            collided=pg.sprite.collide_mask,
        )
        for collided_enemy in collided_enemies:
            # skip for enemy colliding with itself and if the enemy has already been handled
            if grunt == collided_enemy or grunt in handled_enemies:
                continue
            if not grunt.moving_to_position:
                grunt.switch_strafe_direction()
            handled_enemies.add(grunt)

    # projectiles + enemies collision
    # destroy projectile + damage enemy
    collided = pg.sprite.groupcollide(
        GroupManager.player_projectiles,
        GroupManager.all_enemies,
        dokilla=True,
        dokillb=False,
        collided=pg.sprite.collide_mask,
    )
    for projectile, enemies in collided.items():
        for enemy in enemies:
            enemy.take_damage(projectile.damage)
