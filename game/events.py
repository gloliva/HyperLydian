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

    # Spinner grunt elipse event
    SPINNER_GRUNT_ELIPSE_EVENT = PGEvent(custom_type())

    # Add background features
    ADD_NOTE = PGEvent(custom_type())
    ADD_STAFF = PGEvent(custom_type())

    # The player has been killed
    PLAYER_DEATH = PGEvent(custom_type())

    # Difficulty events
    INCREASE_DIFFICULTY = PGEvent(custom_type())
    DECREASE_DIFFICULTY = PGEvent(custom_type())


class SpecialEvent:
    EVENTS = [Event.SPINNER_GRUNT_ELIPSE_EVENT]

    @property
    def complete(self):
        raise NotImplementedError(f'Special event type must {self.__class__} must override complete property')


class TimeChallengeSpecialEvent:
    pass


class KillChallengeSpecialEvent(SpecialEvent):
    def __init__(self, num_enemies: int) -> None:
        self.num_enemies = num_enemies

    def decrement(self):
        self.num_enemies -= 1

    @property
    def complete(self):
        return self.num_enemies == 0


SPECIAL_EVENTS = [Event.SPINNER_GRUNT_ELIPSE_EVENT]


# Event timers
def initialize_event_timers() -> None:
    event_timer(Event.ADD_STRAFER_GRUNT, 2000)
    event_timer(Event.ADD_SPINNER_GRUNT, 10000)
    event_timer(Event.ADD_NOTE, 50)
    event_timer(Event.ADD_STAFF, 1800)


def disable_event_timers() -> None:
    event_timer(Event.ADD_STRAFER_GRUNT, 0)
    event_timer(Event.ADD_SPINNER_GRUNT, 0)
