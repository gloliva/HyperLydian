# stdlib imports
from enum import Enum

# Game frames
FPS = 60

# Screen constants
SCREEN_WIDTH = 1440
SCREEN_HEIGHT = 900

# Define game states
class GameState(Enum):
    MAIN_MENU = 0
    GAMEPLAY = 1
    DEATH_MENU = 3
    QUIT = 4
