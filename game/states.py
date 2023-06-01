# 3rd-party imports
import pygame

# project imports
from defs import GameState
from gameplay import run_gameplay
from menus import run_main_menu


def death_menu(game_clock: pygame.time.Clock, main_screen: pygame.Surface):
    """Show score and give option to restart"""
    pass


def quit_game(game_clock: pygame.time.Clock, main_screen: pygame.Surface):
    """Stop all game loops and quit game"""
    print('Quitting the game')
    pass


# State transitions
GAME_STATE_TO_LOOP_MAP = {
    GameState.MAIN_MENU: run_main_menu,
    GameState.GAMEPLAY: run_gameplay,
    GameState.DEATH_MENU: death_menu,
    GameState.QUIT: quit_game,
}


def transition_state(next_state, game_clock, main_screen):
    state_loop = GAME_STATE_TO_LOOP_MAP[next_state]
    return state_loop(game_clock, main_screen)
