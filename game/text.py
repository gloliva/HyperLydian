# stdlib imports
from typing import Dict, Optional, Tuple

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
                 text_background: Optional[Tuple] = None,
                 antialias: bool = True) -> None:
        self.antialias = antialias
        self.text_color = text_color
        self.text_background = text_background
        self.text_center = (0, 0) if text_center is None else text_center

        self.font = pg.font.Font(
            pg.font.match_font(font_name),
            text_size,
        )

        render_args = self.get_render_args(text)
        self.surf = self.font.render(*render_args)
        self.rect = self.surf.get_rect(center=self.text_center)

    def get_render_args(self, text: str):
        render_args = [text, self.antialias, self.text_color]
        if self.text_background is not None:
            render_args.append(self.text_background)
        return render_args

    def update_text(self, text: str):
        render_args = self.get_render_args(text)
        prev_center = self.rect.center
        self.surf = self.font.render(*render_args)
        self.rect = self.surf.get_rect(center=prev_center)

    def update_position(self, position_kwargs: Dict[str, Tuple[int, int]]):
        self.rect = self.surf.get_rect(**position_kwargs)


class SelectableText(Text):
    def __init__(self,
                 text: str,
                 font_name: str,
                 text_size: int,
                 text_color: Tuple,
                 text_center: Tuple,
                 transition_state: GameState,
                 text_background: Optional[Tuple] = None,
                 antialias: bool = True) -> None:
        super().__init__(text, font_name, text_size, text_color, text_center, text_background, antialias)
        self.transition_state = transition_state
