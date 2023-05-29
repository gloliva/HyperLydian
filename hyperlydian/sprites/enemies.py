# stdlib imports
from typing import Tuple

# 3rd-party imports
import pygame as pg
from pygame.locals import RLEACCEL


class Enemy(pg.sprite.Sprite):
    def __init__(self, image_file: str, health: int, movement_speed: int, spawn_position: Tuple[int, int], primary_attack) -> None:
        super().__init__()
        image = pg.image.load(image_file).convert()
        self.surf = pg.transform.scale_by(image, 0.4)
        self.surf.set_colorkey((0, 0, 0), RLEACCEL)

        color_image = pg.Surface(self.surf.get_size()).convert_alpha()
        color_image.fill((255, 0, 0))
        self.surf.blit(color_image, (0,0), special_flags=pg.BLEND_RGB_MULT)

        self.rect = self.surf.get_rect(
            center=spawn_position,
        )

        # Enemy attributes
        self.health = health
        self.movement_speed = movement_speed
        self.primary_attack = primary_attack


    def update(self):
        raise NotImplementedError(
            'Each Enemy subclass must override their update method.'
        )

    def attack(self):
        raise NotImplementedError(
            'Each Enemy subclass must override their attack method.'
        )

    def is_dead(self):
        return self.health <= 0



class ShooterGrunt(Enemy):
    DEFAULT_HEALTH = 5
    SPAWN_SPEED = 3
    STRAFE_SPEED = 3

    def __init__(self) -> None:
        imgae_file = 'assets/kenny-space/PNG/Default/enemy_A.png"'
        super().__init__()

        self.moving_to_position = True
        self.stopping_point_y = 300
        self.strafe_direction = 1

    def move_to_position(self):
        if self.rect.bottom[1] < self.stopping_point_y:
            self.rect.move_ip(0, self.movement_speed)
        else:
            self.moving_to_position = False

    def strafe(self):
        self.rect.move_ip(self.strafe_direction * self.movement_speed)

    def update(self):
        if self.moving_to_position:
            self.move_to_position()
        else:
            self.strafe()


class TrackerGrunt(Enemy):
    DEFAULT_HEALTH = 2

