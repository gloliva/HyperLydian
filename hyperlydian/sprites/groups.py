# 3rd-party imports
from pygame.sprite import Group, LayeredUpdates as LayeredGroup

# project imports
from sprites.enemies import StraferGrunt


class StraferGruntGroup(Group):
    MAX_GRUNTS_PER_ROW = 3
    MAX_ROWS = 3
    ROW_START = 150
    ROW_SPACING = 1.25

    def __init__(self) -> None:
        super().__init__()
        self.max_rows = self.MAX_ROWS
        self.max_grunts_per_row = self.MAX_GRUNTS_PER_ROW

        # Manage grunt arrangement
        self.grunts_per_row = [0 for _ in range(self.max_rows)]
        self.curr_row_to_fill = 0

    def add(self, *grunts: StraferGrunt) -> None:
        """Overrides AbstractGroup `add` method to handle row assignment
        """
        for grunt in grunts:
            super().add(grunt)
            self.grunts_per_row[self.curr_row_to_fill] += 1

    def remove_internal(self, grunt: StraferGrunt) -> None:
        """Overrides AbstractGroup `remove_internal` method to handle
        removing grunt from a row.
        """
        self.grunts_per_row[grunt.grunt_row] -= 1
        super().remove_internal(grunt)
        self.update_curr_row()

    def update_curr_row(self):
        for row, num_grunts in enumerate(self.grunts_per_row):
            if num_grunts < self.max_grunts_per_row:
                self.curr_row_to_fill = row
                break

    def is_full(self):
        return sum(self.grunts_per_row) >= self.max_grunts_per_row * self.max_rows


# Sprite Groups
# Enemies
all_enemies = Group()
grunt_enemies = StraferGruntGroup()
enemy_projectiles = Group()

# Player
player_projectiles = Group()

# Background
stars = Group()

# All
all_sprites = LayeredGroup()
