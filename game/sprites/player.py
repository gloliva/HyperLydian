# stdlib imports
from math import sqrt
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
from stats import stat_tracker, Stat


class Player(Sprite):
    DEFAULT_HEALTH = 10
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
        self.projectiles_in_range = set()

    def move(self, pressed_keys, game_screen_rect: pg.Rect):
        movement_vector = [0, 0]
        # move player based on key input
        if pressed_keys[K_UP]:
            self.rect.move_ip(0, -self.movement_speed)
            movement_vector[1] -= self.movement_speed
        if pressed_keys[K_DOWN]:
            self.rect.move_ip(0, self.movement_speed)
            movement_vector[1] += self.movement_speed
        if pressed_keys[K_LEFT]:
            self.rect.move_ip(-self.movement_speed, 0)
            movement_vector[0] -= self.movement_speed
        if pressed_keys[K_RIGHT]:
            self.rect.move_ip(self.movement_speed, 0)
            movement_vector[0] += self.movement_speed

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
        rotation_amount = 0
        if pressed_keys[K_q]:
            rotation_amount = self.ROTATION_AMOUNT
            self.rotate(self.current_rotation + self.ROTATION_AMOUNT)
        if pressed_keys[K_e]:
            rotation_amount = -self.ROTATION_AMOUNT
            self.rotate(self.current_rotation - self.ROTATION_AMOUNT)

        # handle stats
        speed = sqrt(movement_vector[0]**2 + movement_vector[1]**2)
        stat_tracker.player__curr_speed = Stat(speed)
        stat_tracker.player__angle = Stat(self.current_rotation)
        if rotation_amount != 0:
            stat_tracker.player__last_rotation_direction = Stat(rotation_amount)

    def take_damage(self, damage: int) -> None:
        if debug.PLAYER_INVINCIBLE:
            return

        stat_tracker.player__health_lost += damage
        super().take_damage(damage)
        stat_tracker.player__curr_health = Stat(self.health)
        if self.is_dead():
            pg.event.post(Event.PLAYER_DEATH)

    def attack(self):
        attack_center = (self.rect.centerx, self.rect.centery)
        self.equipped_weapon.attack(
            projectile_center=attack_center,
            movement_angle=self.current_rotation,
        )

    def add_projectiles_in_range(self, projectiles: List[projectiles.Projectile]):
        for projectile in projectiles:
            if projectile not in self.projectiles_in_range:
                self.projectiles_in_range.add(projectile)
                stat_tracker.player__near_misses += 1

    def update_near_misses(self, projectile: projectiles.Projectile):
        if projectile in self.projectiles_in_range:
            self.projectiles_in_range.remove(projectile)
            stat_tracker.player__near_misses -= 1


def create_player(game_screen_rect: pg.Rect) -> Player:
    """Creates a new Player object"""

    # Create player weapons
    energy_turret = Weapon(
        projectiles.BlueMusicNote,
        groups.player_projectiles,
        Weapon.INFINITE_AMMO,
        damage=1,
        attack_speed=12,
        rate_of_fire=100,
        center_deltas=[(0, 24), (0, -24)],
        projectile_scale=0.3,
        track_stat=True,
        weapon_index=0,
    )
    energy_beam = Weapon(
        projectiles.Accidental,
        groups.player_projectiles,
        Weapon.INFINITE_AMMO,
        attack_speed=10,
        damage=5,
        rate_of_fire=300,
        projectile_scale=0.5,
        track_stat=True,
        weapon_index=1,
    )

    # Create player object
    player = Player(game_screen_rect, weapons=[energy_turret, energy_beam])

    # add to sprite group
    groups.all_sprites.add(player)

    # update stats
    stat_tracker.player__starting_position.update(player.rect.centerx, player.rect.centery)
    stat_tracker.player__starting_angle = Stat(player.INITIAL_ROTATION)
    return player
