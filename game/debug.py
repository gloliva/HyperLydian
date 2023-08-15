"""
This module defines some constants that can be set to Disable certain parts of the code
which was useful for debugging purposes to isolate specific parts of the game.

DISABLE_OPENING_MAX_APPLICATION is necessary to enable if you want to run the Max and Python application
separately, such as using the Max/MSP collective file instead of the standalone application.

Author: Gregg Oliva
"""

# stdlib imports
import os


# Set Debug options through Environment variables
DISABLE_MAX_ENV_VAR = os.environ.get('DISABLE_MAX')


# Debug options
DISABLE_OSC_SEND = False  # OSC variables don't send
DISABLE_OPENING_MAX_APPLICATION = True if DISABLE_MAX_ENV_VAR is not None and int(DISABLE_MAX_ENV_VAR) == 1 else False  # Don't open MAX application
NO_ENEMIES = False  # Don't spawn enemies
PLAYER_INVINCIBLE = False  # Player doesn't take damage
