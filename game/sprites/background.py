# stdlib imports
import random

# 3rd-party imports
import pygame


class Star(pygame.sprite.Sprite):
    STAR_TYPES = ['tiny', 'small',] # 'medium', 'large']
    NUM_STARS_PER_EVENT = 5

    def __init__(self, screen_rect: pygame.Rect, on_load: bool = False) -> None:
        super().__init__()
        star_type = self.STAR_TYPES[random.randint(0, 1)]
        image = pygame.image.load(f"assets/kenny-space/PNG/Default/star_{star_type}.png").convert()
        self.surf = pygame.transform.scale_by(pygame.transform.rotate(image, random.randint(0, 359)), random.random())
        # self.surf.set_colorkey((0, 0, 0), RLEACCEL)
        self.surf.set_alpha(random.randint(10, 255))

        color_image = pygame.Surface(self.surf.get_size()).convert_alpha()
        color_image.fill((random.randint(0, 255), random.randint(0, 255), random.randint(0, 255), random.randint(0, 255)))
        self.surf.blit(color_image, (0,0), special_flags=pygame.BLEND_RGBA_MULT)

        if on_load:
            self.rect = self.surf.get_rect(
                center=(
                    random.randint(0, screen_rect.width),
                    random.randint(0, screen_rect.height),
                )
            )
        else:
            self.rect = self.surf.get_rect(
                center=(
                    random.randint(0, screen_rect.width),
                    random.randint(-100, -20),
                )
            )

    def update(self, screen_rect: pygame.Rect):
        self.rect.move_ip(0, 3)
        if self.rect.top > screen_rect.height:
            self.kill()
