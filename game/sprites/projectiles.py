# stdlib
import math
from typing import Tuple

# 3rd-party imports
import pygame as pg

# project imports
from exceptions import AssetLoadError
from sprites.base import construct_asset_full_path

class Projectile(pg.sprite.Sprite):
    # Default attrs
    DEFAULT_DAMAGE = 1
    DEFAULT_SPEED = 1
    DEFAULT_ANGLE = 0

    # Layers
    DRAW_LAYER = 2

    # Colors
    AVAILABLE_COLORS = None
    COLOR = None

    # Variants
    AVAILABLE_VARIANTS = None
    NUM_VARIANTS = 1

    def __init__(
            self,
            image_file: str,
            center_position: Tuple[int, int],
            damage: int,
            movement_speed: int,
            movement_angle: int,
            image_scale: float = 1.0,
            variant_number: int = 0,
        ) -> None:
        super().__init__()

        # Handle sprite color, if needed
        if self.COLOR is not None:
            if self.COLOR not in self.AVAILABLE_COLORS:
                raise AssetLoadError(
                    f'Passed in color "{self.COLOR}" not in available Projectile colors: {self.AVAILABLE_COLORS}'
                )

        image_file = image_file.format(color=self.COLOR, variant_number=variant_number)

        # Sprite attributes
        image = pg.image.load(construct_asset_full_path(image_file)).convert_alpha()
        self.surf = pg.transform.rotozoom(image, movement_angle, image_scale)

        # Set projectile rect
        self.rect = self.surf.get_rect(center=center_position)
        self.starting_position = self.rect.center

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

    def get_distance_traveled(self) -> float:
        x_delta = self.rect.centerx - self.starting_position[0]
        y_delta = self.rect.centery - self.starting_position[1]
        return math.sqrt((x_delta)**2 + (y_delta)**2)


class EnergyBeam(Projectile):
    DEFAULT_DAMAGE = 5
    DEFAULT_SPEED = 10
    DEFAULT_ANGLE = 180
    AVAILABLE_COLORS = ('blue', 'red')

    def __init__(
            self,
            center_position: Tuple[int, int],
            damage: int = None,
            speed: int = None,
            movement_angle: int = None,
            image_scale: float = 1.0,
            variant_number: int = 0,
        ) -> None:
        image_file = "assets/projectiles/{color}_energy_beam.png"

        # Instantiate projectile
        super().__init__(
            image_file,
            center_position,
            damage,
            speed,
            movement_angle,
            image_scale,
            variant_number,
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
    AVAILABLE_COLORS = ('green', 'orange')

    def __init__(
            self,
            center_position: Tuple[int, int],
            damage: int = None,
            speed: int = None,
            movement_angle: int = None,
            image_scale: float = 1.0,
            variant_number: int = 0,
        ) -> None:
        image_file = image_file = "assets/projectiles/{color}_energy_orb.png"

        # Instantiate projectile
        super().__init__(
            image_file,
            center_position,
            damage,
            speed,
            movement_angle,
            image_scale,
            variant_number,
        )


class GreenEnergyOrb(EnergyOrb):
    COLOR = 'green'


class OrangeEnergyOrb(EnergyOrb):
    COLOR = 'orange'


class MusicNote(Projectile):
    DEFAULT_DAMAGE = 1
    DEFAULT_SPEED = 1
    DEFAULT_ANGLE = 180
    AVAILABLE_COLORS = ('blue', 'red')
    NUM_VARIANTS = 4

    def __init__(
        self,
        center_position: Tuple[int, int],
        damage: int = None,
        speed: int = None,
        movement_angle: int = None,
        image_scale: float = 1.0,
        variant_number: int = 0,
        ) -> None:

        image_file = "assets/projectiles/notes/{color}_note_{variant_number}.png"

        # Instantiate projectile
        super().__init__(
            image_file,
            center_position,
            damage,
            speed,
            movement_angle,
            image_scale,
            variant_number,
        )

class BlueMusicNote(MusicNote):
    COLOR = 'blue'
    NUM_VARIANTS = 4


class RedMusicNote(MusicNote):
    COLOR = 'red'
    NUM_VARIANTS = 8


class MusicLetter(Projectile):
    DEFAULT_DAMAGE = 5
    DEFAULT_SPEED = 1
    DEFAULT_ANGLE = 180
    AVAILABLE_COLORS = ('blue')
    NUM_VARIANTS = 4

    def __init__(
        self,
        center_position: Tuple[int, int],
        damage: int = None,
        speed: int = None,
        movement_angle: int = None,
        image_scale: float = 1.0,
        variant_number: int = 0,
        ) -> None:

        image_file = "assets/projectiles/letters/{color}_letter_{variant_number}.png"

        # Instantiate projectile
        super().__init__(
            image_file,
            center_position,
            damage,
            speed,
            movement_angle,
            image_scale,
            variant_number,
        )


class BlueMusicLetter(MusicLetter):
    COLOR = 'blue'
    NUM_VARIANTS = 10


class Accidental(Projectile):
    DEFAULT_DAMAGE = 5
    DEFAULT_SPEED = 8
    AVAILABLE_VARIANTS = ('natural', 'sharp', 'flat')
    NUM_VARIANTS = 3

    def __init__(
        self,
        center_position: Tuple[int, int],
        damage: int = None,
        speed: int = None,
        movement_angle: int = None,
        image_scale: float = 1.0,
        variant_number: int = 0,
        ) -> None:

        variant = self.AVAILABLE_VARIANTS[variant_number]
        image_file = f"assets/projectiles/accidentals/{variant}.png"

        # Instantiate projectile
        super().__init__(
            image_file,
            center_position,
            damage,
            speed,
            movement_angle,
            image_scale,
            variant_number,
        )


class RedAccidental(Projectile):
    DEFAULT_DAMAGE = 1
    DEFAULT_SPEED = 1
    AVAILABLE_VARIANTS = ('sharp', 'flat')
    NUM_VARIANTS = 2

    def __init__(
        self,
        center_position: Tuple[int, int],
        damage: int = None,
        speed: int = None,
        movement_angle: int = None,
        image_scale: float = 1.0,
        variant_number: int = 0,
        ) -> None:

        self.variant = self.AVAILABLE_VARIANTS[variant_number]
        image_file = f"assets/projectiles/accidentals/red_{self.variant}.png"

        # Instantiate projectile
        super().__init__(
            image_file,
            center_position,
            damage,
            speed,
            movement_angle,
            image_scale,
            variant_number,
        )
