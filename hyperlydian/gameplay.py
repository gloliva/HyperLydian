# 3rd-party imports
import pygame
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


GAME_SCREEN = pygame.Surface((SCREEN_WIDTH, SCREEN_HEIGHT), flags=SRCALPHA)


def run_gameplay(game_clock: pygame.time.Clock, main_screen: pygame.Surface):
    print('Gameplay State')

    # start initial events
    initialize_event_timers()

    # create the player
    player = SpriteManager.PLAYER['player'](GAME_SCREEN.get_rect(), PRIMARY_ATTACK)
    GroupManager.all_sprites.add(player)

    gameplay_loop = True
    while gameplay_loop:
        # event handler
        for event in pygame.event.get():
            # handle exit
            if event.type == QUIT:
                gameplay_loop = False
                next_state = GameState.QUIT
            # handle creating stars
            elif event.type == Event.ADD_STAR.value.type:
                for _ in range(SpriteManager.BACKGROUND['star'].NUM_STARS_PER_EVENT):
                    star = SpriteManager.BACKGROUND['star'](GAME_SCREEN.get_rect())
                    GroupManager.stars.add(star)
                    GroupManager.all_sprites.add(star)

        # get pressed key events
        pressed_keys = pygame.key.get_pressed()

        # player attack
        if pressed_keys[K_SPACE]:
            player.light_attack()

        # move the player
        player.update(pressed_keys, GAME_SCREEN.get_rect())

        # move projectiles
        GroupManager.projectiles.update(GAME_SCREEN.get_rect())

        # move stars
        GroupManager.stars.update(GAME_SCREEN.get_rect())

        # screen background
        GAME_SCREEN.fill((0, 0, 0,))

        # draw all sprites
        for sprite in GroupManager.all_sprites:
            GAME_SCREEN.blit(sprite.surf, sprite.rect)

        # draw game screen to display
        main_screen.blit(GAME_SCREEN, GAME_SCREEN.get_rect())

        # render screen
        pygame.display.flip()

        # lock FPS
        game_clock.tick(FPS)

    return next_state
