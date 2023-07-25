# 3rd-party imports
import pygame
from pygame.locals import (
    K_UP,
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
from sprites.menus import MainTitle
from stats import stat_tracker
from text import SelectableText


MENU_SCREEN = pygame.Surface((SCREEN_WIDTH, SCREEN_HEIGHT), flags=SRCALPHA)


# Create Main Menu
MAIN_MENU = Menu(GameState.MAIN_MENU, MENU_SCREEN)
MAIN_MENU.add_text(
    SelectableText(
        'Start', 'spacemono', 64, (255, 255, 255, 255), (SCREEN_WIDTH/2, 400),
        transition_state=GameState.GAMEPLAY,
    ),
    SelectableText(
        'Settings', 'spacemono', 64, (255, 255, 255, 255), (SCREEN_WIDTH/2, 525),
        transition_state=GameState.GAMEPLAY,
    ),
    SelectableText(
        'Credits', 'spacemono', 64, (255, 255, 255, 255), (SCREEN_WIDTH/2, 650),
        transition_state=GameState.GAMEPLAY,
    ),
    SelectableText(
        'Quit', 'spacemono', 64, (255, 255, 255, 255), (SCREEN_WIDTH/2, 775),
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
    title = MainTitle(MENU_SCREEN.get_rect())
    MAIN_MENU.init_menu_select()

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
                    next_state = MAIN_MENU.select_text()

                if event.key == K_DOWN:
                    MAIN_MENU.move_text_cursor(1)

                if event.key == K_UP:
                    MAIN_MENU.move_text_cursor(-1)

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
        MAIN_MENU.update()

        # draw menu to main display
        main_screen.blit(MENU_SCREEN, MENU_SCREEN.get_rect())

        # render screen
        pygame.display.flip()

        # lock FPS
        game_clock.tick(FPS)

    return next_state
