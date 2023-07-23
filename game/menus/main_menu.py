# 3rd-party imports
import pygame
from pygame.locals import (
    K_DOWN,
    K_ESCAPE,
    K_RETURN,
    KEYDOWN,
    QUIT,
    SRCALPHA,
)

# project imports
from defs import FPS, SCREEN_WIDTH, SCREEN_HEIGHT, GameState
from menus.base import Menu
import sprites.groups as groups
import sprites.background as background
from sprites.menus import Title
from stats import stat_tracker
from text import SelectableText


MENU_SCREEN = pygame.Surface((SCREEN_WIDTH, SCREEN_HEIGHT), flags=SRCALPHA)


# Create Main Menu
main_menu = Menu(GameState.MAIN_MENU)
main_menu.add_text(
    SelectableText(
        'Press Enter to Start', 'spacemono', 48, (255, 255, 255, 255), (SCREEN_WIDTH/2, 600),
        transition_state=GameState.GAMEPLAY,
    ),
    SelectableText(
        'Press Esc to Quit', 'spacemono', 48, (255, 255, 255, 255), (SCREEN_WIDTH/2, 700),
        transition_state=GameState.QUIT,
    ),
)


def run_main_menu(game_clock: pygame.time.Clock, main_screen: pygame.Surface):
    """Render main menu"""
    # draw initial background
    for _ in range(background.Note.NUM_ON_LOAD):
        note = background.Note(MENU_SCREEN.get_rect(), on_load=True)
        groups.notes.add(note)
        groups.all_sprites.add(note)

    for i in range(0, background.Staff.NUM_ON_LOAD):
        staff = background.Staff(MENU_SCREEN.get_rect(), on_load=True, load_number=i)
        groups.staff.add(staff)
        groups.all_sprites.add(staff)

    # hyperlydian Title
    title = Title(MENU_SCREEN.get_rect())

    # update stats
    stat_tracker.control__menu_init += 1
    stat_tracker.send_stats()

    # start main menu loop
    main_menu_loop = True
    while main_menu_loop:
        # event handler
        for event in pygame.event.get():
            if event.type == KEYDOWN:
                if event.key == K_ESCAPE:
                    main_menu_loop = False
                    next_state = GameState.QUIT

                if event.key == K_RETURN:
                    main_menu_loop = False
                    next_state = GameState.GAMEPLAY

                if event.key == K_DOWN:
                    pass

            elif event.type == QUIT:
                main_menu_loop = False
                next_state = GameState.QUIT

        # draw background
        MENU_SCREEN.fill("black")
        for sprite in groups.staff:
            MENU_SCREEN.blit(sprite.surf, sprite.rect)

        for sprite in groups.notes:
            MENU_SCREEN.blit(sprite.surf, sprite.rect)

        # draw title
        MENU_SCREEN.blit(title.surf, title.rect)

        # draw text
        main_menu.render_all_text()

        # draw menu to main display
        main_screen.blit(MENU_SCREEN, MENU_SCREEN.get_rect())

        # render screen
        pygame.display.flip()

        # lock FPS
        game_clock.tick(FPS)

    return next_state
