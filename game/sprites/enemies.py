"""
This module defines all the Enemy classes and their movements and abilities.

Author: Gregg Oliva
"""

# stdlib imports
from random import choice as randelem, randint
from typing import Dict, Optional, List, Tuple

# 3rd-party imports
import pygame as pg

# project imports
from defs import SCREEN_WIDTH, SCREEN_HEIGHT, FPS, ImageType
from sprites.base import CharacterSprite
from stats import stat_tracker


class Enemy(CharacterSprite):
    """
    Base enemy class, this is mainly to track specific enemy stats, as the CharacterSprite class
    handles most of the heavy lifting for Sprite functionality.
    """
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
            special_event: bool = False,
            in_menu: bool = False,
        ) -> None:
        super().__init__(
            image_types_to_files=image_types_to_files,
            health=health,
            movement_speed=movement_speed,
            spawn_location=spawn_location,
            weapons=weapons,
            image_scale=image_scale,
            image_rotation=image_rotation,
            on_death_callbacks=on_death_callbacks,
        )

        # Additional enemy attributes
        self.in_menu = in_menu
        self.spawn_time = pg.time.get_ticks()

        # Don't track stats if in a menu
        if self.in_menu:
            return

        # enemy tracking stats
        stat_tracker.enemies__total += 1
        if special_event:
            stat_tracker.enemies__special_count += 1
        else:
            stat_tracker.enemies__standard_count += 1

    def on_death(self):
        """Overrides the CharacterSprite on_death function to track enemy-specific stats"""
        # Handle tracking enemy death stats
        if not self.in_menu:
            current_time = pg.time.get_ticks()
            stat_tracker.enemies__time__lifespan.add(current_time - self.spawn_time)
            stat_tracker.player__time__between_kills.add(current_time - stat_tracker.time_last_enemy_killed)
            stat_tracker.time_last_enemy_killed = current_time
            stat_tracker.enemies__killed += 1
            stat_tracker.enemies__score += self.SCORE
        super().on_death()


class StraferGrunt(Enemy):
    """
    A Strafer Grunt enemy spawns at a specific horizontal row and strafes back and forth horizontally on the screen.

    A Strafer Grunt bounces off of other grunts, upgrades, and the Player. It will occasionally switch directions at random.
    """
    DEFAULT_HEALTH = 20
    SPAWN_SPEED = 8
    PROJECTILE_SPAWN_DELTA = 40
    INITIAL_ROTATION = 270
    IMAGE_SCALE = 1.5
    SCORE = 10

    # Strafe
    STRAFE_SPEED = 3
    MIN_STRAFE = FPS
    MAX_STRAFE = FPS * 10

    def __init__(
            self,
            weapons,
            row: int,
            spawn_direction: int,
            special_event: bool = False,
            additional_health: int = 0
        ) -> None:
        image_types_to_files = {
            ImageType.DEFAULT: ['spaceships/strafer_grunt.png'],
            ImageType.HIT: ['spaceships/strafer_grunt_hit.png'],
        }

        x = randint(50, SCREEN_WIDTH - 50)
        y = -100 if spawn_direction == 1 else SCREEN_HEIGHT + 100
        spawn_location = (x, y)

        super().__init__(
            image_types_to_files,
            self.DEFAULT_HEALTH + additional_health,
            self.SPAWN_SPEED,
            spawn_location,
            weapons,
            image_scale=self.IMAGE_SCALE,
            special_event=special_event,
        )

        # Additional Grunt attributes
        self.moving_to_position = True
        self.stopping_point_y = None
        self.spawn_direction = spawn_direction
        self.strafe_direction = 1
        self.grunt_row = row
        self.overlapping_enemies = set()
        self.overlapping_upgrades = set()
        self.overlapping_player = set()
        self.frames_alive = 0
        self.strafe_switch_counter = randint(self.MIN_STRAFE, self.MAX_STRAFE)

        if self.spawn_direction == -1:
            self.rotate(90)

    def set_stopping_point_y(self, y_pos: float):
        """Sets the vertical position the grunt should stop at when moving to position"""
        self.stopping_point_y = y_pos

    def move_to_position(self):
        """When the grunt spawns, move to the row its assigned to"""
        if self.stopping_point_y is None:
            raise Exception('Must Call set_stopping_point_y')

        if self.spawn_direction == 1 and self.rect.bottom < self.stopping_point_y:
            self.rect.move_ip(0, self.spawn_direction * self.SPAWN_SPEED)
        elif self.spawn_direction == -1 and self.rect.top > self.stopping_point_y:
            self.rect.move_ip(0, self.spawn_direction * self.SPAWN_SPEED)
        else:
            self.moving_to_position = False

    def strafe(self, game_screen_rect: pg.Rect):
        """Once the grunt moves to position, it strafes back and forth horizontally across the screen."""
        self.rect.move_ip(self.strafe_direction * self.STRAFE_SPEED, 0)

        # randomly switch strafe direction
        if self.frames_alive > self.strafe_switch_counter:
            self.switch_strafe_direction()
            self.strafe_switch_counter = self.frames_alive + randint(self.MIN_STRAFE, self.MAX_STRAFE)

        # stay in bounds
        if self.rect.left < 0:
            self.rect.left = 0
            self.switch_strafe_direction()
        if self.rect.right > game_screen_rect.width:
            self.rect.right = game_screen_rect.width
            self.switch_strafe_direction()

    def switch_strafe_direction_on_enemy_collision(self, enemy: Enemy):
        """Switch strafe direction if the enemy collides with another enemy"""
        if self.moving_to_position:
            if isinstance(enemy, StraferGrunt):
                self.strafe_direction = -1 * enemy.strafe_direction
        elif enemy not in self.overlapping_enemies and not enemy.moving_to_position:
            self.switch_strafe_direction()
            self.overlapping_enemies.add(enemy)

    def switch_strafe_direction_on_upgrade_collision(self, upgrade: Enemy):
        """Switch strafe direction if the enemy collides with an upgrade"""
        if upgrade not in self.overlapping_upgrades:
            self.switch_strafe_direction()
            self.overlapping_upgrades.add(upgrade)

    def switch_strafe_direction_on_player_collision(self, player):
        """Switch strafe direction if the enemy collides with the Player"""
        if player not in self.overlapping_player:
            self.switch_strafe_direction()
            self.overlapping_player.add(player)

    def switch_strafe_direction(self):
        """Change strafing directions, which gets multiplied by the enemy's speed"""
        self.strafe_direction *= -1

    def update(self, *args, **kwargs):
        """
        Adds additional checks to the CharacterSprite's update function. Checks to see if the
        enemy is still colliding with any objects it previously collided with, and then remove
        them from its collision sets.
        """
        for enemy in self.overlapping_enemies.copy():
            if not pg.sprite.collide_rect(self, enemy):
                self.overlapping_enemies.remove(enemy)

        for upgrade in self.overlapping_upgrades.copy():
            if not pg.sprite.collide_rect(self, upgrade):
                self.overlapping_upgrades.remove(upgrade)

        for player in self.overlapping_player.copy():
            if not pg.sprite.collide_mask(self, player):
                self.overlapping_player.remove(player)

        super().update(*args, **kwargs)

    def move(self, game_screen_rect: pg.Rect):
        """First move the grunt to its row, then strafe back and forth"""
        self.frames_alive += 1
        if self.moving_to_position:
            self.move_to_position()
        else:
            self.strafe(game_screen_rect)

    def attack(self):
        """Don't attack while moving to position, and then just call the base class attack function"""
        if self.moving_to_position:
            return

        super().attack()


class SpinnerGrunt(Enemy):
    """
    A Spinner Grunt enemy spawns at a random point in the screen and rotates at that point, firing off projectiles.
    """
    DEFAULT_HEALTH = 30
    INITIAL_ROTATION = 0
    SPAWN_SPEED = 6
    ROTATION_AMOUNT = 1
    PROJECTILE_SPAWN_DELTA = 50
    IMAGE_SCALE = 1.5
    SPAWN_QUADRANT = ['left', 'right']
    SPAWN_OFFSCREEN_AMOUNT = 100
    SCREEN_BUFFER = 75
    SCORE = 25

    def __init__(
            self,
            weapons,
            spawn: Optional[List] = None,
            on_death_callbacks: Optional[List] = None,
            special_event: bool = False,
            in_menu: bool = False,
            additional_health: int = 0,
        ) -> None:
        image_types_to_files = {
            ImageType.DEFAULT: ['spaceships/spinner_grunt.png'],
            ImageType.HIT: ['spaceships/spinner_grunt_hit.png'],
        }

        spawn_location = self.set_spawn_information(spawn)

        super().__init__(
            image_types_to_files,
            self.DEFAULT_HEALTH + additional_health,
            self.SPAWN_SPEED,
            spawn_location,
            weapons,
            image_scale=self.IMAGE_SCALE,
            on_death_callbacks=on_death_callbacks,
            special_event=special_event,
            in_menu=in_menu,
        )

        # Additional SpinngerGrunt attributes
        self.moving_to_position = True

    def set_spawn_information(self, spawn: Optional[List] = None):
        """Calculate where the grunt should spawn from"""
        if spawn is not None:
            x, y = spawn[0], spawn[1]

            if x < SCREEN_WIDTH / 2:
                self.spawn_quadrant = 'left'
                spawn_location = (
                    -self.SPAWN_OFFSCREEN_AMOUNT, y
                )
            else:
                self.spawn_quadrant = 'right'
                spawn_location = (
                    SCREEN_WIDTH + self.SPAWN_OFFSCREEN_AMOUNT, y
                )

            self.stopping_point_x = x
        else:
            self.spawn_quadrant = randelem(self.SPAWN_QUADRANT)

            if self.spawn_quadrant == 'left':
                spawn_location = (
                    -self.SPAWN_OFFSCREEN_AMOUNT,
                    randint(self.SCREEN_BUFFER, SCREEN_HEIGHT - self.SCREEN_BUFFER),
                )

                self.stopping_point_x = spawn_location[0] + randint(300, 600)

            elif self.spawn_quadrant == 'right':
                spawn_location = (
                    SCREEN_WIDTH + self.SPAWN_OFFSCREEN_AMOUNT,
                    randint(self.SCREEN_BUFFER, SCREEN_HEIGHT - self.SCREEN_BUFFER),
                )

                self.stopping_point_x = spawn_location[0] - randint(300, 600)
                self.INITIAL_ROTATION = 180

        return spawn_location

    def move_to_position(self):
        """Move the grunt to its spawn position on the screen"""
        if self.stopping_point_x is None:
            raise AttributeError('Must set stopping_point_x')

        if self.spawn_quadrant == 'left':
            if self.rect.right < self.stopping_point_x:
                self.rect.move_ip(self.SPAWN_SPEED, 0)
            else:
                self.moving_to_position = False
        elif self.spawn_quadrant == 'right':
            if self.rect.left > self.stopping_point_x:
                self.rect.move_ip(-self.SPAWN_SPEED, 0)
            else:
                self.moving_to_position = False

    def move(self, *args, **kwargs):
        """Handle moving to position, then just rotate the grunt"""
        if self.moving_to_position:
            self.move_to_position()
        else:
            self.rotate(self.current_rotation - self.ROTATION_AMOUNT)

    def attack(self):
        """Don't attack while moving to position, and then just call the base class attack function"""
        if self.moving_to_position:
            return

        super().attack()
