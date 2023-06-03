# stdlib imports
import math
from typing import List, Optional, Tuple, Union

# 3rd-party imports
import pygame as pg

# project imports
from sprites.projectiles import Projectile
import sprites.groups as groups


class Weapon:
    """Weapon contains projectile type, ammo amount, and rate of fire"""
    INFINITE_AMMO = float('inf')
    DEFAULT_RATE_OF_FIRE = 200

    def __init__(
        self,
        projectile_type: Projectile,
        projectile_group: pg.sprite.Group,
        num_projectiles: Union[int, float],
        rate_of_fire: Optional[int] = None,
        center_deltas: Optional[List[Tuple[int, int]]] = None,
        projectile_scale: float = 1.0,
    ) -> None:
        self.projectile_type = projectile_type
        self.projectile_group = projectile_group
        self.num_projectiles = num_projectiles
        self.curr_projectiles = num_projectiles
        self.projectile_scale = projectile_scale
        self.rate_of_fire = rate_of_fire if rate_of_fire is not None else self.DEFAULT_RATE_OF_FIRE
        self.center_deltas = center_deltas if center_deltas is not None else [(0, 0)]
        self.last_time_shot = 0

    def attack(
            self,
            projectile_center: Tuple[int, int],
            damage: int = None,
            speed: int = None,
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
                    damage=damage,
                    speed=speed,
                    movement_angle=movement_angle,
                    image_scale=self.projectile_scale,
                )
                self.last_time_shot = current_time

    def fire_projectile(
            self,
            projectile_center_position: Tuple[int, int],
            damage: int = None,
            speed: int = None,
            movement_angle: int = None,
            image_scale: float = 1.0,
        ) -> None:
        projectile = self.projectile_type(
            center_position=projectile_center_position,
            damage=damage,
            speed=speed,
            movement_angle=movement_angle,
            image_scale=image_scale,
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
