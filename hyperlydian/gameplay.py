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

            # handle creating enemies
            elif event.type == Event.ADD_ENEMY.type and len(GroupManager.enemies) < 3:
                enemy = SpriteManager.ENEMIES['shooter_grunt']()
                GroupManager.enemies.add(enemy)
                GroupManager.all_sprites.add(enemy)

        # get pressed key events
        pressed_keys = pg.key.get_pressed()

        # player attack
        if pressed_keys[K_SPACE]:
            player.light_attack()

        # move the player
        player.update(pressed_keys, GAME_SCREEN.get_rect())

        # move enemies
        GroupManager.enemies.update(GAME_SCREEN.get_rect())

        # move projectiles
        GroupManager.projectiles.update(GAME_SCREEN.get_rect())

        # move stars
        GroupManager.stars.update(GAME_SCREEN.get_rect())

        # collision checks
        # enemy + enemy collison; change strafe direction

        handled_enemies = set()
        for enemy in GroupManager.enemies:
            collided_enemies = pg.sprite.spritecollide(
                enemy, GroupManager.enemies, dokill=False,
            )

            for collided_enemy in collided_enemies:
                # skip for enemy colliding with itself and if the enemy has already been handled
                if enemy == collided_enemy or enemy in handled_enemies:
                    continue
                enemy.switch_strafe_direction()
                handled_enemies.add(enemy)


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
