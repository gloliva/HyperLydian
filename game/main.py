# stdlib imports
import asyncio
from subprocess import Popen

# 3rd-party imports
import pygame as pg
from pygame.locals import QUIT, RESIZABLE
import sounddevice as sd

# project imports
from defs import (
    SCREEN_WIDTH,
    SCREEN_HEIGHT,
    GameState,
    MAX_APPLICATION_PATH,
)
from debug import DISABLE_OPENING_MAX_APPLICATION
from gameplay import run_gameplay
from menus import run_main_menu
from stats import stat_tracker

# initial pygame setup
pg.init()

# set up display
MAIN_SCREEN = pg.display.set_mode(
    (SCREEN_WIDTH, SCREEN_HEIGHT),
    flags=RESIZABLE,
)
pg.display.set_caption('HYPER LYDIAN')

# set up clock
CLOCK = pg.time.Clock()

# Max MSP Application
MAX_APP = None
MAX_OPEN = False
MAX_FULLY_LOADED = False


async def main():
    """Main Program Loop"""
    main_loop = True
    next_state = GameState.MAIN_MENU

    # open Max/MSP application
    await open_max_application()

    # init music
    output_device_name = get_default_audio_output_device()
    stat_tracker.control__output_device.update(output_device_name)
    stat_tracker.control__max_init += 1
    stat_tracker.send_stats()

    while main_loop:
        # event handler
        for event in pg.event.get():
            # Quit the game
            if event.type == QUIT:
                main_loop = False

        # move to the next state
        next_state = transition_state(next_state, CLOCK, MAIN_SCREEN)
        if next_state is None:
            main_loop = False

        # lock FPS
        CLOCK.tick(60)


def get_default_audio_output_device():
    default_device_num = sd.default.device[1]
    devices = sd.query_devices()
    output_device_name = devices[default_device_num]['name']
    return output_device_name


def max_loaded_handler(address, *args):
    global MAX_FULLY_LOADED
    MAX_FULLY_LOADED = True


def max_opened_handler(address, *args):
    global MAX_OPEN
    MAX_OPEN = True


async def open_max_application():
    global MAX_APP

    if DISABLE_OPENING_MAX_APPLICATION:
        return

    from pythonosc.osc_server import AsyncIOOSCUDPServer
    from pythonosc.dispatcher import Dispatcher

    dispatcher = Dispatcher()
    dispatcher.map("/max_opened", max_opened_handler)
    dispatcher.map("/max_loaded", max_loaded_handler)
    server = AsyncIOOSCUDPServer(('127.0.0.1', 8002), dispatcher, asyncio.get_event_loop())
    transport, _ = await server.create_serve_endpoint()

    args = ['open', MAX_APPLICATION_PATH]
    MAX_APP = Popen(args)

    await wait_for_max()

    transport.close()


async def wait_for_max():
    while not MAX_OPEN:
        print('Waiting for Max to open...')
        await asyncio.sleep(1)
    while not MAX_FULLY_LOADED:
        print('Waiting for Max to load...')
        await asyncio.sleep(1)
    print('Max has finished loading')
    await asyncio.sleep(1)


def close_max_application():
    if not DISABLE_OPENING_MAX_APPLICATION:
        stat_tracker.control__max_quit.update(1)


def quit_game(game_clock: pg.time.Clock, main_screen: pg.Surface):
    """Stop all game loops and quit game"""
    # turn off music
    stat_tracker.control__menu_init.update(0)
    stat_tracker.control__max_init -= 1
    # close Max/MSP
    close_max_application()
    # send closing stats to Max
    stat_tracker.send_stats()
    print('Quitting the game')


# Game State transitions
GAME_STATE_TO_LOOP_MAP = {
    GameState.MAIN_MENU: run_main_menu,
    GameState.GAMEPLAY: run_gameplay,
    # GameState.DEATH_MENU: death_menu,
    GameState.QUIT: quit_game,
}


def transition_state(next_state: GameState, game_clock: pg.time.Clock, main_screen: pg.Surface):
    state_loop = GAME_STATE_TO_LOOP_MAP[next_state]
    return state_loop(game_clock, main_screen)


if __name__ == "__main__":
    asyncio.run(main())
    pg.quit()
