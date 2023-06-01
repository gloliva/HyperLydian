# stdlib imports
from random import randint
from typing import List, Tuple

# 3rd-party imports
import pygame as pg

# project imports
from sprites.base import Sprite


class StraferGrunt(Sprite):
    DEFAULT_HEALTH = 5
    SPAWN_SPEED = 8
    STRAFE_SPEED = 4

    def __init__(self, attack, row: int) -> None:
        image_files = [
            'assets/spaceships/enemy_ship.png',
            'assets/spaceships/enemy_ship_hit.png',
        ]
        spawn_location = (
            randint(0, 1000),
            -100,
        )
        super().__init__(
            image_files,
            self.DEFAULT_HEALTH,
            self.SPAWN_SPEED,
            spawn_location,
            attack,
            image_scale=1.5,
            image_rotation=180,
        )

        # Additional Grunt attributes
        self.moving_to_position = True
        self.stopping_point_y = None
        self.strafe_direction = 1
        self.grunt_row = row

    def set_stopping_point_y(self, y_pos: float):
        self.stopping_point_y = y_pos

    def move_to_position(self):
        if self.stopping_point_y is None:
            raise Exception('Must Call set_stopping_point_y')

        if self.rect.bottom < self.stopping_point_y:
            self.rect.move_ip(0, self.movement_speed)
        else:
            self.movement_speed = self.STRAFE_SPEED
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

    def move(self, game_screen_rect: pg.Rect):
        if self.moving_to_position:
            self.move_to_position()
        else:
            self.strafe(game_screen_rect)

    def attack(self):
        if self.moving_to_position:
            return

        attack_center = (self.rect.centerx, self.rect.bottom)
        self.primary_attack.attack(
            projectile_center_position=attack_center,
            speed=6,
            movement_angle=0,
            image_scale=1.5,
        )


class TrackerGrunt(Sprite):
    DEFAULT_HEALTH = 2

