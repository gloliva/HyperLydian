# stdlib imports
from typing import List

# 3rd-party imports
import pygame as pg

# project imports
from defs import GameState
from text import Text, SelectableText


class Menu:
    def __init__(self, menu_name: GameState, menu_screen: pg.Surface):
        self.menu_name = menu_name
        self.menu_screen = menu_screen
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
            self.menu_screen.blit(text.surf, text.rect)
