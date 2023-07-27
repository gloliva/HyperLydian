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
from sprites.base import CharacterSprite, construct_asset_full_path
import sprites.groups as groups
import sprites.projectiles as projectiles
from attacks import Weapon
from stats import stat_tracker


class Player(CharacterSprite):
    DEFAULT_HEALTH = 10
    DEFAULT_SPEED = 5
    INITIAL_ROTATION = 90
    ROTATION_AMOUNT = 2
    IMAGE_SCALE = 1.5
    MENU_SPEED = 6
    HIT_TIMER_INCREMENT = 0.125
    HEAL_TIMER_INCREMENT = 0.125

    def __init__(self, game_screen_rect: pg.Rect, weapons: List[Weapon], in_menu: bool = False) -> None:
        image_files = [
            "spaceships/player/player_ship.png",
            "spaceships/player/player_ship_hit.png",
        ]
        heal_image_files = [
            "spaceships/player/player_ship.png",
            "spaceships/player/player_ship_upgrade.png",
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
        self.heal_animation_on = False
        self.heal_images = [
            pg.transform.scale_by(
                pg.image.load(construct_asset_full_path(image_file)).convert_alpha(),
                self.IMAGE_SCALE,
            )
            for image_file in heal_image_files
        ]
        self.projectiles_in_range = set()

        # Menu attributes
        self.menu_direction = self.MENU_SPEED

    def update(self, *args, **kwargs) -> None:
        if self.heal_animation_on:
            self.show_heal_animation()

        super().update(*args, **kwargs)

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
        if rotation_amount != 0:
            stat_tracker.player__last_rotation_direction.update(rotation_amount)
            stat_tracker.player__frames__rotating += 1
        if speed > 0:
            stat_tracker.player__frames__moving += 1
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

        stat_tracker.player__health_lost += damage
        super().take_damage(damage)
        stat_tracker.player__curr_health.update(self.health)
        if self.is_dead:
            pg.event.post(Event.PLAYER_DEATH)

    def heal(self, health: int) -> None:
        self.health += health
        if self.health > self.max_health:
            self.health = self.max_health
        stat_tracker.player__curr_health.update(self.health)

        self.heal_animation_on = True
        self.curr_image_id = 1
        self.show_heal_animation()

    def show_heal_animation(self):
        self.curr_image_id = (self.curr_image_id + self.HEAL_TIMER_INCREMENT) % self.num_images
        image_id = int(self.curr_image_id)
        self.surf = pg.transform.rotate(
            self.heal_images[image_id],
            self.current_rotation,
        )
        if image_id == 0:
            self.curr_image_id = 0
            self.heal_animation_on = False

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


def create_player(game_screen_rect: pg.Rect, in_menu: bool = False) -> Player:
    """Creates a new Player object"""
    track_stat = True if not in_menu else False

    # Create player weapons
    energy_turret = Weapon(
        projectiles.PlayerMusicNote,
        groups.player_projectiles,
        groups.all_sprites,
        Weapon.INFINITE_AMMO,
        damage=1,
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
        damage=5,
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
