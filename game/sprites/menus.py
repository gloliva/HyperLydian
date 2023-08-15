"""
This module defines all of the Sprites to display in Menus, such as the Main Menu Title.

Most of these classes are pretty lightweight and are just loading the image file and
setting its surface and rect.

Author: Gregg Oliva
"""

# stdlib imports
from typing import Optional, Tuple

# 3rd-party imports
import pygame as pg

# project imports
from sprites.base import construct_asset_full_path


class StudioLogo(pg.sprite.Sprite):
    """
    This is the "studio logo" image that is displayed on application start.
    This buys extra time while Max opens and loads.
    """
    TOTAL_SCREEN_TIME = 6
    FADE_IN_SECONDS = 2
    FADE_OUT_SECONDS = 2

    def __init__(self, screen_rect: pg.Rect, scale_resolution: int) -> None:
        super().__init__()
        image_file = construct_asset_full_path('logo/hello_drama_studios.png')
        image = pg.image.load(image_file).convert()
        self.surf = pg.transform.scale(image, (scale_resolution, scale_resolution))
        self.rect = self.surf.get_rect(
            center=screen_rect.center
        )


class MainTitle(pg.sprite.Sprite):
    """The HyperLydian Title card to display during the MAIN MENU"""
    def __init__(self, screen_rect: pg.Rect) -> None:
        super().__init__()
        image_file = construct_asset_full_path('logo/title.png')
        image  = pg.image.load(image_file).convert_alpha()
        self.surf = pg.transform.scale_by(image, 2.2)
        self.rect = self.surf.get_rect(
            center=(screen_rect.centerx, 200)
        )


class DeathScreenTitle(pg.sprite.Sprite):
    """The YOU DIED title to display during the DEATH MENU"""
    def __init__(self, screen_rect: pg.Rect) -> None:
        super().__init__()
        image_file = construct_asset_full_path('logo/you_died.png')
        image  = pg.image.load(image_file).convert_alpha()
        self.surf = pg.transform.scale_by(image, 1.5)
        self.rect = self.surf.get_rect(
            center=(screen_rect.centerx, 150)
        )


class MenuSelect(pg.sprite.Sprite):
    """The selection icon that displays which text object the user is currently highlighting"""
    WIDTH_ADJUSTMENT = 150
    HEIGHT_ADJUSTMENT = 150

    def __init__(self, center: Optional[pg.Rect] = None) -> None:
        super().__init__()
        image_file = construct_asset_full_path('logo/menu_select.png')
        self.surf = pg.image.load(image_file).convert_alpha()

        if center is None:
            center = (0, 0)
        self.rect = self.surf.get_rect(
            center=center
        )

    def set_alpha(self, alpha: int):
        self.surf.set_alpha(alpha)

    def set_scale(self, x_res: int, y_res: int) -> None:
        self.surf = pg.transform.scale(self.surf, (x_res + self.WIDTH_ADJUSTMENT, y_res + self.HEIGHT_ADJUSTMENT))
        curr_center = self.rect.center
        self.rect = self.surf.get_rect(center=curr_center)

    def set_center(self, center: Tuple[int, int]):
        self.rect = self.surf.get_rect(center=center)
