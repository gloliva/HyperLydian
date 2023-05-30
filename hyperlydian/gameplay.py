# 3rd-party imports
import pygame as pg
from pygame.locals import (
    K_SPACE,
    QUIT,
    SRCALPHA,
)

# project imports
from attacks import PRIMARY_ATTACK
from defs import FPS, SCREEN_WIDTH, SCREEN_HEIGHT, GameState
from events import Event, initialize_event_timers
from sprites.manager import GroupManager, SpriteManager


GAME_SCREEN = pg.Surface((SCREEN_WIDTH, SCREEN_HEIGHT), flags=SRCALPHA)


def run_gameplay(game_clock: pg.time.Clock, main_screen: pg.Surface):
    print('Gameplay State')

    # start initial events
    initialize_event_timers()

    # create the player
    player = SpriteManager.PLAYER['player'](GAME_SCREEN.get_rect(), PRIMARY_ATTACK)
    GroupManager.all_sprites.add(player)
    waiting_grunts = set()

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
                    star = SpriteManager.BACKGROUND['star'](GAME_SCREEN.get_rect())
                    GroupManager.stars.add(star)
                    GroupManager.all_sprites.add(star)

            # handle creating grunts
            elif event.type == Event.ADD_STRAFER_GRUNT.type and not GroupManager.grunt_enemies.is_full():
                # create Grunt object
                grunt_row = GroupManager.grunt_enemies.curr_row_to_fill
                grunt = SpriteManager.ENEMIES['strafer_grunt'](grunt_row)

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
        player.update(pressed_keys, GAME_SCREEN.get_rect())

        # move enemies
        GroupManager.all_enemies.update(GAME_SCREEN.get_rect())

        # move projectiles
        GroupManager.projectiles.update(GAME_SCREEN.get_rect())

        # move stars
        GroupManager.stars.update(GAME_SCREEN.get_rect())

        # collision checks
        # grunt + enemies collison; change strafe direction
        handled_enemies = set()
        for grunt in GroupManager.grunt_enemies:
            collided_enemies = pg.sprite.spritecollide(
                grunt, GroupManager.all_enemies, dokill=False,
            )
            for collided_enemy in collided_enemies:
                # skip for enemy colliding with itself and if the enemy has already been handled
                if grunt == collided_enemy or grunt in handled_enemies:
                    continue
                if not grunt.moving_to_position:
                    grunt.switch_strafe_direction()
                handled_enemies.add(grunt)

        # projectiles + enemies collision;
        # destroy projectile + damage enemy
        collided = pg.sprite.groupcollide(
            GroupManager.projectiles,
            GroupManager.all_enemies,
            dokilla=True,
            dokillb=False,
        )
        for projectile, enemies in collided.items():
            for enemy in enemies:
                enemy.take_damage(projectile.damage)

        # screen background
        GAME_SCREEN.fill((0, 0, 0,))

        # draw all sprites
        for sprite in GroupManager.all_sprites:
            GAME_SCREEN.blit(sprite.surf, sprite.rect)

        # draw game screen to display
        main_screen.blit(GAME_SCREEN, GAME_SCREEN.get_rect())

        # render screen
        pg.display.flip()

        # lock FPS
        game_clock.tick(FPS)

    return next_state
