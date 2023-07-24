# 3rd-party imports
import pygame as pg
from pygame.locals import (
    K_DOWN,
    K_ESCAPE,
    K_RETURN,
    KEYDOWN,
    QUIT,
)

# project imports
from defs import GameState, FPS
from menus.base import Menu
from sprites.menus import DeathScreenTitle
from stats import stat_tracker
from text import Text


# Death Screen Text
STATS_STR = (
    'SCORE: {score}\n'
    'ENEMIES KILLED: {enemies_killed}\n'
    'PLAYER ACCURACY: {accuracy}%\n'
    'PLAYER HEALTH LOST: {health_lost}\n'
    'UPGRADES PICKED UP: {upgrades_picked_up}\n'
    'TIME SURVIVED: {game_time}\n'
    'TOTAL TIME PLAYED: {total_time}\n'
)


STATS_TEXT = Text(STATS_STR, 'spacemono', 36, 'white')


# Death Screen Menu
DEATH_MENU = Menu(GameState.DEATH_MENU)
DEATH_MENU.add_text(
    STATS_TEXT,
)


def run_death_menu(game_clock: pg.time.Clock, main_screen: pg.Surface) -> GameState:
    next_state = None
    DEATH_MENU.add_screen(menu_screen=main_screen)

    death_menu_message = DeathScreenTitle(main_screen.get_rect())

    # Update Stats text
    stats_str = STATS_STR.format(
        score=stat_tracker.game__score,
        enemies_killed=stat_tracker.enemies__killed,
        accuracy=int(stat_tracker.player__accuracy.value),
        health_lost=stat_tracker.player__health_lost,
        upgrades_picked_up=stat_tracker.upgrades__picked_up,
        game_time=stat_tracker.game__time__current_playthrough.time_display,
        total_time=stat_tracker.game__time__total_played.time_display,
    )
    STATS_TEXT.update_position(
        {'center': main_screen.get_rect().center}
    )

    DEATH_MENU.update_text(stats_str, STATS_TEXT)

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
                    next_state = GameState.GAMEPLAY

                if event.key == K_DOWN:
                    pass

            elif event.type == QUIT:
                death_menu_loop = False
                next_state = GameState.QUIT

        # draw background
        main_screen.fill("black")

        # draw title
        main_screen.blit(death_menu_message.surf, death_menu_message.rect)

        # draw text
        DEATH_MENU.render_all_text()

        # render screen
        pg.display.flip()

        # lock FPS
        game_clock.tick(FPS)

    return next_state
