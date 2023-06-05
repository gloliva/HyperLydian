# stdlib imports
import random

# 3rd-party imports
import pygame as pg

# project imports
from sprites.base import construct_asset_full_path


class Star(pg.sprite.Sprite):
    STAR_TYPES = ['tiny', 'small']
    NUM_STARS_PER_EVENT = 4

    def __init__(self, screen_rect: pg.Rect, on_load: bool = False) -> None:
        super().__init__()
        star_type = self.STAR_TYPES[random.randint(0, 1)]
        image_file = construct_asset_full_path(f"assets/backgrounds/star_{star_type}.png")
        image = pg.image.load(image_file).convert()
        self.surf = pg.transform.scale_by(pg.transform.rotate(image, random.randint(0, 359)), random.random())
        self.surf.set_alpha(random.randint(10, 255))

        color_image = pg.Surface(self.surf.get_size()).convert_alpha()
        color_image.fill((random.randint(0, 255), random.randint(0, 255), random.randint(0, 255), random.randint(0, 255)))
        self.surf.blit(color_image, (0,0), special_flags=pg.BLEND_RGBA_MULT)

        if on_load:
            self.rect = self.surf.get_rect(
                center=(
                    random.randint(0, screen_rect.width),
                    random.randint(0, screen_rect.height),
                )
            )
        else:
            self.rect = self.surf.get_rect(
                center=(
                    random.randint(0, screen_rect.width),
                    random.randint(-100, -20),
                )
            )

    def update(self, screen_rect: pg.Rect):
        self.rect.move_ip(0, 2)
        if self.rect.top > screen_rect.height:
            self.kill()
