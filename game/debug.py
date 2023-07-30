# stdlib imports
import os


# Set Debug options through Environment variables
DISABLE_MAX_ENV_VAR = os.environ.get('DISABLE_MAX')


# Debug options
DISABLE_OSC_SEND = False
DISABLE_OPENING_MAX_APPLICATION = True if DISABLE_MAX_ENV_VAR is not None and int(DISABLE_MAX_ENV_VAR) == 1 else False
NO_ENEMIES = False
PLAYER_INVINCIBLE = False
