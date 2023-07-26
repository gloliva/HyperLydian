# stdlib imports
from enum import Enum
from math import sqrt

# Game frames
FPS = 60


# Screen constants
SCREEN_TOP = 0
SCREEN_LEFT = 0
SCREEN_WIDTH = 1440
SCREEN_HEIGHT = 900


# Define game states
class GameState(Enum):
    LOADING_SCREEN = 0
    MAIN_MENU = 1
    GAMEPLAY = 2
    DEATH_MENU = 3
    QUIT = 4


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
# MAX_APPLICATION_PATH = 'dist/max-hyperlydian.app'
MAX_APPLICATION_PATH = 'dist/max-hyperlydian.app'


# Music constants
NUM_VOICES = 3
