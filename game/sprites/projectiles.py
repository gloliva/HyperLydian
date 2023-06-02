# stdlib
import math
from typing import Tuple

# 3rd-party imports
import pygame as pg

# project imports
from exceptions import AssetLoadError

class Projectile(pg.sprite.Sprite):
    # Default attrs
    DEFAULT_DAMAGE = 1
    DEFAULT_SPEED = 1
    DEFAULT_ANGLE = 0

    # Layers
    DRAW_LAYER = 1

    # Colors
    AVAILABLE_COLORS = None
    COLOR = None

    def __init__(
            self,
            image_file: str,
            center_position: Tuple[int, int],
            damage: int,
            movement_speed: int,
            movement_angle: int,
            rotation_angle: int = 0,
            image_scale: float = 1.0,
            # colored_projectile: bool = False,
        ) -> None:
        super().__init__()

        # Handle sprite color, if needed
        if self.COLOR is not None:
            if self.COLOR not in self.AVAILABLE_COLORS:
                raise AssetLoadError(
                    f'Passed in color "{self.COLOR}" not in available Projectile colors: {self.AVAILABLE_COLORS}'
                )
            image_file = image_file.format(color=self.COLOR)

        # Sprite attributes
        image = pg.image.load(image_file).convert_alpha()
        self.surf = pg.transform.rotozoom(image, rotation_angle, image_scale)

        # Set projectile rect
        self.rect = self.surf.get_rect(center=center_position)

        # Create sprite mask
        self.mask = pg.mask.from_surface(self.surf)

        # Update the drawing layer
        self._layer = self.DRAW_LAYER

        # Weapon attributes
        self.damage = damage if damage is not None else self.DEFAULT_DAMAGE
        self.movement_speed = movement_speed if movement_speed is not None else self.DEFAULT_SPEED
        self.movement_angle = movement_angle if movement_angle is not None else self.DEFAULT_ANGLE

    def update(self, game_screen_rect: pg.Rect):
        # Calculate new position based on the angle of fire
        # We negate Y since the top of the screen is negative, and the bottom is positive
        x = self.movement_speed * math.cos(math.radians(self.movement_angle))
        y = -1 * self.movement_speed * math.sin(math.radians(self.movement_angle))

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
    AVAILABLE_COLORS = ('blue', 'red')

    def __init__(
            self,
            center_position: Tuple[int, int],
            damage: int = None,
            speed: int = None,
            movement_angle: int = None,
            rotation_angle: int = 0,
            image_scale: float = 1.0,
        ) -> None:
        image_file = "assets/projectiles/{color}_energy_beam.png"

        # Instantiate projectile
        super().__init__(
            image_file,
            center_position,
            damage,
            speed,
            movement_angle,
            rotation_angle,
            image_scale,
        )

class BlueEnergyBeam(EnergyBeam):
    COLOR = 'blue'


class RedEnergyBeam(EnergyBeam):
    COLOR = 'red'


class EnergyOrb(Projectile):
    DEFAULT_DAMAGE = 1
    DEFAULT_SPEED = 12
    DEFAULT_ANGLE = 180
    COLOR = None
    AVAILABLE_COLORS = ('green')

    def __init__(
            self,
            center_position: Tuple[int, int],
            damage: int = None,
            speed: int = None,
            movement_angle: int = None,
            rotation_angle: int = 0,
            image_scale: float = 1.0,
        ) -> None:
        image_file = image_file = "assets/projectiles/{color}_energy_orb.png"

        # Instantiate projectile
        super().__init__(
            image_file,
            center_position,
            damage,
            speed,
            movement_angle,
            rotation_angle,
            image_scale,
        )


class GreenEnergyOrb(EnergyOrb):
    COLOR = 'green'


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
