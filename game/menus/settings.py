# 3rd-party imports
import pygame as pg
from pygame.locals import (
    K_UP,
    K_DOWN,
    K_ESCAPE,
    K_RETURN,
    KEYDOWN,
    QUIT,
)

# project imports
from defs import FPS, SCREEN_WIDTH, GameState
from menus.base import Menu, clean_up_menu
import sprites.groups as groups
import sprites.background as background
from settings_manager import settings_manager
from text import OptionText, Text, TransitionText


# Text strings
EASY_MODE_EXPLANATION_STR = [
    'If enabled, turns down the overall difficulty.',
    'Enemies are weaker and appear less frequently. The player has more health ',
    'and does more damage. The difficulty will still increase over time if you are ',
    'doing well. This setting is useful to practice your skills.',
]
PLAYER_INVINCIBLE_EXPLANATION_STR = [
    'If enabled, makes the player invulernable.',
    'The player will still take damage but will not die if health goes to 0.',
    'This setting is useful to experience the music capabilities of HyperLydian.',
]


# Menu text
EASY_MODE_TEXT = OptionText(
    'Easy Mode', ['OFF', 'ON'],
    'spacemono', 40, 'white', (SCREEN_WIDTH/2, 200),
    outline_size=2,
)
EASY_MODE_EXPLANATION_TEXT = Text(
    '\n'.join(EASY_MODE_EXPLANATION_STR), 'spacemono', 20, 'white', (SCREEN_WIDTH/2, 325),
    outline_size=2,
)
PLAYER_INVINCIBLE_TEXT = OptionText(
    'Player Invincible', ['OFF', 'ON'],
    'spacemono', 40, 'white', (SCREEN_WIDTH/2, 450),
    outline_size=2,
)
PLAYER_INVINCIBLE_EXPLANATION_TEXT = Text(
    '\n'.join(PLAYER_INVINCIBLE_EXPLANATION_STR), 'spacemono', 20, 'white', (SCREEN_WIDTH/2, 550),
    outline_size=2,
)
MENU_TEXT = TransitionText(
    'BACK TO MENU', 'spacemono', 36, 'white', (SCREEN_WIDTH/2, 750),
     outline_size=2, transition_state=GameState.MAIN_MENU,
)


# Settings Menu
SETTINGS_MENU = Menu(GameState.SETTINGS)
SETTINGS_MENU.add_text(
    EASY_MODE_TEXT,
    EASY_MODE_EXPLANATION_TEXT,
    PLAYER_INVINCIBLE_TEXT,
    PLAYER_INVINCIBLE_EXPLANATION_TEXT,
    MENU_TEXT,
)


def run_settings_menu(game_clock: pg.time.Clock, main_screen: pg.Surface) -> GameState:
    next_state = None
    screen_rect = main_screen.get_rect()

    SETTINGS_MENU.add_screen(menu_screen=main_screen)
    SETTINGS_MENU.init_menu_select()

    # Add stars to the background
    for _ in range(background.Star.NUM_ON_LOAD):
        star = background.Star(screen_rect, on_load=True)
        groups.stars.add(star)
        groups.all_sprites.add(star)

    settings_loop = True
    while settings_loop:
        # event handler
        for event in pg.event.get():
            if event.type == KEYDOWN:
                if event.key == K_ESCAPE:
                    settings_loop = False
                    next_state = GameState.QUIT

                if event.key == K_RETURN:
                    curr_text = SETTINGS_MENU.get_current_text()
                    if isinstance(curr_text, OptionText):
                        settings = SETTINGS_MENU.select_text()
                        settings_manager.update_setting(*settings)
                    else:
                        settings_loop = False
                        next_state = SETTINGS_MENU.select_text()

                if event.key == K_DOWN:
                    SETTINGS_MENU.move_text_cursor(1)

                if event.key == K_UP:
                    SETTINGS_MENU.move_text_cursor(-1)

            elif event.type == QUIT:
                settings_loop = False
                next_state = GameState.QUIT

        # update stars
        groups.stars.update(screen_rect, in_menu=True)

        # draw background
        main_screen.fill("black")

        # draw all sprites
        for sprite in groups.all_sprites:
            main_screen.blit(sprite.surf, sprite.rect)

        # draw text
        SETTINGS_MENU.update()

        # render screen
        pg.display.flip()

        # lock FPS
        game_clock.tick(FPS)

    clean_up_menu()
    return next_state
