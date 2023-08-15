"""
This module defines visual warning indicators, which includes the sides of each screen flashing red.
This is used in the LetterField SpecialEvent to warn the user that danger is going to come from all
sides of the screen.

Author: Gregg Oliva
"""

# stdlib imports
from typing import Any, Optional, List

# 3rd-party imports
import pygame as pg

# project imports
from defs import ScreenSide
from sprites.base import construct_asset_full_path


class Indicator(pg.sprite.Sprite):
    """Indicator base class for visually indicating something to the player"""
    # Image
    DRAW_LAYER = 2

    # Animation
    NUM_ITERATIONS = 1
    ALPHA_INCREMENT = None
    ALPHA_VALUES = None

    def __init__(self, on_death_callbacks: Optional[List] = None) -> None:
        super().__init__()

        self.current_rotation = 0
        self._layer = self.DRAW_LAYER

        # animation
        self.curr_iteration = 0
        self.curr_alpha_id = 0
        self.num_alpha_values = len(self.ALPHA_VALUES)

        # Functions to call on sprite kill
        self.on_death_callbacks = on_death_callbacks if on_death_callbacks is not None else []

    def update(self, *args: Any, **kwargs: Any) -> None:
        """Called every function to show the warning flash"""
        self.show_animation()

    def rotate(self, rotation_angle: int):
        """Basic rotation function to rotate a Sprite, but keep the rect and alpha the same"""
        curr_alpha = self.surf.get_alpha()
        self.current_rotation = rotation_angle % 360

        self.surf = pg.transform.rotate(self.image, self.current_rotation + rotation_angle)

        # make sure alpha value is the same
        if curr_alpha is not None:
            self.surf.set_alpha(curr_alpha)

        # make sure image retains its previous center
        current_image_center = self.rect.center
        self.rect = self.surf.get_rect()
        self.rect.center = current_image_center

    def show_animation(self):
        """
        Show the flashing animation, which just sets different alpha values to make it look like
        the image is fading in and out.
        """
        self.curr_alpha_id = (self.curr_alpha_id + self.ALPHA_INCREMENT) % self.num_alpha_values

        if self.curr_alpha_id == 0:
            self.curr_iteration += 1

        if self.curr_iteration > self.NUM_ITERATIONS:
            self.on_death()
            return

        alpha_id = int(self.curr_alpha_id)
        alpha_value = self.ALPHA_VALUES[alpha_id]
        self.surf.set_alpha(alpha_value)

    def on_death(self):
        """Call any functions when the sprite is set to be killed"""
        for callback in self.on_death_callbacks:
            callback()
        self.kill()


class SideBar(Indicator):
    """Warning bars that show up on each part of the screen"""
    # Image
    TYPES = ['warning']
    OFFSET = 24

    # Spawn
    SPAWN_SIDES = ScreenSide.ALL_SIDES

    # Animation
    NUM_ITERATIONS = 3
    ALPHA_INCREMENT = 0.25
    ALPHA_VALUES = [150, 150, 70, 0, 0]

    def __init__(self, screen_rect: pg.Rect, spawn_side: str, on_death_callbacks: Optional[List] = None) -> None:
        if spawn_side not in self.SPAWN_SIDES:
            raise KeyError(f'Spawn side: {spawn_side} is not one of the possible sides: {self.SPAWN_SIDES}')

        super().__init__(on_death_callbacks)
        image_file = construct_asset_full_path(f"indicators/warning_bar.png")
        image = pg.image.load(image_file).convert_alpha()
        curr_image_rect = image.get_rect()

        if spawn_side == ScreenSide.LEFT:
            self.image = pg.transform.scale(
                pg.transform.rotate(image, 90),
                (curr_image_rect.width, screen_rect.height - self.OFFSET)
            )
            rect_kwargs = {'bottomleft': (0, screen_rect.height)}
        elif spawn_side == ScreenSide.TOP:
            self.image = pg.transform.scale(
                image,
                (screen_rect.width - self.OFFSET, curr_image_rect.height)
            )
            rect_kwargs = {'topleft': (0, 0)}
        elif spawn_side == ScreenSide.RIGHT:
            self.image = pg.transform.scale(
                pg.transform.rotate(image, 270),
                (curr_image_rect.width, screen_rect.height - self.OFFSET)
            )
            rect_kwargs = {'topright': (screen_rect.width, 0)}
        else:
            self.image = pg.transform.scale(
                pg.transform.rotate(image, 180),
                (screen_rect.width - self.OFFSET, curr_image_rect.height)
            )
            rect_kwargs = {'bottomright': (screen_rect.width, screen_rect.height)}

        self.surf = self.image
        self.surf.set_alpha(150)
        self.rect = self.surf.get_rect(**rect_kwargs)
