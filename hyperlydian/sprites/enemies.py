# stdlib imports
from random import randint
from typing import Tuple

# 3rd-party imports
import pygame as pg


class StraferGruntGroup(pg.sprite.Group):
    MAX_GRUNTS_PER_ROW = 3
    MAX_ROWS = 3
    ROW_START = 150
    ROW_SPACING = 1.25

    def __init__(self) -> None:
        super().__init__()
        self.max_rows = self.MAX_ROWS
        self.max_grunts_per_row = self.MAX_GRUNTS_PER_ROW

        # Manage grunt arrangement
        self.grunts_per_row = [0 for _ in range(self.max_rows)]
        self.curr_row_to_fill = 0

    def add(self, *grunts: "StraferGrunt") -> None:
        """Overrides AbstractGroup `add` method to handle row assignment
        """
        for grunt in grunts:
            super().add(grunt)
            self.grunts_per_row[self.curr_row_to_fill] += 1

    def remove_internal(self, grunt: "StraferGrunt") -> None:
        """Overrides AbstractGroup `remove_internal` method to handle
        removing grunt from a row.
        """
        self.grunts_per_row[grunt.grunt_row] -= 1
        super().remove_internal(grunt)
        self.update_curr_row()

    def update_curr_row(self):
        for row, num_grunts in enumerate(self.grunts_per_row):
            if num_grunts < self.max_grunts_per_row:
                self.curr_row_to_fill = row
                break

    def is_full(self):
        return sum(self.grunts_per_row) >= self.max_grunts_per_row * self.max_rows


class Enemy(pg.sprite.Sprite):
    DRAW_LAYER = 2

    def __init__(
            self,
            image_file: str,
            health: int,
            movement_speed: int,
            spawn_location: Tuple[int, int],
            primary_attack,
            image_scale: float = 1.0,
            image_rotation: int = 0,
        ) -> None:
        super().__init__()

        # Create sprite surface
        image = pg.image.load(image_file).convert_alpha()
        self.surf = pg.transform.rotate(pg.transform.scale_by(image, image_scale), image_rotation)

        color_image = pg.Surface(self.surf.get_size()).convert_alpha()
        color_image.fill((255, 0, 0))
        self.surf.blit(color_image, (0,0), special_flags=pg.BLEND_RGB_MULT)

        # Get sprite rect
        self.rect = self.surf.get_rect(center=spawn_location)

        # Create sprite mask
        self.mask = pg.mask.from_surface(self.surf)

        # Set layer sprite is drawn to
        self._layer = self.DRAW_LAYER

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

    def take_damage(self, damage: int) -> None:
        self.health -= damage
        if self.is_dead():
            self.kill()

    def is_dead(self):
        return self.health <= 0


class StraferGrunt(Enemy):
    DEFAULT_HEALTH = 5
    SPAWN_SPEED = 5
    STRAFE_SPEED = 2

    def __init__(self, primary_attack, row: int) -> None:
        image_file = 'assets/kenny-space/PNG/Default/enemy_A.png'
        spawn_location = (
            randint(0, 1000),
            -100,
        )
        super().__init__(
            image_file,
            self.DEFAULT_HEALTH,
            self.SPAWN_SPEED,
            spawn_location,
            primary_attack,
            image_scale=1.5,
            image_rotation=180,
        )


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

    def attack(self):
        if self.moving_to_position:
            return

        attack_center = (self.rect.centerx, self.rect.bottom)
        self.primary_attack.attack(
            object_center_position=attack_center,
        )


class TrackerGrunt(Enemy):
    DEFAULT_HEALTH = 2

