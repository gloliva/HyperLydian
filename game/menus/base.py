"""
This module defines all the base class for Menus, which is used to render text to the screen
and select text options.

Author: Gregg Oliva
"""

# stdlib imports
from typing import List, Optional

# 3rd-party imports
import pygame as pg

# project imports
from defs import GameState
from exceptions import MenuRenderingError, MenuSelectionError
from sprites.menus import MenuSelect
import sprites.groups as groups
from text import Text, SelectableText


# Init Display
pg.display.init()


class Menu:
    """
    Definition for base Menu class. To be used for all game menus.

    Useful for handling text placement and selection for game menus.
    """

    # Animation Alpha Values
    ALPHA_VALUES = [255, 255, 122, 0, 0, 122]
    SELECTED_TIMER_INCREMENT = 0.25

    def __init__(self, menu_name: GameState, menu_screen: Optional[pg.Surface] = None) -> None:
        # Menu properties
        self.menu_name = menu_name
        self.menu_screen = menu_screen
        self.all_text: List[Text] = []
        self.selectable_text: List[SelectableText] = []
        self.selectable_text_pos = 0
        self.menu_select = None

        # Animation properties
        self.curr_alpha_id = 0
        self.num_alpha_values = len(self.ALPHA_VALUES)

    def init_menu_select(self) -> None:
        """
        Meant to be called after adding all text in order to correctly set selection cursor.
        """
        self.menu_select = MenuSelect()

        if not self.selectable_text:
            return

        self.selectable_text_pos = 0
        text = self.selectable_text[0]
        self.menu_select.set_center(text.rect.center)
        self.menu_select.set_scale(text.rect.width, text.rect.height)

    def add_screen(self, menu_screen: pg.Surface) -> None:
        """
        Adds a Pygame screen to this Menu object. Needed to render text to a screen.
        """
        self.menu_screen = menu_screen

    def add_text(self, *texts: List[Text]) -> None:
        """
        Add Text objects to this Menu.
        """
        self.all_text.extend(texts)
        for text in texts:
            if not isinstance(text, SelectableText):
                continue

            self.selectable_text.append(text)

    def update(self) -> None:
        """
        Display Menu selection animation and draw text to the screen.
        """
        self.render_all_text()
        if self.selectable_text:
            if self.menu_select is None:
                raise MenuSelectionError(
                    f'{self.menu_name.name} Menu does not have a MenuSelect object.'
                    ' Have you called init_menu_select?'
                )

            self.show_selected_animation()
            self.menu_screen.blit(self.menu_select.surf, self.menu_select.rect)

    def update_text(self, new_text_str: str, text_object: Text) -> None:
        """
        Update a Menu's text object with a new string.
        """
        for text in self.all_text:
            if text == text_object:
                text.update_text(new_text_str)

    def move_text_cursor(self, delta: int) -> None:
        """
        Move the selection cursor up or down to a new SelectableText item.
        """
        self.selectable_text_pos = (self.selectable_text_pos + delta) % len(self.selectable_text)
        text = self.selectable_text[self.selectable_text_pos]
        self.menu_select.set_center(text.rect.center)
        self.menu_select.set_scale(text.rect.width, text.rect.height)
        self.curr_alpha_id = 0

    def render_all_text(self) -> None:
        """
        Draw the text to the screen. Also handles drawing in Text border, if necessary.
        """
        if self.menu_screen is None:
            raise MenuRenderingError(
                f'{self.menu_name.name} Menu does not have a menu_screen associated with it'
            )
        for text in self.all_text:
            for offset in text.outline_offsets:
                text_center = text.rect.center
                offset_center = (text_center[0] + offset[0], text_center[1] + offset[1])
                self.menu_screen.blit(text.outline_surf, text.outline_surf.get_rect(center=offset_center))

            self.menu_screen.blit(text.surf, text.rect)

    def get_current_text(self) -> Text:
        """
        Return the Text object that is currently highlighted by the selection cursor.
        """
        if not self.select_text:
            return

        return self.selectable_text[self.selectable_text_pos]

    def select_text(self) -> GameState:
        """
        Select the Text, will will either return a function to call or set a new transition state.
        """
        if not self.selectable_text:
            return

        text = self.selectable_text[self.selectable_text_pos]
        return text.get_selection()

    def show_selected_animation(self) -> None:
        """
        Flash the selection cursor over the currently selected item.
        """
        self.curr_alpha_id = (self.curr_alpha_id + self.SELECTED_TIMER_INCREMENT) % self.num_alpha_values
        alpha_id = int(self.curr_alpha_id)
        alpha_value = self.ALPHA_VALUES[alpha_id]
        self.menu_select.set_alpha(alpha_value)


def clean_up_menu():
    """
    Removes all sprites from their groups.

    Should be called during a menu transition.
    """
    for sprite in groups.all_sprites:
        sprite.kill()
