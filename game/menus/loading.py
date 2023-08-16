"""
This module defines everything needed for the LOADING menu.

This is where the Max Application is opened and polled to see if it is finished loading.
Once the Max Application reports it is done loading, this menu transfers to the MAIN MENU.

Author: Gregg Oliva
"""

# stdlib imports
import asyncio
import os
from subprocess import Popen
import sys

# 3rd-party imports
import pygame as pg
from pygame.locals import QUIT
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
from exceptions import QuitOnLoadError
from menus.base import Menu
from sprites.menus import StudioLogo
from text import Text


# Max MSP Application
MAX_APP = None
MAX_OPEN = False
MAX_FULLY_LOADED = False

MAX_OPENED_ADDRESS = '/max_opened'
MAX_LOADED_ADDRESS = '/max_loaded'

MAXIMUM_LOADTIME = 40

# Loading Screen Text
LOADING_STR = 'LOADING'
MAX_OPEN_STR = 'Waiting for Max/MSP to open.'
MAX_LOAD_STR = 'Waiting for Max/MSP to finish loading.'
BEYOND_LOADTIME_STR = 'Taking longer to load than usual.'
LOADING_DOT_STR = '.'
PERCENT_LOADED_STR = '{0}% Loaded'

REASON_TEXT = Text(MAX_OPEN_STR, 'spacemono', 48, 'white')
LOADING_TEXT = Text(LOADING_STR, 'spacemono', 48, 'white')
LOADING_DOT_TEXT = Text(LOADING_DOT_STR, 'spacemono', 48, 'white')
PERCENT_TEXT = Text(PERCENT_LOADED_STR, 'spacemono', 48, 'white')


# Loading Screen Menu
LOADING_MENU = Menu(GameState.LOADING_SCREEN)
LOADING_MENU.add_text(
    REASON_TEXT,
    LOADING_TEXT,
    LOADING_DOT_TEXT,
    PERCENT_TEXT,
)


def loading_screen(game_clock: pg.time.Clock, main_screen: pg.Surface) -> GameState:
    """
    Run the loading screen asynchronously as the Max Application opens.

    After Max opens, transition to the MAIN MENU.
    """
    asyncio.run(open_max_application(game_clock, main_screen))
    return GameState.MAIN_MENU


def max_loaded_handler(address, *args):
    """
    Async handler function that gets called when polling for the /max_loaded OSC address
    """
    global MAX_FULLY_LOADED
    MAX_FULLY_LOADED = True


def max_opened_handler(address, *args):
    """
    Async handler function that gets called when polling for the /max_opened OSC address
    """
    global MAX_OPEN
    MAX_OPEN = True


async def open_max_application(game_clock: pg.time.Clock, main_screen: pg.Surface):
    """
    Opens the Max Application, shows the Studio Logo, and then shows a loading screen
    while waiting for Max to send the OSC address /max_loaded to show Max has fully opened
    and all initialization is complete.

    Once Max signals that all loading has completed, close the OSC server and transition to the
    MAIN MENU.
    """
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
    try:
        base_path = sys._MEIPASS
        print(base_path)
    except Exception:
        base_path = os.path.abspath(".")

    max_application_path = os.path.join(base_path, MAX_APPLICATION_PATH)
    print(max_application_path)
    args = ['open', max_application_path]
    MAX_APP = Popen(args)

    # show studio logo
    show_studio_logo_screen(game_clock, main_screen)

    # Update load screen and wait for Max to finish loading
    await wait_for_max_to_load(main_screen)

    # Close the server
    transport.close()


def show_studio_logo_screen(game_clock: pg.time.Clock, main_screen: pg.Surface):
    """
    Show the studio logo on startup. This buys us some time as Max begins to open and load.
    """
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
    """
    Loading screen that waits for Max to send OSC addresses to indicate that it has finished loading.

    Reports when Max has opened and fully loaded, and gives a rough estimate of the remaining time needed.
    """
    LOADING_MENU.add_screen(menu_screen=main_screen)

    # Set screen position for loading screen text
    screen_rect = main_screen.get_rect()
    text_height_position = screen_rect.height - 50

    REASON_TEXT.update_position(
        {'bottomleft': (50, text_height_position - REASON_TEXT.rect.height)}
    )
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
    taking_awhile_set = False
    while not MAX_OPEN:
        # Check if quitting
        for event in pg.event.get():
            # Quit the game
            if event.type == QUIT:
                raise QuitOnLoadError('Quitting while game is loading')

        main_screen.fill("black")

        # update loading dots
        loading_dot_str = LOADING_DOT_STR * ((elapsed_load_time % 3) + 1)
        LOADING_MENU.update_text(loading_dot_str, LOADING_DOT_TEXT)

        # update loading percent
        if elapsed_load_time < MAXIMUM_LOADTIME:
            percent = int((elapsed_load_time / MAXIMUM_LOADTIME) * 100)
        elif not taking_awhile_set:
            taking_awhile_set = True
            LOADING_MENU.update_text(BEYOND_LOADTIME_STR, REASON_TEXT)
            REASON_TEXT.update_position(
                {'bottomleft': (50, text_height_position - REASON_TEXT.rect.height)}
            )
            percent = 99
        LOADING_MENU.update_text(PERCENT_LOADED_STR.format(percent), PERCENT_TEXT)

        # Draw text to the screen
        LOADING_MENU.render_all_text()

        # render screen
        pg.display.flip()

        # Increment waiting time
        elapsed_load_time += 1
        await asyncio.sleep(1)

    LOADING_MENU.update_text(MAX_LOAD_STR, REASON_TEXT)
    REASON_TEXT.update_position(
        {'bottomleft': (50, text_height_position - REASON_TEXT.rect.height)}
    )
    LOADING_MENU.update_text(PERCENT_LOADED_STR.format(99), PERCENT_TEXT)

    # Wait for Max to loadbang everything
    while not MAX_FULLY_LOADED:
        # Check if quitting
        for event in pg.event.get():
            # Quit the game
            if event.type == QUIT:
                raise QuitOnLoadError('Quitting while game is loading')

        main_screen.fill("black")
        loading_dot_str = LOADING_DOT_STR * ((elapsed_load_time % 3) + 1)
        LOADING_MENU.update_text(loading_dot_str, LOADING_DOT_TEXT)

        # Draw text to the screen
        LOADING_MENU.render_all_text()

        # render screen
        pg.display.flip()

        # Increment waiting time
        elapsed_load_time += 1
        await asyncio.sleep(1)
