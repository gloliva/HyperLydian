# stdlib imports
from typing import List, Optional

# 3rd-party imports
import pygame as pg

# project imports
from defs import GameState
from exceptions import MenuRenderingError
from text import Text, SelectableText


class Menu:
    def __init__(self, menu_name: GameState, menu_screen: Optional[pg.Surface] = None):
        self.menu_name = menu_name
        self.menu_screen = menu_screen
        self.all_text: List[Text] = []
        self.selectable_text: List[Text] = []
        self.selectable_text_pos = 0

    def add_screen(self, menu_screen: pg.Surface) -> None:
        self.menu_screen = menu_screen

    def add_text(self, *texts: List[Text]):
        self.all_text.extend(texts)
        for text in texts:
            if isinstance(text, SelectableText):
                self.selectable_text.append(text)

    def update_text(self, new_text_str: str, text_object: Text) -> None:
        for text in self.all_text:
            if text == text_object:
                text.update_text(new_text_str)

    def move_text_cursor_up(self):
        new_pos = self.selectable_text_pos + 1
        if new_pos < len(self.selectable_text):
            self.selectable_text_pos = new_pos

    def move_text_cursor_down(self):
        new_pos = self.selectable_text_pos - 1
        if new_pos >= 0:
            self.selectable_text_pos = new_pos

    def render_all_text(self):
        if self.menu_screen is None:
            raise MenuRenderingError(
                f'{self.menu_name.name} Menu does not have a menu_screen associated with it'
            )
        for text in self.all_text:
            self.menu_screen.blit(text.surf, text.rect)
