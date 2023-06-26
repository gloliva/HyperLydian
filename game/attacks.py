# stdlib imports
import math
from random import randint
from typing import List, Optional, Tuple, Union

# 3rd-party imports
import pygame as pg

# project imports
from sprites.projectiles import Projectile
import sprites.groups as groups
from stats import stat_tracker


class Weapon:
    """Weapon contains projectile type, ammo amount, and rate of fire"""
    INFINITE_AMMO = float('inf')
    DEFAULT_RATE_OF_FIRE = 200

    def __init__(
        self,
        projectile_type: Projectile,
        projectile_group: pg.sprite.Group,
        num_projectiles: Union[int, float],
        damage: Optional[int] = None,
        attack_speed: Optional[int] = None,
        rate_of_fire: Optional[int] = None,
        center_deltas: Optional[List[Tuple[int, int]]] = None,
        projectile_scale: float = 1.0,
        weapon_index: int = 0,
        projectile_variant_number: Optional[int] = None,
        track_stat: bool = False,
    ) -> None:
        self.projectile_type = projectile_type
        self.projectile_group = projectile_group
        self.num_projectiles = num_projectiles
        self.curr_projectiles = num_projectiles
        self.projectile_scale = projectile_scale
        self.damage = damage
        self.attack_speed = attack_speed
        self.rate_of_fire = rate_of_fire if rate_of_fire is not None else self.DEFAULT_RATE_OF_FIRE
        self.weapon_index = weapon_index
        self.projectile_variant_number = projectile_variant_number
        self.track_stat = track_stat
        self.center_deltas = center_deltas if center_deltas is not None else [(0, 0)]
        self.last_time_shot = 0

    def attack(
            self,
            projectile_center: Tuple[int, int],
            movement_angle: int = None,
        ):
        # Handle rate of fire for weapon
        current_time = pg.time.get_ticks()
        if not self.weapon_empty() and current_time - self.last_time_shot >= self.rate_of_fire:
            # Create all of the projectiles with each weapon fire, oriented from the center point
            for center_delta in self.center_deltas:
                x_delta = center_delta[0]
                y_delta = center_delta[1]

                # Handle if the player, and thus the projectile, has rotated
                angle = math.radians(movement_angle)
                rotated_x = x_delta * math.cos(angle) - y_delta * math.sin(angle)
                rotated_y = x_delta * math.sin(angle) + y_delta * math.cos(angle)

                projectile_center_position = (
                    projectile_center[0] + (-1 * rotated_x),
                    projectile_center[1] + rotated_y,
                )

                self.fire_projectile(
                    projectile_center_position=projectile_center_position,
                    movement_angle=movement_angle,
                )
                self.last_time_shot = current_time

                # Track weapon firing stat
                if self.track_stat:
                    stat_tracker.weapon__shots_per_weapon.add_at_index(self.weapon_index, 1)
                    stat_tracker.weapon__total_shots_fired += 1

    def fire_projectile(
            self,
            projectile_center_position: Tuple[int, int],
            movement_angle: int = None,
        ) -> None:
        variant_number = self.projectile_variant_number if self.projectile_variant_number is not None \
            else randint(0, self.projectile_type.NUM_VARIANTS - 1)

        projectile = self.projectile_type(
            center_position=projectile_center_position,
            damage=self.damage,
            speed=self.attack_speed,
            movement_angle=movement_angle,
            image_scale=self.projectile_scale,
            variant_number=variant_number,
        )
        self.projectile_group.add(projectile)
        groups.all_sprites.add(projectile)
        self.curr_projectiles -= 1

    def reload_projectile(self) -> None:
        self.curr_projectiles += 1

    def change_rate_of_fire(self, rate_of_fire_delta: int) -> None:
        self.rate_of_fire += rate_of_fire_delta

    def weapon_empty(self) -> bool:
        return self.curr_projectiles == 0
