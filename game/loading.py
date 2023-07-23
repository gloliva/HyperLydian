# stdlib imports
import asyncio
from subprocess import Popen

# 3rd-party imports
import pygame as pg
from pythonosc.osc_server import AsyncIOOSCUDPServer
from pythonosc.dispatcher import Dispatcher

# project imports
from defs import (
    ADDRESS,
    INCOMING_PORT,
    GameState,
    MAX_APPLICATION_PATH,
    FPS,
)
from debug import DISABLE_OPENING_MAX_APPLICATION
from sprites.base import construct_asset_full_path
from text import Text


# Max MSP Application
MAX_APP = None
MAX_OPEN = False
MAX_FULLY_LOADED = False

MAX_OPENED_ADDRESS = '/max_opened'
MAX_LOADED_ADDRESS = '/max_loaded'

MAXIMUM_LOADTIME = 30

# Loading Screen Text
LOADING_STR = 'LOADING'
MAX_OPEN_STR = 'Opening Max/MSP'
MAX_LOAD_STR = 'Starting Music'
LOADING_DOT_STR = '.'
PERCENT_LOADED_STR = '{0}% Loaded'

LOADING_TEXT = Text(LOADING_STR, 'spacemono', 48, 'white')
LOADING_DOT_TEXT = Text(LOADING_DOT_STR, 'spacemono', 48, 'white')
PERCENT_TEXT = Text(PERCENT_LOADED_STR, 'spacemono', 48, 'white')

LOADING_SCREEN_TEXT = [
    LOADING_TEXT,
    LOADING_DOT_TEXT,
    PERCENT_TEXT,
]


def loading_screen(game_clock: pg.time.Clock, main_screen: pg.Surface) -> None:
    asyncio.run(open_max_application(game_clock, main_screen))
    return GameState.MAIN_MENU


def max_loaded_handler(address, *args):
    global MAX_FULLY_LOADED
    MAX_FULLY_LOADED = True


def max_opened_handler(address, *args):
    global MAX_OPEN
    MAX_OPEN = True


async def open_max_application(game_clock: pg.time.Clock, main_screen: pg.Surface):
    global MAX_APP

    if DISABLE_OPENING_MAX_APPLICATION:
        return

    # Set up OSC Server
    dispatcher = Dispatcher()
    dispatcher.map(MAX_OPENED_ADDRESS, max_opened_handler)
    dispatcher.map(MAX_LOADED_ADDRESS, max_loaded_handler)
    server = AsyncIOOSCUDPServer((ADDRESS, INCOMING_PORT), dispatcher, asyncio.get_event_loop())
    transport, _ = await server.create_serve_endpoint()

    # Open Max application
    args = ['open', MAX_APPLICATION_PATH]
    MAX_APP = Popen(args)

    # show studio logo
    show_studio_logo_screen(game_clock, main_screen)

    # Update load screen and wait for Max to finish loading
    await wait_for_max_to_load(main_screen)

    # Close the server
    transport.close()


def show_studio_logo_screen(game_clock: pg.time.Clock, main_screen: pg.Surface):
    screen_rect = main_screen.get_rect()
    studio_logo = StudioLogo(screen_rect, screen_rect.height)
    alpha_value = 255
    screentime = 0

    while screentime < studio_logo.TOTAL_SCREEN_TIME:
        # draw background
        main_screen.fill("black")

        # draw studio logo
        if screentime < studio_logo.FADE_IN_SECONDS:
            alpha_value = int((screentime / 2.0) * 255)
            alpha_value = max(0, min(255, alpha_value))
        elif screentime > (studio_logo.TOTAL_SCREEN_TIME - studio_logo.FADE_OUT_SECONDS):
            alpha_value = int((studio_logo.FADE_OUT_SECONDS - (studio_logo.TOTAL_SCREEN_TIME - screentime)) * 255)
            alpha_value = 255 - (max(0, min(255, alpha_value)))

        studio_logo.surf.set_alpha(alpha_value)
        main_screen.blit(studio_logo.surf, studio_logo.rect)

        # render screen
        pg.display.flip()

        # lock FPS
        screentime += game_clock.tick(FPS) / 1000


async def wait_for_max_to_load(main_screen: pg.Surface):
    # Set screen position for loading screen text
    screen_rect = main_screen.get_rect()
    text_height_position = screen_rect.height - 50

    LOADING_TEXT.update_position(
        {'bottomleft': (50, text_height_position)}
    )
    LOADING_DOT_TEXT.update_position(
        {'bottomleft': (LOADING_TEXT.rect.width + 80, text_height_position)}
    )
    PERCENT_TEXT.update_position(
        {'bottomright': (screen_rect.width - 50, text_height_position)}
    )

    # Wait for Max to Open
    elapsed_load_time = 0
    while not MAX_OPEN:
        main_screen.fill("black")

        # update loading dots
        loading_dot_str = LOADING_DOT_STR * ((elapsed_load_time % 3) + 1)
        LOADING_DOT_TEXT.update_text(loading_dot_str)

        # update loading percent
        percent = int((elapsed_load_time / MAXIMUM_LOADTIME) * 100)
        PERCENT_TEXT.update_text(PERCENT_LOADED_STR.format(percent))

        # Draw text to the screen
        for text in LOADING_SCREEN_TEXT:
            main_screen.blit(text.surf, text.rect)

        # render screen
        pg.display.flip()

        # Increment waiting time
        elapsed_load_time += 1
        await asyncio.sleep(1)

    PERCENT_TEXT.update_text(PERCENT_LOADED_STR.format(99))

    # Wait for Max to loadbang everything
    while not MAX_FULLY_LOADED:
        main_screen.fill("black")
        loading_dot_str = LOADING_DOT_STR * ((elapsed_load_time % 3) + 1)
        LOADING_DOT_TEXT.update_text(loading_dot_str)

        for text in LOADING_SCREEN_TEXT:
            main_screen.blit(text.surf, text.rect)

        # render screen
        pg.display.flip()

        # Increment waiting time
        elapsed_load_time += 1
        await asyncio.sleep(1)


class StudioLogo(pg.sprite.Sprite):
    TOTAL_SCREEN_TIME = 6
    FADE_IN_SECONDS = 2
    FADE_OUT_SECONDS = 2

    def __init__(self, screen_rect: pg.Rect, scale_resolution: int) -> None:
        super().__init__()
        image_file = construct_asset_full_path('logo/hello_drama_studios.png')
        image = pg.image.load(image_file).convert()
        self.surf = pg.transform.scale(image, (scale_resolution, scale_resolution))
        self.rect = self.surf.get_rect(
            center=screen_rect.center
        )
