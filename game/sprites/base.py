# stdlib imports
import math
from typing import Tuple

# 3rd-party impoarts
import pygame as pg

# project imports
from stats import stat_tracker


class Sprite(pg.sprite.Sprite):
    """Base Sprite class to be subclassed by player and enemy objects"""
    HIT_TIMER_INCREMENT = 0.25
    PROJECTILE_SPAWN_DELTA = 0
    DRAW_LAYER = 2
    INITIAL_ROTATION = 0
    COUNT_DEATH_STAT = True
    SCORE = 0

    def __init__(
            self,
            image_files: str,
            health: int,
            movement_speed: int,
            spawn_location: Tuple[int, int],
            weapons,
            image_scale: float = 1.0,
            image_rotation: int = 0,
        ) -> None:
        super().__init__()

        # Load Sprite images
        self.images = [
            pg.transform.rotozoom(
                pg.image.load(image_file).convert_alpha(),
                image_rotation,
                image_scale
            ) for image_file in image_files
        ]
        self.num_images = len(image_files)
        self.curr_image_id = 0

        # Select sprite image to display
        self.surf = self.images[self.curr_image_id]

        # Get sprite rect
        self.rect = self.surf.get_rect(center=spawn_location)
        self.original_rect = self.rect

        # Create sprite mask
        self.mask = pg.mask.from_surface(self.surf)

        # Set layer sprite is drawn to
        self._layer = self.DRAW_LAYER

        # Hit animation attributes
        self.hit_animation_on = False

        # Sprite attributes
        self.health = health
        self.movement_speed = movement_speed
        self.weapons = weapons
        self.current_weapon_id = 0
        self.equipped_weapon = self.weapons[self.current_weapon_id]
        self.current_rotation = 0

        if self.INITIAL_ROTATION:
            self.rotate(self.INITIAL_ROTATION)

    def update(self, *args, **kwargs):
        if self.hit_animation_on:
            self.show_hit_animation()

        self.move(*args, **kwargs)

    def move(self, *args, **kwargs):
        raise NotImplementedError(
            'Each Sprite subclass must override their update method.'
        )

    def attack(self):
        x_delta = self.PROJECTILE_SPAWN_DELTA * math.cos(math.radians(self.current_rotation))
        y_delta = -1 * self.PROJECTILE_SPAWN_DELTA * math.sin(math.radians(self.current_rotation))

        attack_center = (self.rect.centerx + x_delta, self.rect.centery + y_delta)
        self.equipped_weapon.attack(
            projectile_center=attack_center,
            movement_angle=self.current_rotation,
        )

    def switch_weapon(self):
        self.current_weapon_id = (self.current_weapon_id + 1) % len(self.weapons)
        self.equipped_weapon = self.weapons[self.current_weapon_id]

    def rotate(self, rotation_angle: int):
        self.current_rotation = rotation_angle % 360
        image = self.images[int(self.curr_image_id)]
        self.surf = pg.transform.rotate(image, rotation_angle)

        # make sure image retains its previous center
        current_image_center = self.rect.center
        self.rect = self.surf.get_rect()
        self.rect.center = current_image_center

        # generate new mask
        self.mask = pg.mask.from_surface(self.surf)

    def take_damage(self, damage: int) -> None:
        self.health -= damage
        if self.health < 0:
            self.health = 0

        self.hit_animation_on = True
        # TODO: setting this to 1 uses the hit sprite png
        # will need to change this later if working with multiple sprites for animation
        self.curr_image_id = 1
        self.show_hit_animation()
        if self.is_dead():
            self.on_death()

    def show_hit_animation(self):
        self.curr_image_id = (self.curr_image_id + self.HIT_TIMER_INCREMENT) % self.num_images
        image_id = int(self.curr_image_id)
        self.surf = pg.transform.rotate(
            self.images[image_id],
            self.current_rotation,
        )
        if image_id == 0:
            self.curr_image_id = 0
            self.hit_animation_on = False

    def is_dead(self):
        return self.health <= 0

    def on_death(self):
        if self.COUNT_DEATH_STAT:
            stat_tracker.player_enemies_killed += 1
            stat_tracker.score += self.SCORE
        self.kill()
