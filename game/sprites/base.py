# stdlib imports
import math
import os
from typing import List, Optional, Tuple
import sys

# 3rd-party impoarts
import pygame as pg

# project imports
from defs import PNG_PATH


class CharacterSprite(pg.sprite.Sprite):
    """Base Sprite class to be subclassed by player and enemy objects"""
    HIT_TIMER_INCREMENT = 0.25
    PROJECTILE_SPAWN_DELTA = 0
    DRAW_LAYER = 3
    INITIAL_ROTATION = 0
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
            on_death_callbacks: Optional[List] = None
        ) -> None:
        super().__init__()

        # Load Sprite images
        self.images = [
            pg.transform.rotozoom(
                pg.image.load(construct_asset_full_path(image_file)).convert_alpha(),
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
        self.on_death_callbacks = on_death_callbacks if on_death_callbacks is not None else []

        if self.INITIAL_ROTATION:
            self.rotate(self.INITIAL_ROTATION)

    @property
    def is_dead(self):
        return self.health <= 0

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

    def switch_weapon(self, weapon_id: int = 0):
        self.current_weapon_id = weapon_id
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
        if self.is_dead:
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

    def on_death(self):
        for callback in self.on_death_callbacks:
            callback()
        self.kill()


def construct_asset_full_path(asset_relative_path: str) -> str:
    """Constructs the full path to a project asset. Handles building from source and using Pyinstaller"""
    try:
        # PyInstaller creates a temp folder and stores path in _MEIPASS
        base_path = sys._MEIPASS
    except Exception:
        base_path = os.path.abspath(".")

    return os.path.join(base_path, PNG_PATH, asset_relative_path)
