# 3rd-party imports
import pygame as pg

# project imports
from sprites.base import construct_asset_full_path


class StudioLogo(pg.sprite.Sprite):
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


class Title(pg.sprite.Sprite):
    def __init__(self, screen_rect: pg.Rect) -> None:
        super().__init__()
        image_file = construct_asset_full_path('logo/title.png')
        image  = pg.image.load(image_file).convert_alpha()
        self.surf = pg.transform.scale_by(image, 2)
        self.rect = self.surf.get_rect(
            center=(screen_rect.centerx, 250)
        )