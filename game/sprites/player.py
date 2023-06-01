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
from events import Event
from sprites.base import Sprite


class Player(Sprite):
    DEFAULT_HEALTH = 5
    DEFAULT_SPEED = 5
    ROTATION_AMOUNT = 2
    DRAW_LAYER = 2

    def __init__(self, game_screen_rect: pg.Rect, primary_attack) -> None:
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
            primary_attack,
            image_scale=1.5,
        )

        # Additional Player attributes
        self.max_health = self.DEFAULT_HEALTH
        self.current_rotation = 0

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

    def rotate(self, rotation_angle: int):
        self.current_rotation = rotation_angle
        image = self.images[self.curr_image_id]
        self.surf = pg.transform.rotate(image, rotation_angle)

        # make sure image retains its previous center
        current_image_center = self.rect.center
        self.rect = self.surf.get_rect()
        self.rect.center = current_image_center

        # generate new mask
        self.mask = pg.mask.from_surface(self.surf)

    def take_damage(self, damage: int) -> None:
        super().take_damage(damage)
        if self.is_dead():
            pg.event.post(Event.PLAYER_DEATH)

    def light_attack(self):
        attack_center = (self.rect.centerx, self.rect.centery)
        movement_angle = 180 + self.current_rotation
        rotation_angle = self.current_rotation

        self.primary_attack.attack(
            projectile_center_position=attack_center,
            movement_angle=movement_angle,
            rotation_angle=rotation_angle
        )

    def heavy_attack(self):
        pass

    def special_ability(self):
        pass
