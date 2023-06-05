# 3rd-party imports
from pygame.event import custom_type, Event as PGEvent
from pygame.time import set_timer as event_timer


# Custom Events
class Event:
    """Event wrapper class for single-entrypoint access to custom player events"""
    # Add a new strafer enemy
    ADD_STRAFER_GRUNT = PGEvent(custom_type())

    # Add a new spinner enemy
    ADD_SPINNER_GRUNT = PGEvent(custom_type())

    # Add star to the background
    ADD_STAR = PGEvent(custom_type())

    # The player has been killed
    PLAYER_DEATH = PGEvent(custom_type())

    # Difficulty events
    INCREASE_DIFFICULTY = PGEvent(custom_type())
    DECREASE_DIFFICULTY = PGEvent(custom_type())


# Event timers
def initialize_event_timers() -> None:
    event_timer(Event.ADD_STRAFER_GRUNT, 2000)
    event_timer(Event.ADD_SPINNER_GRUNT, 10000)
    event_timer(Event.ADD_STAR, 50)


def disable_event_timers() -> None:
    event_timer(Event.ADD_STRAFER_GRUNT, 0)
    event_timer(Event.ADD_SPINNER_GRUNT, 0)
