# stdlib imports
from typing import List, Tuple

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
import sprites.groups as groups
import sprites.background as background
from stats import stat_tracker


pygame.font.init()


MENU_SCREEN = pygame.Surface((SCREEN_WIDTH, SCREEN_HEIGHT), flags=SRCALPHA)


class Text:
    def __init__(self,
                 text: str,
                 font_name: str,
                 text_size: int,
                 text_color: Tuple,
                 text_background: Tuple,
                 text_center: Tuple,
                 antialias: bool = True) -> None:
        self.font = pygame.font.Font(
            pygame.font.match_font(font_name),
            text_size,
        )
        self.surface = self.font.render(text, antialias, text_color, text_background)
        self.rect = self.surface.get_rect(center=text_center)


class SelectableText(Text):
    def __init__(self,
                 text: str,
                 font_name: str,
                 text_size: int,
                 text_color: Tuple,
                 text_background: Tuple,
                 text_center: Tuple,
                 transition_state: GameState,
                 antialias: bool = True) -> None:
        super().__init__(text, font_name, text_size, text_color, text_background, text_center, antialias)
        self.transition_state = transition_state


class Menu:
    def __init__(self, menu_name: GameState):
        self.menu_name = menu_name
        self.all_text = []
        self.selectable_text = []
        self.selectable_text_pos = 0

    def add_text(self, *texts: List[Text]):
        self.all_text.extend(texts)
        for text in texts:
            if isinstance(text, SelectableText):
                self.selectable_text.append(text)

    def move_text_cursor_up(self):
        new_pos = self.selectable_text_pos + 1
        if new_pos < len(self.selectable_text):
            self.selectable_text_pos = new_pos

    def move_text_cursor_down(self):
        new_pos = self.selectable_text_pos - 1
        if new_pos >= 0:
            self.selectable_text_pos = new_pos

    def render_all_text(self):
        for text in self.all_text:
            MENU_SCREEN.blit(text.surface, text.rect)


# Create Main Menu
main_menu = Menu(GameState.MAIN_MENU)
main_menu.add_text(
    Text(
        'HyperLydian', 'chalkduster', 128, 'darkmagenta', (0, 0, 0, 100), (SCREEN_WIDTH/2, 250)
    ),
    SelectableText(
        'Press Enter to Start', 'chalkduster', 48, (255, 255, 255, 255), (0, 0, 0, 100), (SCREEN_WIDTH/2, 600),
        transition_state=GameState.GAMEPLAY
    ),
    SelectableText(
        'Press Esc to Quit', 'chalkduster', 48, (255, 255, 255, 255), (0, 0, 0, 100), (SCREEN_WIDTH/2, 700),
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

        # draw text
        main_menu.render_all_text()

        # draw menu to main display
        main_screen.blit(MENU_SCREEN, MENU_SCREEN.get_rect())

        # render screen
        pygame.display.flip()

        # lock FPS
        game_clock.tick(FPS)

    return next_state

