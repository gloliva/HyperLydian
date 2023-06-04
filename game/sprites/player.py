# stdlib imports
from typing import List

# 3rd-party imports
import pygame as pg
from pygame.locals import (
    K_q,
    K_e,
    K_UP,
    K_DOWN,
    K_LEFT,
    K_RIGHT,
)

# project imports
import debug
from events import Event
from sprites.base import Sprite
import sprites.groups as groups
import sprites.projectiles as projectiles
from attacks import Weapon
from stats import stat_tracker


class Player(Sprite):
    DEFAULT_HEALTH = 5
    DEFAULT_SPEED = 5
    INITIAL_ROTATION = 90
    ROTATION_AMOUNT = 2
    IMAGE_SCALE = 1.5
    COUNT_DEATH_STAT = False

    def __init__(self, game_screen_rect: pg.Rect, weapons: List[Weapon]) -> None:
        image_files = [
            "assets/spaceships/player_ship.png",
            "assets/spaceships/player_ship_hit.png",
        ]
        spawn_location = (
            game_screen_rect.width / 2,
            game_screen_rect.height - 100,
        )

        super().__init__(
            image_files,
            self.DEFAULT_HEALTH,
            self.DEFAULT_SPEED,
            spawn_location,
            weapons,
            image_scale=self.IMAGE_SCALE,
        )

        # Additional Player attributes
        self.max_health = self.DEFAULT_HEALTH

    def move(self, pressed_keys, game_screen_rect: pg.Rect):
        # move player based on key input
        if pressed_keys[K_UP]:
            self.rect.move_ip(0, -self.movement_speed)
        if pressed_keys[K_DOWN]:
            self.rect.move_ip(0, self.movement_speed)
        if pressed_keys[K_LEFT]:
            self.rect.move_ip(-self.movement_speed, 0)
        if pressed_keys[K_RIGHT]:
            self.rect.move_ip(self.movement_speed, 0)

        # don't move out of bounds
        if self.rect.left < 0:
            self.rect.left = 0
        if self.rect.right > game_screen_rect.width:
            self.rect.right = game_screen_rect.width
        if self.rect.top <= 0:
            self.rect.top = 0
        if self.rect.bottom > game_screen_rect.height:
            self.rect.bottom = game_screen_rect.height

        # handle rotation
        if pressed_keys[K_q]:
            self.rotate(self.current_rotation + self.ROTATION_AMOUNT)
        if pressed_keys[K_e]:
            self.rotate(self.current_rotation - self.ROTATION_AMOUNT)

    def take_damage(self, damage: int) -> None:
        if debug.PLAYER_INVINCIBLE:
            return

        stat_tracker.player_health_lost += damage
        super().take_damage(damage)
        if self.is_dead():
            pg.event.post(Event.PLAYER_DEATH)

    def attack(self):
        attack_center = (self.rect.centerx, self.rect.centery)
        self.equipped_weapon.attack(
            projectile_center=attack_center,
            movement_angle=self.current_rotation,
        )
        stat_tracker.player_shots_fired += 1


def create_player(game_screen_rect: pg.Rect) -> Player:
    """Creates a new Player object"""

    # Create player weapons
    energy_turret = Weapon(
        projectiles.GreenEnergyOrb,
        groups.player_projectiles,
        Weapon.INFINITE_AMMO,
        damage=1,
        rate_of_fire=100,
        center_deltas=[(0, 24), (0, -24)],
        projectile_scale=0.2,
    )
    energy_beam = Weapon(
        projectiles.BlueEnergyBeam,
        groups.player_projectiles,
        Weapon.INFINITE_AMMO,
        damage=10,
        rate_of_fire=300,
    )

    # Create player object
    player = Player(game_screen_rect, weapons=[energy_turret, energy_beam])

    # add to sprite group
    groups.all_sprites.add(player)
    return player