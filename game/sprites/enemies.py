# stdlib imports
from random import choice as randelem, randint

# 3rd-party imports
import pygame as pg

# project imports
from defs import SCREEN_WIDTH, SCREEN_HEIGHT
from sprites.base import Sprite


class StraferGrunt(Sprite):
    DEFAULT_HEALTH = 20
    SPAWN_SPEED = 8
    STRAFE_SPEED = 3
    INITIAL_ROTATION = 270
    IMAGE_SCALE = 1.5

    def __init__(self, weapons, row: int) -> None:
        image_files = [
            'assets/spaceships/enemy_ship.png',
            'assets/spaceships/enemy_ship_hit.png',
        ]
        spawn_location = (
            randint(50, SCREEN_WIDTH - 50),
            -100,
        )
        super().__init__(
            image_files,
            self.DEFAULT_HEALTH,
            self.SPAWN_SPEED,
            spawn_location,
            weapons,
            image_scale=self.IMAGE_SCALE,
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
            self.rect.move_ip(0, self.SPAWN_SPEED)
        else:
            self.moving_to_position = False

    def strafe(self, game_screen_rect: pg.Rect):
        self.rect.move_ip(self.strafe_direction * self.STRAFE_SPEED, 0)

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
        self.equipped_weapon.attack(
            projectile_center=attack_center,
            speed=self.attack_speed,
            movement_angle=self.current_rotation,
        )


class SpinnerGrunt(Sprite):
    DEFAULT_HEALTH = 40
    INITIAL_ROTATION = 0
    SPAWN_SPEED = 6
    ROTATION_AMOUNT = 1
    IMAGE_SCALE = 1.5
    SPAWN_QUADRANT = ['left', 'right']

    def __init__(self, weapons) -> None:
        image_files = [
            'assets/spaceships/enemy_spinner_ship.png',
        ]

        spawn_location = self.set_spawn_information()

        super().__init__(
            image_files,
            self.DEFAULT_HEALTH,
            self.SPAWN_SPEED,
            spawn_location,
            weapons,
            image_scale=self.IMAGE_SCALE,
        )

        # Additional HyperMoth attributes
        self.moving_to_position = True
        self.attack_speed = 3

    def set_spawn_information(self):
        self.spawn_quadrant = randelem(self.SPAWN_QUADRANT)

        if self.spawn_quadrant == 'top':
            spawn_location = (
                randint(50, SCREEN_WIDTH - 50),
                -100,
            )

        elif self.spawn_quadrant == 'bottom':
            spawn_location = (
                randint(50, SCREEN_WIDTH - 50),
                SCREEN_HEIGHT + 100,
            )
        elif self.spawn_quadrant == 'left':
            spawn_location = (
                -100,
                randint(50, SCREEN_HEIGHT - 50),
            )

            self.stopping_point_x = spawn_location[0] + randint(300, 600)
            self.movement_direction = 1

        elif self.spawn_quadrant == 'right':
            spawn_location = (
                SCREEN_WIDTH + 100,
                randint(50, SCREEN_HEIGHT - 50),
            )

            self.stopping_point_x = spawn_location[0] - randint(300, 600)
            self.movement_direction = -1
            self.INITIAL_ROTATION = 180

        return spawn_location

    def move_to_position(self):
        if self.stopping_point_x is None:
            raise AttributeError('Must set stopping_point_x')

        if self.spawn_quadrant == 'left':
            if self.rect.right < self.stopping_point_x:
                self.rect.move_ip(self.SPAWN_SPEED, 0)
            else:
                self.moving_to_position = False
        elif self.spawn_quadrant == 'right':
            if self.rect.left > self.stopping_point_x:
                self.rect.move_ip(-self.SPAWN_SPEED, 0)
            else:
                self.moving_to_position = False

    def move(self, *args, **kwargs):
        if self.moving_to_position:
            self.move_to_position()
        else:
            self.rotate(self.current_rotation - self.ROTATION_AMOUNT)

    def attack(self):
        if self.moving_to_position:
            return

        attack_center = (self.rect.centerx, self.rect.bottom)
        self.equipped_weapon.attack(
            projectile_center=attack_center,
            speed=self.attack_speed,
            movement_angle=self.current_rotation,
        )



class TrackerGrunt(Sprite):
    DEFAULT_HEALTH = 2

