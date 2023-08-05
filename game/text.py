# stdlib imports
from typing import Callable, Dict, List, Optional, Tuple

# 3rd-party imports
import pygame as pg

# project imports
from defs import GameState


# Init Pygame fonts
pg.font.init()


class Text:
    def __init__(self,
                 text: str,
                 font_name: str,
                 text_size: int,
                 text_color: Tuple,
                 text_center: Tuple = None,
                 outline_size: int = 0,
                 outline_color: str = "black",
                 text_background: Optional[Tuple] = None,
                 antialias: bool = True) -> None:
        self.antialias = antialias
        self.text_color = text_color
        self.text_background = text_background
        self.text_center = (0, 0) if text_center is None else text_center

        # handle text outline
        self.outline_size = outline_size
        self.outline_color = outline_color
        self.outline_offsets = self.get_outline_offsets() if self.outline_size != 0 else []

        # render font
        self.font = pg.font.Font(
            pg.font.match_font(font_name),
            text_size,
        )

        # Text surface
        render_args = self.get_render_args(text)
        self.surf = self.font.render(*render_args)
        self.rect = self.surf.get_rect(center=self.text_center)

        # Outline surface
        self.outline_surf = self.font.render(text, self.antialias, self.outline_color)
        self.outline_rect = self.outline_surf.get_rect()

    def get_render_args(self, text: str):
        render_args = [text, self.antialias, self.text_color]
        if self.text_background is not None:
            render_args.append(self.text_background)
        return render_args

    def get_outline_offsets(self) -> List[int]:
        offsets = [
            (offset_x, offset_y)
            for offset_x in range(-self.outline_size, 2*self.outline_size, self.outline_size)
            for offset_y in range(-self.outline_size, 2*self.outline_size, self.outline_size)
            if offset_x != 0 or offset_y != 0
        ]
        return offsets

    def update_text(self, text: str):
        render_args = self.get_render_args(text)
        prev_center = self.rect.center
        self.surf = self.font.render(*render_args)
        self.rect = self.surf.get_rect(center=prev_center)

    def update_position(self, position_kwargs: Dict[str, Tuple[int, int]]):
        self.rect = self.surf.get_rect(**position_kwargs)


class SelectableText(Text):
    """Base Text class for handling text that can be selected in a menu"""

    def get_selection(self):
        raise NotImplementedError('Child class of SelectableText must override `get_selection` method.')


class TransitionText(SelectableText):
    def __init__(self,
                 text: str,
                 font_name: str,
                 text_size: int,
                 text_color: Tuple,
                 text_center: Tuple,
                 transition_state: GameState,
                 outline_size: int = 0,
                 outline_color: str = "black",
                 text_background: Optional[Tuple] = None,
                 on_select_functions: List[Callable] = None,
                 antialias: bool = True) -> None:
        super().__init__(
            text,
            font_name,
            text_size,
            text_color,
            text_center,
            outline_size,
            outline_color,
            text_background,
            antialias
        )

        # Transition attributes
        self.transition_state = transition_state

        # Selection attributes
        self.on_select_functions = on_select_functions if on_select_functions is not None else []

    def get_selection(self):
        # Call on-selection functions, if any
        for func in self.on_select_functions:
            func()

        return self.transition_state


class OptionText(SelectableText):
    BOOLEAN_SETTINGS = {
        'OFF': False,
        'ON': True,
    }

    def __init__(self,
                 base_text: str,
                 text_options: List[str],
                 font_name: str,
                 text_size: int,
                 text_color: Tuple,
                 text_center: Tuple,
                 starting_option: int = 0,
                 delimiter: str = ':',
                 whitespace_len: int = 1,
                 outline_size: int = 0,
                 outline_color: str = "black",
                 text_background: Optional[Tuple] = None,
                 on_select_functions: List[Callable] = None,
                 antialias: bool = True) -> None:

        # Option Text attributes
        self.base_text = base_text
        self.options = text_options
        self.delimiter = delimiter
        self.whitespace_len = whitespace_len
        self.num_options = len(self.options)
        self.curr_option = starting_option

        super().__init__(
            self.format_text(),
            font_name,
            text_size,
            text_color,
            text_center,
            outline_size,
            outline_color,
            text_background,
            antialias
        )

        # Selection attributes
        self.on_select_functions = on_select_functions if on_select_functions is not None else []

    def format_text(self) -> str:
        whitespace = ' ' * self.whitespace_len
        return f'{self.base_text}{self.delimiter}{whitespace}{self.options[self.curr_option]}'

    def get_selection(self):
        self.next_option()
        option = self.options[self.curr_option]

        # Call on-selection functions, if any
        for func in self.on_select_functions:
            func()

        return [self.base_text, self.BOOLEAN_SETTINGS[option]]

    def next_option(self):
        self.curr_option = (self.curr_option + 1) % self.num_options
        text = self.format_text()
        self.update_text(text)

    def prev_option(self):
        self.curr_option = (self.curr_option - 1) % self.num_options
        text = self.format_text()
        self.update_text(text)
