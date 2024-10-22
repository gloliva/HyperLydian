"""
This module defines all the base Sprite class that is overriden by the Player and Enemy classes.

This module defines all the basic sprite functionality, such as movement, rotation, attacking,
switching weapons, taking damage, and showing animations.

Author: Gregg Oliva
"""

# stdlib imports
import math
import os
from typing import Dict, List, Optional, Tuple
import sys

# 3rd-party impoarts
import pygame as pg

# project imports
from defs import PNG_PATH, ImageType


class CharacterSprite(pg.sprite.Sprite):
    """
    Base Sprite class to be subclassed by player and enemy objects. Defines the basic functionality
    of a sprite, like how it moves, attacks, and rotates.
    """
    ANIMATION_TIMER_INCREMENT = 0.25
    PROJECTILE_SPAWN_DELTA = 0
    DRAW_LAYER = 5
    INITIAL_ROTATION = 0
    SCORE = 0

    def __init__(
            self,
            image_types_to_files: Dict[str, List[str]],
            health: int,
            movement_speed: int,
            spawn_location: Tuple[int, int],
            weapons,
            image_scale: float = 1.0,
            image_rotation: int = 0,
            on_death_callbacks: Optional[List] = None,
        ) -> None:
        super().__init__()

        # Load Sprite images
        self.images = {
            image_type : [
                pg.transform.rotozoom(
                    pg.image.load(construct_asset_full_path(image_file)).convert_alpha(),
                    image_rotation,
                    image_scale,
                ) for image_file in image_files

            ]
            for image_type, image_files in image_types_to_files.items()
        }

        # Animation attributes
        self.curr_image_id = 0
        self.image_type = ImageType.DEFAULT
        self.animation_on = False

        # Select sprite image to display
        self.surf = self.images[self.image_type][self.curr_image_id]

        # Get sprite rect
        self.rect = self.surf.get_rect(center=spawn_location)
        self.original_rect = self.rect

        # Create sprite mask
        self.mask = pg.mask.from_surface(self.surf)
        self.mask_size = self.mask.get_size()

        # Set layer sprite is drawn to
        self._layer = self.DRAW_LAYER

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
        """Check to see if the sprite is dead based on its health"""
        return self.health <= 0

    def update(self, *args, **kwargs):
        """
        Update function is called every frame. This checks to see if an animation is showing
        and then calls the sprite's movement function.
        """
        if self.animation_on:
            self.show_animation()

        self.move(*args, **kwargs)

    def move(self, *args, **kwargs):
        raise NotImplementedError(
            'Each Sprite subclass must override their update method.'
        )

    def attack(self):
        """Calls the equipped weapon's attack function"""
        x_delta = self.PROJECTILE_SPAWN_DELTA * math.cos(math.radians(self.current_rotation))
        y_delta = -1 * self.PROJECTILE_SPAWN_DELTA * math.sin(math.radians(self.current_rotation))

        attack_center = (self.rect.centerx + x_delta, self.rect.centery + y_delta)
        self.equipped_weapon.attack(
            projectile_center=attack_center,
            movement_angle=self.current_rotation,
        )

    def switch_weapon(self, weapon_id: int = 0):
        """If the sprite has multiple weapons, switch to a specific weapon ID"""
        self.current_weapon_id = weapon_id
        self.equipped_weapon = self.weapons[self.current_weapon_id]

    def cycle_weapons(self):
        """If the sprite has multiple weapons, switch to the next weapon in the list"""
        self.current_weapon_id = (self.current_weapon_id + 1) % len(self.weapons)
        self.equipped_weapon = self.weapons[self.current_weapon_id]

    def rotate(self, rotation_angle: int):
        """
        Rotate the sprite's image. The current image in the animation needs to be rotated,
        a new sprite mask needs to be created, and then the rect needs to be re-centered.
        """
        self.current_rotation = rotation_angle % 360
        image = self.images[self.image_type][int(self.curr_image_id)]
        self.surf = pg.transform.rotate(image, rotation_angle)

        # make sure image retains its previous center
        current_image_center = self.rect.center
        self.rect = self.surf.get_rect()
        self.rect.center = current_image_center

        # generate new mask
        self.mask = pg.mask.from_surface(self.surf)
        self.mask_size = self.mask.get_size()

    def take_damage(self, damage: int) -> None:
        """Lose health and show the hit animation. If the sprite dies, call the on_death function"""
        self.health -= damage
        if self.health < 0:
            self.health = 0

        self.animation_on = True
        self.image_type = ImageType.HIT
        self.curr_image_id = 0
        self.show_animation()
        if self.is_dead:
            self.on_death()

    def show_animation(self):
        """Show an animation based on an event, such as getting hit by a projectile or collecting an upgrade"""
        self.curr_image_id += self.ANIMATION_TIMER_INCREMENT
        image_id = int(self.curr_image_id)

        # End animation
        if image_id >= len(self.images[self.image_type]):
            self.curr_image_id = 0
            image_id = 0
            self.image_type = ImageType.DEFAULT
            self.animation_on = False

        self.surf = pg.transform.rotate(
            self.images[self.image_type][image_id],
            self.current_rotation,
        )

    def on_death(self):
        """Call any on-death functions before killing the sprite and removing it from all groups"""
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
