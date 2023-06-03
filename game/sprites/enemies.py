# stdlib imports
from random import randint

# 3rd-party imports
import pygame as pg

# project imports
from sprites.base import Sprite


class StraferGrunt(Sprite):
    DEFAULT_HEALTH = 6
    SPAWN_SPEED = 8
    STRAFE_SPEED = 4
    INITIAL_ROTATION = 270

    def __init__(self, weapons, row: int) -> None:
        image_files = [
            'assets/spaceships/enemy_ship.png',
            'assets/spaceships/enemy_ship_hit.png',
        ]
        spawn_location = (
            randint(40, 1400),
            -100,
        )
        super().__init__(
            image_files,
            self.DEFAULT_HEALTH,
            self.SPAWN_SPEED,
            spawn_location,
            weapons,
            image_scale=1.5,
        )

        # Additional Grunt attributes
        self.moving_to_position = True
        self.stopping_point_y = None
        self.strafe_direction = 1
        self.grunt_row = row
        self.attack_speed = randint(4, 8)

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

        angle = self.current_rotation % 360
        attack_center = (self.rect.centerx, self.rect.bottom)
        self.equipped_weapon.attack(
            projectile_center=attack_center,
            speed=self.attack_speed,
            movement_angle=angle,
        )


class TrackerGrunt(Sprite):
    DEFAULT_HEALTH = 2

