# stdlib imports
from typing import Tuple

# 3rd-party imports
import pygame as pg
from pygame.locals import RLEACCEL


class Enemy(pg.sprite.Sprite):
    def __init__(self, image_file: str, health: int, movement_speed: int, spawn_position: Tuple[int, int], primary_attack) -> None:
        super().__init__()
        image = pg.image.load(image_file).convert()
        self.surf = pg.transform.scale_by(image, 2)
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
    SPAWN_SPEED = 5
    STRAFE_SPEED = 2

    def __init__(self) -> None:
        image_file = 'assets/kenny-space/PNG/Default/enemy_A.png'
        spawn_position = (
            300,
            -200,
        )
        super().__init__(
            image_file,
            self.DEFAULT_HEALTH,
            self.SPAWN_SPEED,
            spawn_position,
            None,
        )

        self.moving_to_position = True
        self.stopping_point_y = 300
        self.strafe_direction = 1

    def move_to_position(self):
        if self.rect.bottom < self.stopping_point_y:
            self.rect.move_ip(0, self.movement_speed)
        else:
            self.moving_to_position = False

    def strafe(self, game_screen_rect: pg.Rect):
        self.rect.move_ip(self.strafe_direction * self.movement_speed, 0)

        # stay in bounds
        if self.rect.left < 0:
            self.rect.left = 0
            self.switch_strafe_direction()
        if self.rect.right > game_screen_rect.width:
            self.rect.right = game_screen_rect.width
            self.switch_strafe_direction()

    def switch_strafe_direction(self):
        self.strafe_direction *= -1

    def update(self, game_screen_rect: pg.Rect):
        if self.moving_to_position:
            self.move_to_position()
        else:
            self.strafe(game_screen_rect)


class TrackerGrunt(Enemy):
    DEFAULT_HEALTH = 2

