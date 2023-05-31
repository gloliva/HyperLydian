# 3rd-party imports
from pygame.event import custom_type, Event as PGEvent
from pygame.time import set_timer as event_timer


# Custom Events
class Event:
    """Event wrapper class for single-entrypoint access to custom player events"""
    # Add a new grunt enemy
    ADD_STRAFER_GRUNT = PGEvent(custom_type())

    # Add star to the background
    ADD_STAR = PGEvent(custom_type())

    # The player has been killed
    PLAYER_DEATH = PGEvent(custom_type())


# Event timers
def initialize_event_timers():
    event_timer(Event.ADD_STRAFER_GRUNT, 2000)
    event_timer(Event.ADD_STAR, 50)
