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
from defs import GameState, FPS, SCREEN_WIDTH
from menus.base import Menu
from sprites.menus import DeathScreenTitle
from stats import stat_tracker
from text import Text, SelectableText


# Define text
STATS_TEXT = Text('', 'spacemono', 24, 'white')
RESTART_TEXT = SelectableText('RESTART', 'spacemono', 36, 'white', (SCREEN_WIDTH/2, 650), transition_state=GameState.GAMEPLAY)
MENU_TEXT = SelectableText('BACK TO MENU', 'spacemono', 36, 'white', (SCREEN_WIDTH/2, 725), transition_state=GameState.MAIN_MENU)
QUIT_TEXT = SelectableText('QUIT', 'spacemono', 36, 'white', (SCREEN_WIDTH/2, 800), transition_state=GameState.QUIT)


# Death Screen Menu
DEATH_MENU = Menu(GameState.DEATH_MENU)
DEATH_MENU.add_text(
    STATS_TEXT,
    RESTART_TEXT,
    MENU_TEXT,
    QUIT_TEXT,
)


def run_death_menu(game_clock: pg.time.Clock, main_screen: pg.Surface) -> GameState:
    next_state = None
    DEATH_MENU.add_screen(menu_screen=main_screen)
    DEATH_MENU.init_menu_select()

    screen_rect = main_screen.get_rect()
    death_menu_message = DeathScreenTitle(screen_rect)

    STATS_TEXT.update_position(
        {'center': (screen_rect.centerx, screen_rect.centery - 50)}
    )

    DEATH_MENU.update_text(stat_tracker.get_endgame_stats(), STATS_TEXT)

    death_menu_loop = True
    while death_menu_loop:
        # event handler
        for event in pg.event.get():
            if event.type == KEYDOWN:
                if event.key == K_ESCAPE:
                    death_menu_loop = False
                    next_state = GameState.QUIT

                if event.key == K_RETURN:
                    death_menu_loop = False
                    next_state = DEATH_MENU.select_text()

                if event.key == K_DOWN:
                    DEATH_MENU.move_text_cursor(1)

                if event.key == K_UP:
                    DEATH_MENU.move_text_cursor(-1)

            elif event.type == QUIT:
                death_menu_loop = False
                next_state = GameState.QUIT

        # draw background
        main_screen.fill("black")

        # draw title
        main_screen.blit(death_menu_message.surf, death_menu_message.rect)

        # draw text
        DEATH_MENU.update()

        # render screen
        pg.display.flip()

        # lock FPS
        game_clock.tick(FPS)

    return next_state
