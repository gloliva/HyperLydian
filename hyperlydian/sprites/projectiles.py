# stdlib
import math
from typing import Tuple

# 3rd-party imports
import pygame as pg

# project imports
from exceptions import AssetLoadError

class Projectile(pg.sprite.Sprite):
    DRAW_LAYER = 1

    def __init__(
            self,
            image_file: str,
            center_position: Tuple[int, int],
            damage: int,
            movement_speed: int,
            movement_angle: int,
            image_scale: float = 1.0,
        ) -> None:
        super().__init__()
        # Sprite attributes
        image = pg.image.load(image_file).convert_alpha()
        self.surf = pg.transform.scale_by(image, image_scale)
        self.rect = self.surf.get_rect(center=center_position)
        # Create sprite mask
        self.mask = pg.mask.from_surface(self.surf)
        self._layer = self.DRAW_LAYER

        # Weapon attributes
        self.damage = damage
        self.movement_speed = movement_speed
        self.movement_angle = movement_angle

    def update(self, game_screen_rect: pg.Rect):
        # Calculate new position based on the angle of fire
        x = self.movement_speed * math.sin(2 * math.pi * (self.movement_angle / 360))
        y = self.movement_speed * math.cos(2 * math.pi * (self.movement_angle / 360))

        self.rect.move_ip(x, y)
        out_of_bounds = (
            self.rect.left > game_screen_rect.right or
            self.rect.right < game_screen_rect.left or
            self.rect.top > game_screen_rect.bottom or
            self.rect.bottom < game_screen_rect.top
        )

        if out_of_bounds:
            self.kill()


class EnergyBeam(Projectile):
    DEFAULT_DAMAGE = 1
    DEFAULT_SPEED = 10
    DEFAULT_ANGLE = 180
    COLOR = None
    COLORS = ('blue', 'red')

    def __init__(
            self,
            center_position: Tuple[int, int],
            damage: int = None,
            speed: int = None,
            movement_angle: int = None,
            image_scale: float = 1.0,
        ) -> None:

        # Handle which asset to select
        color = self.COLOR
        if color not in self.COLORS:
            raise AssetLoadError(
                f'Passed in color "{color}" not in available EnergyBeam colors: {self.COLORS}'
            )
        image_file = f"assets/projectiles/{color}_energy_beam.png"

        # Set any defaults
        if damage is None:
            damage = self.DEFAULT_DAMAGE
        if speed is None:
            speed = self.DEFAULT_SPEED
        if movement_angle is None:
            movement_angle = self.DEFAULT_ANGLE

        # Instantiate projectile
        super().__init__(
            image_file,
            center_position,
            damage,
            speed,
            movement_angle,
            image_scale,
        )

class BlueEnergyBeam(EnergyBeam):
    COLOR = 'blue'


class RedEnergyBeam(EnergyBeam):
    COLOR = 'red'


class EnergyOrb(Projectile):
    DEFAULT_DAMAGE = 1
    DEFAULT_SPEED = 8

    def __init__(
            self,
            center_position: Tuple[int, int],
            movement_angle: int = None,
        ) -> None:
        image_file = "assets/kenny-space/PNG/Default/meteor_small.png"
        super().__init__(
            image_file, center_position, self.DEFAULT_DAMAGE, self.DEFAULT_SPEED, movement_angle
        )


class Missile(Projectile):
    def __init__(self, player_center) -> None:
        super().__init__()
        image = pg.image.load("assets/kenny-space/PNG/Default/ship_B.png").convert()
        self.surf = pg.transform.scale_by(pg.transform.rotate(image, -90), 0.2)

        color_image = pg.Surface(self.surf.get_size()).convert_alpha()
        color_image.fill((255, 255, 0))
        self.surf.blit(color_image, (0,0), special_flags=pg.BLEND_RGB_MULT)

        self.rect = self.surf.get_rect(
            center=player_center
        )
        self.speed = 8

    def update(self):
        pass

    def kill(self):
        super().kill()
