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
from defs import ImageType
from events import Event
from sprites.base import CharacterSprite
import sprites.groups as groups
import sprites.projectiles as projectiles
from attacks import Weapon
from stats import stat_tracker
from settings_manager import settings_manager


class Player(CharacterSprite):
    # Sprite
    DEFAULT_HEALTH = 10
    EASY_MODE_HEALTH = 15
    DEFAULT_SPEED = 5
    INITIAL_ROTATION = 90
    ROTATION_AMOUNT = 2

    # Menu
    MENU_SPEED = 6

    # Image
    IMAGE_SCALE = 1.5
    ANIMATION_TIMER_INCREMENT = 0.1

    def __init__(self, game_screen_rect: pg.Rect, weapons: List[Weapon]) -> None:
        spawn_location = (
            game_screen_rect.width / 2,
            game_screen_rect.height - 100,
        )

        image_types_to_files = {
            ImageType.DEFAULT: ["spaceships/player/player_ship.png"],
            ImageType.HIT: ["spaceships/player/player_ship_hit.png"],
            ImageType.HEAL: ["spaceships/player/player_ship_upgrade.png"],
            ImageType.COLLECT: ["spaceships/player/player_ship_collected.png"]
        }

        health = self.DEFAULT_HEALTH if not settings_manager.easy_mode else self.EASY_MODE_HEALTH

        super().__init__(
            image_types_to_files,
            health,
            self.DEFAULT_SPEED,
            spawn_location,
            weapons,
            image_scale=self.IMAGE_SCALE,
        )

        # Additional Player attributes
        self.max_health = health
        self.projectiles_in_range = set()
        self.last_time_hit = pg.time.get_ticks()
        self.last_time_note_collected = pg.time.get_ticks()

        # Menu attributes
        self.menu_direction = self.MENU_SPEED

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
        stat_tracker.player__curr_velocity.update(*movement_vector)
        stat_tracker.player__curr_speed.update(speed)
        stat_tracker.player__angle.update(self.current_rotation)

        # rotating and moving
        if rotation_amount != 0 and speed > 0:
            stat_tracker.player__last_rotation_direction.update(rotation_amount)
            stat_tracker.player__frames__moving_and_rotating += 1
        # only rotating
        elif rotation_amount != 0:
            stat_tracker.player__last_rotation_direction.update(rotation_amount)
            stat_tracker.player__frames__rotating += 1
        # only moving
        elif speed > 0:
            stat_tracker.player__frames__moving += 1
        # completely still
        else:
            stat_tracker.player__frames__still += 1

    def move_in_menu(self, game_screen_rect: pg.Rect):
        self.rect.move_ip(self.menu_direction, 0)

        # don't move out of bounds
        if self.rect.left < 0:
            self.rect.left = 0
            self.menu_direction *= -1
        if self.rect.right > game_screen_rect.width:
            self.rect.right = game_screen_rect.width
            self.menu_direction *= -1

    def take_damage(self, damage: int) -> None:
        if debug.PLAYER_INVINCIBLE:
            return

        curr_time = pg.time.get_ticks()
        stat_tracker.player__time__between_getting_hit.add(curr_time - self.last_time_hit)
        stat_tracker.player__health_lost += damage
        super().take_damage(damage)
        stat_tracker.player__curr_health.update(self.health)
        self.last_time_hit = curr_time
        if self.is_dead and not settings_manager.player_invincible:
            pg.event.post(Event.PLAYER_DEATH)

    def heal(self, health: int) -> None:
        self.health += health
        if self.health > self.max_health:
            self.health = self.max_health
        stat_tracker.player__curr_health.update(self.health)

        self.animation_on = True
        self.image_type = ImageType.HEAL
        self.curr_image_id = 0
        self.show_animation()

    def collect_note(self) -> None:
        self.animation_on = True
        self.image_type = ImageType.COLLECT
        self.curr_image_id = 0
        self.show_animation()

    def attack(self, in_menu: bool = False):
        attack_center = (self.rect.centerx, self.rect.centery)
        self.equipped_weapon.attack(
            projectile_center=attack_center,
            movement_angle=self.current_rotation,
        )
        if not in_menu:
            stat_tracker.player__frames__firing += 1

    def add_projectiles_in_range(self, projectiles: List[projectiles.Projectile]):
        for projectile in projectiles:
            if projectile not in self.projectiles_in_range:
                self.projectiles_in_range.add(projectile)
                stat_tracker.player__dodges += 1

    def update_dodges(self, projectile: projectiles.Projectile):
        if projectile in self.projectiles_in_range:
            self.projectiles_in_range.remove(projectile)
            stat_tracker.player__dodges -= 1

    def on_death(self):
        if settings_manager.player_invincible:
            self.health = 1
            return

        super().on_death()


def create_player(game_screen_rect: pg.Rect, in_menu: bool = False) -> Player:
    """Creates a new Player object"""
    track_stat = True if not in_menu else False
    damage_increase = 2 if settings_manager.easy_mode else 0

    # Create player weapons
    energy_turret = Weapon(
        projectiles.PlayerMusicNote,
        groups.player_projectiles,
        groups.all_sprites,
        Weapon.INFINITE_AMMO,
        damage=1 + damage_increase,
        attack_speed=12,
        rate_of_fire=100,
        center_deltas=[(0, 24), (0, -24)],
        projectile_scale=0.15,
        track_stat=track_stat,
        weapon_index=0,
    )
    energy_beam = Weapon(
        projectiles.PlayerAccidental,
        groups.player_projectiles,
        groups.all_sprites,
        Weapon.INFINITE_AMMO,
        attack_speed=10,
        damage=5 + damage_increase,
        rate_of_fire=300,
        projectile_scale=0.5,
        track_stat=track_stat,
        weapon_index=1,
    )

    # Create player object
    player = Player(game_screen_rect, weapons=[energy_turret, energy_beam])

    # add to sprite group
    groups.all_sprites.add(player)

    # update stats
    if track_stat:
        stat_tracker.player__starting_position.update(player.rect.centerx, player.rect.centery)
        stat_tracker.player__starting_angle.update(player.INITIAL_ROTATION)
    return player
