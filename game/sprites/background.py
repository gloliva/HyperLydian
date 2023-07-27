# stdlib imports
from random import randint, uniform, choice as randelem
from typing import Optional, List, Tuple

# 3rd-party imports
import pygame as pg

# project imports
from sprites.base import construct_asset_full_path


class Background(pg.sprite.Sprite):
    DRAW_LAYER = 0
    ROTATION_AMOUNT = 1

    def __init__(self) -> None:
        super().__init__()

        self.current_rotation = 0
        self._layer = self.DRAW_LAYER

    def update(self, screen_rect: pg.Rect):
        self.rect.move_ip(0, 2)
        if self.rect.top > screen_rect.height:
            self.kill()

    def rotate(self, rotation_angle: int):
        self.current_rotation = rotation_angle % 360
        self.surf = pg.transform.rotate(self.image, self.current_rotation + rotation_angle)

        # make sure image retains its previous center
        current_image_center = self.rect.center
        self.rect = self.surf.get_rect()
        self.rect.center = current_image_center


class Note(Background):
    NUM_NOTES_PER_EVENT = 2
    NUM_NOTES_PER_MENU_EVENT = 10
    NUM_ON_LOAD = 60
    NUM_VARIANTS = 6
    DRAW_LAYER = 1
    MENU_SPAWN_SIDE = ['left', 'top', 'right', 'bottom']
    NUM_MOVEMENT_POINTS = 20
    ALPHA_BOUNDS = [100, 200]
    SCALE_BOUNDS = [0.15, 1]

    @staticmethod
    def interpolate_between_points(start: pg.Rect, end: pg.Rect, num_points: int) -> List[Tuple[int, int]]:
        step_x = (end.centerx - start.centerx) / (num_points - 1)
        step_y = (end.centery - start.centery) / (num_points - 1)

        # Generate the list of equidistant points
        equidistant_points = [
            (start.centerx + curr_step * step_x, start.centery + curr_step * step_y)
            for curr_step in range(num_points)
        ]

        return equidistant_points

    @staticmethod
    def interpolate_between_values(start: float, end: float, num_points) -> List[float]:
        step = (end - start) / (num_points - 1)

        equidistant_values = [
            start + curr_step * step
            for curr_step in range(num_points)
        ]

        return equidistant_values

    def __init__(self, screen_rect: pg.Rect, on_load: bool = False, in_menu: bool = False) -> None:
        super().__init__()
        note_type = randint(0, self.NUM_VARIANTS - 1)
        image_file = construct_asset_full_path(f"backgrounds/notes/note_{note_type}.png")
        self.image = pg.image.load(image_file).convert()

        # Initial rotation
        self.image = pg.transform.rotate(self.image, randint(0, 359))
        if not in_menu:
            self.image = pg.transform.scale_by(self.image, uniform(0.05, 0.5))
            self.image.set_alpha(randint(10, 255))

        # Save image to reference when rotating / scaling
        self.surf = self.image

        # Set note color
        color_image = pg.Surface(self.surf.get_size()).convert_alpha()
        color_image.fill((randint(0, 255), randint(0, 255), randint(0, 255), randint(0, 255)))
        self.surf.blit(color_image, (0,0), special_flags=pg.BLEND_RGBA_MULT)

        # Spawn randomly across the screen
        if on_load:
            self.rect = self.surf.get_rect(
                center=(
                    randint(1, screen_rect.width - 1),
                    randint(1, screen_rect.height - 1),
                )
            )
        # Spawn along the edges of the screen
        elif in_menu:
            spawn_side = randelem(self.MENU_SPAWN_SIDE)
            if spawn_side == 'left':
                x, y = 20, randint(20, screen_rect.height - 20)
            elif spawn_side == 'top':
                x, y = randint(20, screen_rect.width - 20), 20
            elif spawn_side == 'right':
                x, y = screen_rect.width - 20, randint(20, screen_rect.height - 20)
            else:
                x, y = randint(20, screen_rect.width - 20), screen_rect.height - 20
            self.rect = self.surf.get_rect(
                center=(x, y)
            )
        # Spawn outside the screen
        else:
            self.rect = self.surf.get_rect(
                center=(
                    randint(0, screen_rect.width),
                    randint(-100, -20),
                )
            )

        # Menu animation parameters
        self.movement_counter = 0
        self.spawn_center = self.rect
        alpha_values = self.interpolate_between_values(
            self.ALPHA_BOUNDS[0], self.ALPHA_BOUNDS[1], self.NUM_MOVEMENT_POINTS
        )
        scale_values = self.interpolate_between_values(
            self.SCALE_BOUNDS[0], self.SCALE_BOUNDS[1], self.NUM_MOVEMENT_POINTS
        )

        self.alpha_values = alpha_values[::-1]
        self.scale_values = scale_values[::-1]

    def update(
            self,
            screen_rect: pg.Rect,
            in_menu: bool = False,
            blackhole_rect: Optional[pg.Rect] = None
        ) -> None:
        if in_menu:
            if self.movement_counter < self.NUM_MOVEMENT_POINTS - 1:
                self.move_in_menu(blackhole_rect)
                self.rotate(self.current_rotation + self.ROTATION_AMOUNT)
                self.fade_out()
                self.movement_counter += 1
            else:
                self.kill()
        else:
            super().update(screen_rect)

    def move_in_menu(self, blackhole_rect: pg.Rect) -> None:
        path = self.interpolate_between_points(self.spawn_center, blackhole_rect, self.NUM_MOVEMENT_POINTS)
        self.rect.center = path[self.movement_counter]

    def fade_out(self) -> None:
        alpha_value = self.alpha_values[self.movement_counter]
        scale_value = self.scale_values[self.movement_counter]
        prev_center = self.rect.center
        self.surf = pg.transform.scale_by(self.image, scale_value)
        self.surf.set_alpha(alpha_value)
        self.rect = self.surf.get_rect(center=prev_center)


class BrokenNote(Background):
    NUM_ON_LOAD = 80
    NUM_VARIANTS = 12
    DIRECTION = ['left', 'top', 'right', 'bottom']
    FRAME_THRESHOLD = 360
    DRAW_LAYER = 1

    def __init__(self, screen_rect: pg.Rect) -> None:
        super().__init__()
        note_type = randint(0, self.NUM_VARIANTS - 1)
        image_file = construct_asset_full_path(f"backgrounds/notes/broken_note_{note_type}.png")
        image = pg.image.load(image_file).convert_alpha()
        self.image = pg.transform.scale_by(pg.transform.rotate(image, randint(0, 359)), uniform(0.05, 0.4))
        self.surf = self.image
        self.surf.set_alpha(randint(100, 240))

        self.rect = self.surf.get_rect(
            center=(
                randint(1, screen_rect.width - 1),
                randint(1, screen_rect.height - 1),
            )
        )

        # Movement parameters
        self.prev_x = 0
        self.prev_y = 0
        self.frame_counter = 0
        self.direction = randelem(self.DIRECTION)
        self.rotation_amount = uniform(0.1, 1.5) * randelem([1, -1])

    def update(self, screen_rect: pg.Rect) -> None:
        self.drift(screen_rect)
        self.rotate(self.current_rotation + self.rotation_amount)

    def drift(self, screen_rect: pg.Rect) -> None:
        should_update = (self.frame_counter % self.FRAME_THRESHOLD) == 0

        if self.direction == 'left':

            x, y = -1, randint(0, 1) if should_update else self.prev_y
        elif self.direction == 'right':
            x, y = 1, randint(-1, 0) if should_update else self.prev_y
        elif self.direction == "top":
            x, y = randint(-1, 0) if should_update else self.prev_x, -1
        else:
            x, y = randint(0, 1) if should_update else self.prev_x, 1
        self.rect.move_ip(x, y)

        self.prev_x, self.prev_y = x, y
        self.frame_counter += 1

        # don't move out of bounds
        if self.rect.left < -10:
            self.rect.left = -10
            self.direction = 'right'
            self.rotation_amount *= -1
        if self.rect.right > screen_rect.width + 20:
            self.rect.right = screen_rect.width + 20
            self.direction = 'left'
            self.rotation_amount *= -1
        if self.rect.top <= -10:
            self.rect.top = -10
            self.direction = 'bottom'
            self.rotation_amount *= -1
        if self.rect.bottom > screen_rect.height + 20:
            self.rect.bottom = screen_rect.height + 20
            self.direction = 'top'
            self.rotation_amount *= -1


class Star(Background):
    NUM_ON_LOAD = 800
    NUM_STARS_PER_EVENT = 2
    DRAW_LAYER = 0
    STAR_TYPES = ['star_tiny', 'star_small']
    ALPHA_VALUES = [50, 50, 50, 50, 100, 150, 200, 255, 200, 100]

    def __init__(self, screen_rect: pg.Rect, on_load: bool = False) -> None:
        super().__init__()
        star_type = randelem(self.STAR_TYPES)
        image_file = construct_asset_full_path(f"backgrounds/stars/{star_type}.png")
        image = pg.image.load(image_file).convert_alpha()
        self.image = pg.transform.scale_by(pg.transform.rotate(image, randint(0, 359)), uniform(0.05, 0.4))
        self.surf = self.image

        # Set star rect
        if on_load:
            self.rect = self.surf.get_rect(
                center=(
                    randint(1, screen_rect.width - 1),
                    randint(-100, screen_rect.height - 1),
                )
            )
        else:
            self.rect = self.surf.get_rect(
                center=(
                    randint(1, screen_rect.width - 1),
                    -100,
                )
            )

        # star attributes
        self.curr_alpha_id = 0
        self.num_alpha_values = len(self.ALPHA_VALUES)
        self.twinkle_increment = uniform(0.1, 0.5)

    def update(self, screen_rect: pg.Rect, in_menu: bool = False):
        self.show_twinkle_animation()
        if not in_menu:
            super().update(screen_rect)

    def show_twinkle_animation(self) -> None:
        self.curr_alpha_id = (self.curr_alpha_id + self.twinkle_increment) % self.num_alpha_values
        alpha_id = int(self.curr_alpha_id)
        alpha_value = self.ALPHA_VALUES[alpha_id]
        self.surf.set_alpha(alpha_value)


class BlackHole(Background):
    ROTATION_AMOUNT = 4
    MOVEMENT_VALUES = [(1, 1), (-1, 1), (-1, -1), (1, -1)]
    MOVEMENT_INCREMENT = 0.05
    DRAW_LAYER = 1

    def __init__(self, screen_rect: pg.Rect) -> None:
        super().__init__()
        image_file = construct_asset_full_path(f"backgrounds/black_hole.png")
        self.image = pg.transform.scale_by(pg.image.load(image_file).convert_alpha(), 4)
        self.surf = self.image
        self.rect = self.surf.get_rect(center=(screen_rect.centerx, screen_rect.centery + 150))
        self.surf.set_alpha(150)

        # Animation Values
        self.movement_id = 0
        self.num_movement_values = len(self.MOVEMENT_VALUES)
        self.current_rotation = 0

    def update(self, screen_rect: pg.Rect, in_menu: bool = False):
        self.rotate(self.current_rotation - self.ROTATION_AMOUNT)
        if in_menu:
            self.move_in_menu()
        else:
            super().update(screen_rect)

    def move_in_menu(self) -> None:
        self.movement_id = (self.movement_id + self.MOVEMENT_INCREMENT) % self.num_movement_values
        move_id = int(self.movement_id)
        x, y = self.MOVEMENT_VALUES[move_id]
        self.rect.move_ip(x, y)


class DestroyedShip(Background):
    ROTATION_AMOUNT = 0.1
    DRAW_LAYER = 3

    def __init__(self, screen_rect: pg.Rect) -> None:
        super().__init__()
        image_file = construct_asset_full_path(f"spaceships/player/destroyed_player_ship.png")
        image = pg.image.load(image_file).convert_alpha()
        self.image = pg.transform.scale_by(pg.transform.rotate(image, randint(0, 359)), 5)
        self.surf = self.image

        self.rect = self.surf.get_rect(
            center=(300, screen_rect.height - 200)
        )

    def update(self, _: pg.Rect):
        self.rotate(self.current_rotation + self.ROTATION_AMOUNT)
