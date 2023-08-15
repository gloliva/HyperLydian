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
from text import Text, TransitionText


# Define text
CONTROLS_STR = [
    "ARROW KEYS  -  Move",
    "W or SPACE  -  Shoot",
    "R           -  Switch Weapon",
    "Q           -  Rotate Counter-Clockwise",
    "E           -  Rotate Clockwise",
]


DESCRIPTION_LINE1_TEXT = Text(
    "Shoot every enemy you see",
    'spacemono', 36, 'black', (SCREEN_WIDTH/2, 125),
    outline_size=2, outline_color="white",
)
DESCRIPTION_LINE2_TEXT = Text(
    "Dodge RED enemy projectiles",
    'spacemono', 36, 'black', (SCREEN_WIDTH/2, 175),
    outline_size=1, outline_color="red",
)
DESCRIPTION_LINE3_TEXT = Text(
    "Collect GOLD notes to increase score",
    'spacemono', 36, 'black', (SCREEN_WIDTH/2, 225),
    outline_size=1, outline_color="gold",
)
DESCRIPTION_LINE4_TEXT = Text(
    "Collect BLUE enemy drops to regain health",
    'spacemono', 36, 'black', (SCREEN_WIDTH/2, 275),
    outline_size=1, outline_color="cyan",
)
CONTROLS_TEXT = Text(
    '\n'.join(CONTROLS_STR),
    'spacemono', 28, 'white', (SCREEN_WIDTH/2, 450),
    outline_size=2,
)
GOOD_LUCK_TEXT = Text(
    'GOOD LUCK!',
    'spacemono', 36, 'white', (SCREEN_WIDTH/2, 625),
    outline_size=2, outline_color="black"
)
MENU_TEXT = TransitionText(
    'BACK TO MENU', 'spacemono', 36, 'white', (SCREEN_WIDTH/2, 750),
     outline_size=2, transition_state=GameState.MAIN_MENU,
)


# How to Play Menu
HOW_TO_PLAY_MENU = Menu(GameState.HOW_TO_PLAY)
HOW_TO_PLAY_MENU.add_text(
    DESCRIPTION_LINE1_TEXT,
    DESCRIPTION_LINE2_TEXT,
    DESCRIPTION_LINE3_TEXT,
    DESCRIPTION_LINE4_TEXT,
    CONTROLS_TEXT,
    GOOD_LUCK_TEXT,
    MENU_TEXT,
)


def run_how_to_play_menu(game_clock: pg.time.Clock, main_screen: pg.Surface) -> GameState:
    """
    HOW TO PLAY MENU displays the objectives and controls for the game.

    This is the Menu loop that only transitions back to the MAIN MENU.
    """

    next_state = None
    screen_rect = main_screen.get_rect()

    HOW_TO_PLAY_MENU.add_screen(menu_screen=main_screen)
    HOW_TO_PLAY_MENU.init_menu_select()

    # Add stars to the background
    for _ in range(background.Star.NUM_ON_LOAD):
        star = background.Star(screen_rect, on_load=True)
        groups.stars.add(star)
        groups.all_sprites.add(star)

    how_to_play_loop = True
    while how_to_play_loop:
        # event handler
        for event in pg.event.get():
            if event.type == KEYDOWN:
                if event.key == K_ESCAPE:
                    how_to_play_loop = False
                    next_state = GameState.QUIT

                if event.key == K_RETURN:
                    how_to_play_loop = False
                    next_state = HOW_TO_PLAY_MENU.select_text()

                if event.key == K_DOWN:
                    HOW_TO_PLAY_MENU.move_text_cursor(1)

                if event.key == K_UP:
                    HOW_TO_PLAY_MENU.move_text_cursor(-1)

            elif event.type == QUIT:
                how_to_play_loop = False
                next_state = GameState.QUIT

        # update stars
        groups.stars.update(screen_rect, in_menu=True)

        # draw background
        main_screen.fill("black")

        # draw all sprites
        for sprite in groups.all_sprites:
            main_screen.blit(sprite.surf, sprite.rect)

        # draw text
        HOW_TO_PLAY_MENU.update()

        # render screen
        pg.display.flip()

        # lock FPS
        game_clock.tick(FPS)

    clean_up_menu()
    return next_state
