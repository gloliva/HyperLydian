# 3rd-party imports
from pygame.event import custom_type, Event as PGEvent
from pygame.time import set_timer as event_timer


# Custom Events
class Event:
    ADD_ENEMY = PGEvent(custom_type())
    ADD_STAR = PGEvent(custom_type())


# Event timers
def initialize_event_timers():
    event_timer(Event.ADD_ENEMY, 2000)
    event_timer(Event.ADD_STAR, 50)
