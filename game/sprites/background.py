# stdlib imports
import random

# 3rd-party imports
import pygame as pg

# project imports
from sprites.base import construct_asset_full_path


class Background(pg.sprite.Sprite):
    DRAW_LAYER = 0

    def __init__(self) -> None:
        super().__init__()
        self._layer = self.DRAW_LAYER


    def update(self, screen_rect: pg.Rect):
        self.rect.move_ip(0, 2)
        if self.rect.top > screen_rect.height:
            self.kill()


class Note(Background):
    NUM_NOTES_PER_EVENT = 2
    NUM_ON_LOAD = 200
    NUM_VARIANTS = 6
    DRAW_LAYER = 1

    def __init__(self, screen_rect: pg.Rect, on_load: bool = False) -> None:
        super().__init__()
        note_type = random.randint(0, self.NUM_VARIANTS - 1)
        image_file = construct_asset_full_path(f"backgrounds/notes/note_{note_type}.png")
        image = pg.image.load(image_file).convert()
        self.surf = pg.transform.scale_by(pg.transform.rotate(image, random.randint(0, 359)), random.uniform(0.1, 0.5))
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


class Staff(Background):
    NUM_ON_LOAD = 4
    DRAW_LAYER = 0

    def __init__(self, screen_rect: pg.Rect, on_load: bool = False, load_number: int = 1) -> None:
        super().__init__()
        image_file = construct_asset_full_path(f"backgrounds/staff/staff.png")
        image = pg.image.load(image_file).convert_alpha()
        self.surf = pg.transform.scale(image, (screen_rect.width, 128))
        self.surf.set_alpha(40)
        if on_load:
            screen_section = screen_rect.height / self.NUM_ON_LOAD
            height = screen_section * load_number
            self.rect = self.surf.get_rect(topleft=(0, height))
        else:
            self.rect = self.surf.get_rect(
                center=(
                    screen_rect.width / 2,
                    -100,
                )
            )
