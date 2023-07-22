# stdlib imports
from typing import Any, Tuple
from random import random

# 3rd-party imports
import pygame as pg

# project imports
from sprites.base import construct_asset_full_path
from stats import stat_tracker


class Upgrade(pg.sprite.Sprite):
    # Image
    IMAGE_FILE = None
    IMAGE_SCALE = 1.0

    # Drop Rate
    DROP_PROBABILITY = None

    # Animation Alpha Values
    ALPHA_VALUES = [255, 0]

    # Time to Live
    TTL_SECONDS = None
    EXPIRATION_SECONDS = None
    EXPIRATION_TIMER_INCREMENT = 0.125
    EXPIRATION_TIMER_INCREMENT_INCREASE_THRESHOLD = 1

    # Layers
    DRAW_LAYER = 2

    @classmethod
    def should_drop(cls) -> bool:
        probability = random()
        return probability <= cls.DROP_PROBABILITY

    def __init__(self, center_position: Tuple[int, int]) -> None:
        super().__init__()

        image_file = construct_asset_full_path(self.IMAGE_FILE)
        image = pg.image.load(image_file).convert_alpha()
        self.surf = pg.transform.scale_by(image, self.IMAGE_SCALE)
        self.rect = self.surf.get_rect(center=center_position)

        # Create sprite mask
        self.mask = pg.mask.from_surface(self.surf)

        # Update the drawing layer
        self._layer = self.DRAW_LAYER

        # Upgrade properties
        self.time_alive = 0
        self.expiration_animation_on = False
        self.num_alpha_values = len(self.ALPHA_VALUES)
        self.curr_alpha_id = 0

    def update(self, *_: Any, **kwargs: Any) -> None:
        timedelta = kwargs.get('timedelta')
        if timedelta is None:
            raise KeyError(f'timedelta keyword arg not passed into {self.__class__} update method.')

        self.time_alive += timedelta
        if self.expiration_animation_on:
            self.show_expiration_animation()
        elif self.time_alive > (self.TTL_SECONDS - self.EXPIRATION_SECONDS):
            self.expiration_animation_on = True

    def show_expiration_animation(self) -> None:
        if self.time_alive > (self.TTL_SECONDS):
            self.kill()
            stat_tracker.upgrades__missed += 1
            return

        expiration_timer_increment = self.EXPIRATION_TIMER_INCREMENT
        if (self.TTL_SECONDS - self.time_alive) < self.EXPIRATION_TIMER_INCREMENT_INCREASE_THRESHOLD:
            expiration_timer_increment *= 2

        self.curr_alpha_id = (self.curr_alpha_id + expiration_timer_increment) % self.num_alpha_values
        alpha_id = int(self.curr_alpha_id)
        alpha_value = self.ALPHA_VALUES[alpha_id]
        self.surf.set_alpha(alpha_value)


class Health(Upgrade):
    HEALTH_INCREASE = None

    def __init__(self, center_position: Tuple[int, int]) -> None:
        super().__init__(center_position)

        # Health Upgrade properties
        self.health_increase = self.HEALTH_INCREASE


class WeakHealth(Health):
    IMAGE_FILE = 'upgrades/health/weak_health.png'
    IMAGE_SCALE = 0.65
    HEALTH_INCREASE = 1
    DROP_PROBABILITY = 0.5
    TTL_SECONDS = 7
    EXPIRATION_SECONDS = 3


class MaxHealth(Health):
    IMAGE_FILE = 'upgrades/health/max_health.png'
    HEALTH_INCREASE = 10
    DROP_PROBABILITY = 0.05
    TTL_SECONDS = 4
    EXPIRATION_SECONDS = 2
