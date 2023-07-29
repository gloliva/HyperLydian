# stdlib imports
from enum import Enum

# Game frames
FPS = 60


# Screen constants
SCREEN_TOP = 0
SCREEN_LEFT = 0
SCREEN_WIDTH = 1440
SCREEN_HEIGHT = 900


class ScreenSide:
    LEFT = 'left',
    RIGHT = 'right'
    TOP = 'top'
    BOTTOM = 'bottom'

    NUM_SIDES = 4
    ALL_SIDES = [LEFT, RIGHT, TOP, BOTTOM]


# Define game states
class GameState(Enum):
    LOADING_SCREEN = 0
    MAIN_MENU = 1
    CREDITS = 2
    HOW_TO_PLAY = 3
    GAMEPLAY = 4
    DEATH_MENU = 5
    QUIT = 6


# Menu Transition
MAX_ALPHA = 255
FADE_FRAMES = int(FPS * 0.5)
FADE_MULTIPLIER = MAX_ALPHA / FADE_FRAMES

# OSC constants
ADDRESS = '127.0.0.1'  # localhost
OUTGOING_PORT = 8001
INCOMING_PORT = 8002


# Projectile types
REST = 'rest'
SHARP = 'sharp'
FLAT = 'flat'
NATURAL = 'natural'

PROJECTILE_TYPES = [REST, SHARP, FLAT, NATURAL]


# Assets constants
PNG_PATH = 'assets/png'


# Max application constants
MAX_APPLICATION_PATH = 'dist/max-hyperlydian.app'


# Music constants
NUM_VOICES = 3
