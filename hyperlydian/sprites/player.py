# stdlib imports
from typing import Optional, Union

# 3rd-party imports
import pygame as pg
from pygame.locals import (
    RLEACCEL,
    K_UP,
    K_DOWN,
    K_LEFT,
    K_RIGHT,
)


class Player(pg.sprite.Sprite):
    DEFAULT_HEALTH = 3
    DEFAULT_SPEED = 5

    def __init__(self, game_screen_rect: pg.Rect, primary_attack) -> None:
        super().__init__()
        self.surf = pg.image.load("assets/kenny-space/PNG/Default/ship_L.png").convert()
        self.surf.set_colorkey((0, 0, 0), RLEACCEL)

        color_image = pg.Surface(self.surf.get_size()).convert_alpha()
        color_image.fill((255, 255, 0))
        self.surf.blit(color_image, (0,0), special_flags=pg.BLEND_RGB_MULT)

        self.rect = self.surf.get_rect(
            center=(
                game_screen_rect.width / 2, game_screen_rect.height - 100
            )
        )

        # Player attributes
        self.max_health = self.DEFAULT_HEALTH
        self.curr_health = self.max_health
        self.movement_speed = self.DEFAULT_SPEED
        self.primary_attack = primary_attack

    def update(self, pressed_keys, game_screen_rect: pg.Rect):
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

    def take_damage(self, damage: int) -> None:
        self.curr_health -= damage
        if self.is_dead():
            self.kill()

    def is_dead(self):
        return self.curr_health <= 0

    def light_attack(self):
        attack_center = (self.rect.centerx, self.rect.top)
        self.primary_attack.attack(
            object_center_position=attack_center,
        )

    def heavy_attack(self):
        pass

    def special_ability(self):
        pass
