# 3rd-party imports
import pygame as pg
from pygame.locals import (
    K_UP,
    K_DOWN,
    K_ESCAPE,
    K_RETURN,
    KEYDOWN,
    QUIT,
)

# project imports
from defs import FPS, SCREEN_WIDTH, GameState
from menus.base import Menu, clean_up_menu
import sprites.groups as groups
import sprites.background as background
from sprites.player import create_player
from text import Text, SelectableText

# Define text
CREDITS_TEXT = Text(
    'All music, programming, artwork, and game design by',
    'spacemono', 36, 'white', (SCREEN_WIDTH/2, 300),
    outline_size=2,
)
AUTHOR_TEXT = Text(
    'Gregg Oliva',
    'spacemono', 36, 'white', (SCREEN_WIDTH/2, 360),
    outline_size=2,
)
APPRECIATION_TEXT = Text(
    'Thank you for playing',
    'spacemono', 28, 'cadetblue1', (SCREEN_WIDTH/2, 460),
    outline_size=2,
)
MENU_TEXT = SelectableText(
    'BACK TO MENU', 'spacemono', 36, 'white', (SCREEN_WIDTH/2, 650),
     outline_size=2, transition_state=GameState.MAIN_MENU,
)


# Credits Screen Menu
CREDITS_MENU = Menu(GameState.CREDITS)
CREDITS_MENU.add_text(
    CREDITS_TEXT,
    AUTHOR_TEXT,
    APPRECIATION_TEXT,
    MENU_TEXT,
)


def run_credits_menu(game_clock: pg.time.Clock, main_screen: pg.Surface) -> GameState:
    next_state = None
    screen_rect = main_screen.get_rect()

    CREDITS_MENU.add_screen(menu_screen=main_screen)
    CREDITS_MENU.init_menu_select()

    # Add stars to the background
    for _ in range(background.Star.NUM_ON_LOAD):
        star = background.Star(screen_rect, on_load=True)
        groups.stars.add(star)
        groups.all_sprites.add(star)

    player = create_player(screen_rect, in_menu=True)

    # Set up player animations
    frame_counter = 0
    weapon_id = 0
    attack_enabled = True
    swap_weapons = False

    credits_menu_loop = True
    while credits_menu_loop:
        # event handler
        for event in pg.event.get():
            if event.type == KEYDOWN:
                if event.key == K_ESCAPE:
                    credits_menu_loop = False
                    next_state = GameState.QUIT

                if event.key == K_RETURN:
                    credits_menu_loop = False
                    next_state = CREDITS_MENU.select_text()

                if event.key == K_DOWN:
                    CREDITS_MENU.move_text_cursor(1)

                if event.key == K_UP:
                    CREDITS_MENU.move_text_cursor(-1)

            elif event.type == QUIT:
                credits_menu_loop = False
                next_state = GameState.QUIT

        # update background
        groups.stars.update(screen_rect, in_menu=True)
        player.move_in_menu(screen_rect)
        if swap_weapons:
            weapon_id = (weapon_id + 1) % len(player.weapons)
            player.switch_weapon(weapon_id)
            swap_weapons = False
        if attack_enabled:
            player.attack(in_menu=True)
        groups.player_projectiles.update(screen_rect)

        # draw background
        main_screen.fill("black")

        # draw all sprites
        for sprite in groups.all_sprites:
            main_screen.blit(sprite.surf, sprite.rect)

        # draw text
        CREDITS_MENU.update()

        # render screen
        pg.display.flip()

        # lock FPS
        game_clock.tick(FPS)

        # Update frame counter for attack animations
        frame_counter += 1
        if frame_counter % 60 == 0:
            attack_enabled = not attack_enabled
        if frame_counter % 180 == 0:
            swap_weapons = True

    clean_up_menu()
    return next_state