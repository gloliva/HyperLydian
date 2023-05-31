# stdlib imports
from typing import Optional, Tuple, Union

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
        num_projectiles: Union[int, float],
        rate_of_fire: Optional[int] = None,
    ) -> None:
        self.projectile_type = projectile_type
        self.num_projectiles = num_projectiles
        self.curr_projectiles = num_projectiles
        self.rate_of_fire = rate_of_fire if rate_of_fire is not None else self.DEFAULT_RATE_OF_FIRE
        self.last_time_shot = 0

    def fire_projectile(
            self,
            projectile_center_position: Tuple[int, int],
            projectile_group: pg.sprite.Group,
            damage: int = None,
            speed: int = None,
            movement_angle: int = None,
            image_scale: float = 1.0,
        ) -> None:
        current_time = pg.time.get_ticks()
        if not self.weapon_empty() and current_time - self.last_time_shot >= self.rate_of_fire:
            projectile = self.projectile_type(
                center_position=projectile_center_position,
                damage=damage,
                speed=speed,
                movement_angle=movement_angle,
                image_scale=image_scale,
            )
            projectile_group.add(projectile)
            groups.all_sprites.add(projectile)
            self.curr_projectiles -= 1
            self.last_time_shot = current_time

    def reload_projectile(self) -> None:
        self.curr_projectiles += 1

    def change_rate_of_fire(self, rate_of_fire_delta: int) -> None:
        self.rate_of_fire += rate_of_fire_delta

    def weapon_empty(self) -> bool:
        return self.curr_projectiles == 0


class StandardAttack:
    """Standard method of Attack for both Player and Enemies"""
    def __init__(self, default_weapon: Weapon, projectile_group: pg.sprite.Group) -> None:
        self.default_weapon = default_weapon
        self.equipped_weapon = default_weapon
        self.projectile_group = projectile_group

    def switch_weapon(self, weapon: Weapon) -> None:
        self.equipped_weapon = weapon

    def attack(
            self,
            projectile_center_position: Tuple[int, int],
            damage: int = None,
            speed: int = None,
            movement_angle: int = None,
            image_scale: float = 1.0,
        ):
        self.equipped_weapon.fire_projectile(
            projectile_center_position=projectile_center_position,
            projectile_group=self.projectile_group,
            damage=damage,
            speed=speed,
            movement_angle=movement_angle,
            image_scale=image_scale,
        )
