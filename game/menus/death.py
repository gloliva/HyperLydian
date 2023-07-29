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
from defs import (
    GameState,
    FPS,
    SCREEN_WIDTH,
    MAX_ALPHA,
    FADE_FRAMES,
    FADE_MULTIPLIER,
)
from menus.base import Menu, clean_up_menu
import sprites.groups as groups
import sprites.background as background
from sprites.menus import DeathScreenTitle
from stats import stat_tracker
from text import Text, SelectableText


# Define text
STATS_TEXT = Text('', 'spacemono', 24, 'white', outline_size=2)
RESTART_TEXT = SelectableText(
    'RESTART', 'spacemono', 36, 'white', (SCREEN_WIDTH/2, 650),
    outline_size=2, transition_state=GameState.GAMEPLAY
)
MENU_TEXT = SelectableText(
    'BACK TO MENU', 'spacemono', 36, 'white', (SCREEN_WIDTH/2, 725),
     outline_size=2, transition_state=GameState.MAIN_MENU
)
QUIT_TEXT = SelectableText(
    'QUIT', 'spacemono', 36, 'white', (SCREEN_WIDTH/2, 800),
     outline_size=2, transition_state=GameState.QUIT
)


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
    screen_rect = main_screen.get_rect()

    DEATH_MENU.add_screen(menu_screen=main_screen)
    DEATH_MENU.init_menu_select()

    death_menu_message = DeathScreenTitle(screen_rect)

    STATS_TEXT.update_position(
        {'center': (screen_rect.centerx, screen_rect.centery - 50)}
    )

    DEATH_MENU.update_text(stat_tracker.get_endgame_stats(), STATS_TEXT)

    # Add broken notes to background
    for _ in range(background.BrokenNote.NUM_ON_LOAD):
        note = background.BrokenNote(main_screen.get_rect())
        groups.broken_notes.add(note)
        groups.all_sprites.add(note)

    # destroyed ship
    destroyed_ship = background.DestroyedShip(main_screen.get_rect())
    groups.all_sprites.add(destroyed_ship)

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

        # update background
        groups.broken_notes.update(screen_rect)
        groups.stars.update(screen_rect, in_menu=True)
        destroyed_ship.update(screen_rect)

        # draw background
        main_screen.fill("black")

        # draw all sprites
        for sprite in groups.all_sprites:
            main_screen.blit(sprite.surf, sprite.rect)

        # draw title
        main_screen.blit(death_menu_message.surf, death_menu_message.rect)

        # draw text
        DEATH_MENU.update()

        # render screen
        pg.display.flip()

        # lock FPS
        game_clock.tick(FPS)

    # fade out if starting game
    if next_state == GameState.GAMEPLAY:
        start_game_fade_out(game_clock, main_screen, destroyed_ship)

    clean_up_menu()
    return next_state


def start_game_fade_out(game_clock: pg.time.Clock, main_screen: pg.Surface, destroyed_ship: background.DestroyedShip):
    screen_rect = main_screen.get_rect()
    fade_surf = pg.Surface(main_screen.get_size())
    fade_surf.fill('white')
    curr_fade_out_frame = 0

    while curr_fade_out_frame < FADE_FRAMES:
        # update fade out alpha
        new_alpha = int(curr_fade_out_frame * FADE_MULTIPLIER)
        fade_surf.set_alpha(new_alpha)

        # update background
        groups.broken_notes.update(screen_rect, fade_out=True, alpha=MAX_ALPHA-new_alpha)
        groups.stars.update(screen_rect, in_menu=True)
        destroyed_ship.update(screen_rect)

        # draw all sprites
        for sprite in groups.all_sprites:
            main_screen.blit(sprite.surf, sprite.rect)

        # handle fade-in on game start
        main_screen.blit(fade_surf, fade_surf.get_rect())

        # render screen
        pg.display.flip()

        curr_fade_out_frame += 1

        # lock FPS
        game_clock.tick(FPS)
