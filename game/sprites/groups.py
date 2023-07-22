import math
from random import randint
from typing import List, Optional, Tuple

# 3rd-party imports
from pygame import Rect
from pygame.sprite import Group, LayeredUpdates as LayeredGroup

# project imports
from attacks import Weapon
from defs import SCREEN_HEIGHT
from sprites.enemies import StraferGrunt, SpinnerGrunt
import sprites.projectiles as projectiles
import sprites.upgrades as upgrades
from stats import stat_tracker


# Custom Enemy Groups
class StraferGruntGroup(Group):
    MAX_GRUNTS_PER_ROW = 3
    MAX_ROWS = 2
    ROW_START = 150
    ROW_SPACING = 1.25

    def __init__(self) -> None:
        super().__init__()
        self.max_rows = self.MAX_ROWS
        self.max_grunts_per_row = self.MAX_GRUNTS_PER_ROW

        # Manage grunt arrangement
        self.top_grunts_per_row = [0 for _ in range(self.max_rows)]
        self.bottom_grunts_per_row = [0 for _ in range(self.max_rows)]
        self.top_row_to_fill = 0
        self.bottom_row_to_fill = 0

    @property
    def is_full(self):
        total_grunts = sum(self.top_grunts_per_row) + sum(self.bottom_grunts_per_row)
        return total_grunts >= self.max_grunts_per_row * self.max_rows

    def create_new_grunt(self) -> StraferGrunt:
        # Create grunt weapon
        grunt_weapon = Weapon(
            projectiles.EnemyQuarterRest,
            enemy_projectiles,
            all_sprites,
            Weapon.INFINITE_AMMO,
            damage=1,
            attack_speed=randint(4, 7),
            rate_of_fire=randint(500, 2000),
            projectile_scale=0.35,
        )

        # Create grunt object and set stop position
        player_vertical_half = stat_tracker.player__vertical_half.text
        grunt_row = self.top_row_to_fill if player_vertical_half == 'bottom' else self.bottom_row_to_fill
        spawn_direction = 1 if player_vertical_half == 'bottom' else -1

        grunt = StraferGrunt([grunt_weapon], grunt_row, spawn_direction)
        grunt_y_position = (
            self.ROW_START +
            (grunt_row * grunt.rect.height * self.ROW_SPACING)
        )

        if player_vertical_half == 'top':
            grunt_y_position = SCREEN_HEIGHT - grunt_y_position
        grunt.set_stopping_point_y(grunt_y_position)

        # Add grunt to all groups and update row information
        self.add(grunt)
        self.update_curr_row()
        all_enemies.add(grunt)
        all_sprites.add(grunt)

        return grunt

    def add(self, *grunts: StraferGrunt) -> None:
        """Overrides AbstractGroup `add` method to handle row assignment
        """
        for grunt in grunts:
            super().add(grunt)
            if stat_tracker.player__vertical_half.text == 'bottom':
                self.top_grunts_per_row[self.top_row_to_fill] += 1
            else:
                self.bottom_grunts_per_row[self.bottom_row_to_fill] += 1

    def remove_internal(self, grunt: StraferGrunt) -> None:
        """Overrides AbstractGroup `remove_internal` method to handle
        removing grunt from a row.
        """
        if grunt.spawn_direction == 1:
            self.top_grunts_per_row[grunt.grunt_row] -= 1
        else:
            self.bottom_grunts_per_row[grunt.grunt_row] -= 1

        super().remove_internal(grunt)
        self.update_curr_row()

    def update_curr_row(self):
        for row, num_grunts in enumerate(self.top_grunts_per_row):
            if num_grunts < self.max_grunts_per_row:
                self.top_row_to_fill = row
                break

        for row, num_grunts in enumerate(self.bottom_grunts_per_row):
            if num_grunts < self.max_grunts_per_row:
                self.bottom_row_to_fill = row
                break

    def set_row_limits(self, new_max_rows: int, new_max_grunts_per_row: int) -> None:
        self.max_rows = new_max_rows
        self.max_grunts_per_row = new_max_grunts_per_row


class SpinnerGruntGroup(Group):
    INITIAL_MAX_GRUNTS = 2
    INITIAL_ELLIPSE_GRUNTS = 3

    @classmethod
    def get_oval_starting_positions(cls, num_grunts: int, screen_rect: Rect):
        angle_increment = (2 * math.pi) / num_grunts

        return [
            [
                (screen_rect.centerx - 350) * math.cos(idx * angle_increment) + screen_rect.centerx,
                (screen_rect.centery - 50) * math.sin(idx * angle_increment) + screen_rect.centery,
            ] for idx in range(num_grunts)
        ]

    def __init__(self) -> None:
        super().__init__()

        self.grunts_on_screen = 0
        self.max_grunts = self.INITIAL_MAX_GRUNTS
        self.num_grunts_per_ellipse = self.INITIAL_ELLIPSE_GRUNTS

    @property
    def is_full(self):
        return self.grunts_on_screen >= self.max_grunts

    def create_new_grunt(
        self,
        spawn: Optional[List] = None,
        on_death_callbacks: Optional[List] = None,
        special_event: bool = False,
        ) -> SpinnerGrunt:
        # Create grunt weapon
        variant_number = randint(0, projectiles.EnemyAccidental.NUM_VARIANTS - 1)
        grunt_weapon = Weapon(
            projectiles.EnemyAccidental,
            enemy_projectiles,
            all_sprites,
            Weapon.INFINITE_AMMO,
            damage=1,
            attack_speed=4,
            rate_of_fire=300,
            projectile_scale=0.3,
            projectile_variant_number=variant_number,
        )

        # Create grunt object
        args = [[grunt_weapon]]
        if spawn is not None:
            args.append(spawn)
        if on_death_callbacks is not None:
            args.append(on_death_callbacks)
        grunt = SpinnerGrunt(*args, special_event=special_event)

        # Add grunt to all groups
        self.add(grunt)
        all_enemies.add(grunt)
        all_sprites.add(grunt)
        return grunt

    def add(self, *grunts: SpinnerGrunt) -> None:
        for grunt in grunts:
            super().add(grunt)
            self.grunts_on_screen += 1

    def remove_internal(self, grunt: SpinnerGrunt) -> None:
        super().remove_internal(grunt)
        self.grunts_on_screen -= 1

    def change_max_grunts(self, max_delta: int):
        self.max_grunts += max_delta
        if self.max_grunts < 0:
            self.max_grunts = 0

    def set_max_grunts(self, max_grunts: int):
        self.max_grunts = max_grunts


# Custom Upgrade Groups
class HealthUpgradeGroup(Group):
    WEAK_THRESHOLD = 5
    MAX_THRESHOLD = 20

    def __init__(self) -> None:
        super().__init__()

        # Group properties
        self.enemy_base_for_small = 0
        self.enemy_base_for_max = 0

    def create_new_health_upgrade_on_probability(self, center_position: Tuple[int, int]):
        curr_enemies_killed = stat_tracker.enemies__killed
        if curr_enemies_killed > (self.enemy_base_for_max + self.MAX_THRESHOLD):
            if upgrades.MaxHealth.should_drop():
                health_upgrade = upgrades.MaxHealth(center_position)
                self.add(health_upgrade)
                all_sprites.add(health_upgrade)
                self.enemy_base_for_max = curr_enemies_killed
                stat_tracker.upgrades__total_dropped += 1
        if curr_enemies_killed > (self.enemy_base_for_small + self.WEAK_THRESHOLD):
            if upgrades.SmallHealth.should_drop():
                health_upgrade = upgrades.SmallHealth(center_position)
                self.add(health_upgrade)
                all_sprites.add(health_upgrade)
                self.enemy_base_for_small = curr_enemies_killed
                stat_tracker.upgrades__total_dropped += 1


# Sprite Groups
# Enemies
all_enemies = Group()
strafer_grunt_enemies = StraferGruntGroup()
spinner_grunt_enemies = SpinnerGruntGroup()
enemy_projectiles = Group()

# Player
player_projectiles = Group()

# Upgrades
health_upgrades = HealthUpgradeGroup()

# Background
notes = Group()
staff = Group()

# All
all_sprites = LayeredGroup()
