# stdlib
import math
from typing import Callable, Optional, Tuple

# 3rd-party imports
import pygame


class Projectile(pygame.sprite.Sprite):
    def __init__(
            self,
            image_file: str,
            center_position: Tuple[int, int],
            damage: int,
            movement_speed: int,
            movement_angle: int,
            image_scale: float = 1.,
        ) -> None:
        super().__init__()
        # Sprite attributes
        image = pygame.image.load(image_file).convert()
        self.surf = pygame.transform.scale_by(image, image_scale)
        self.rect = self.surf.get_rect(center=center_position)

        # Weapon attributes
        self.damage = damage
        self.movement_speed = movement_speed
        self.movement_angle = movement_angle

    def update(self, game_screen_rect: pygame.Rect):
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


class TurretRound(Projectile):
    DEFAULT_DAMAGE = 1
    DEFAULT_SPEED = 10
    DEFAULT_ANGLE = 180

    def __init__(
            self,
            center_position: Tuple[int, int],
            movement_angle: int = None,
        ) -> None:
        image_file = "assets/kenny-space/PNG/Default/meteor_detailedSmall.png"
        if movement_angle is None:
            movement_angle = self.DEFAULT_ANGLE
        super().__init__(
            image_file,
            center_position,
            self.DEFAULT_DAMAGE,
            self.DEFAULT_SPEED,
            movement_angle,
            image_scale=0.2,
        )


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
        image = pygame.image.load("assets/kenny-space/PNG/Default/ship_B.png").convert()
        self.surf = pygame.transform.scale_by(pygame.transform.rotate(image, -90), 0.2)

        color_image = pygame.Surface(self.surf.get_size()).convert_alpha()
        color_image.fill((255, 255, 0))
        self.surf.blit(color_image, (0,0), special_flags=pygame.BLEND_RGB_MULT)

        self.rect = self.surf.get_rect(
            center=player_center
        )
        self.speed = 8

    def update(self):
        pass

    def kill(self):
        super().kill()
