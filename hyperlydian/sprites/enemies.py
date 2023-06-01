# stdlib imports
from random import randint
from typing import List, Tuple

# 3rd-party imports
import pygame as pg


class Enemy(pg.sprite.Sprite):
    DRAW_LAYER = 2

    def __init__(
            self,
            image_files: str,
            health: int,
            movement_speed: int,
            spawn_location: Tuple[int, int],
            primary_attack,
            image_scale: float = 1.0,
            image_rotation: int = 0,
        ) -> None:
        super().__init__()

        # Create sprite surface
        self.images = [
            pg.image.load(image_file).convert_alpha() for image_file in image_files
        ]
        self.selected_image_id = 0

        # self.original_image = pg.image.load(image_file).convert_alpha()
        self.surf = pg.transform.rotate(
            pg.transform.scale_by(
                self.images[self.selected_image_id],
                image_scale
            ),
            image_rotation
        )

        # Get sprite rect
        self.rect = self.surf.get_rect(center=spawn_location)

        # Create sprite mask
        self.mask = pg.mask.from_surface(self.surf)

        # Set layer sprite is drawn to
        self._layer = self.DRAW_LAYER

        # hit indicator image
        self.last_time_hit = 0

        # Enemy attributes
        self.health = health
        self.movement_speed = movement_speed
        self.primary_attack = primary_attack
        self.show_hit_indicator = False


    def update(self):
        raise NotImplementedError(
            'Each Enemy subclass must override their update method.'
        )

    def attack(self):
        raise NotImplementedError(
            'Each Enemy subclass must override their attack method.'
        )

    def take_damage(self, damage: int) -> None:
        self.health -= damage
        self.last_time_hit = pg.time.get_ticks()
        self.show_hit_indicator = True
        if self.is_dead():
            self.kill()

    def is_dead(self):
        return self.health <= 0


class StraferGrunt(Enemy):
    DEFAULT_HEALTH = 5
    SPAWN_SPEED = 8
    STRAFE_SPEED = 4

    def __init__(self, primary_attack, row: int) -> None:
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
            primary_attack,
            image_scale=1.5,
            image_rotation=180,
        )

        # Grunt movement attributes
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

    def update(self, game_screen_rect: pg.Rect):
        current_time = pg.time.get_ticks()
        if self.show_hit_indicator:
            if current_time - self.last_time_hit >= 2000:
                pass
            else:
                self.show_hit_indicator = False
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


class TrackerGrunt(Enemy):
    DEFAULT_HEALTH = 2

