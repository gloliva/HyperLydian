# stdlib imports
from enum import Enum

# 3rd-party imports
import pygame as pg


CUSTOM_EVENT_ID_START = pg.USEREVENT + 1


# Custom Events
class Event(Enum):
    ADD_ENEMY = pg.event.Event(CUSTOM_EVENT_ID_START)
    ADD_STAR = pg.event.Event(CUSTOM_EVENT_ID_START + 1)


# Event timers
def initialize_event_timers():
    pg.time.set_timer(Event.ADD_ENEMY.value, 200)
    pg.time.set_timer(Event.ADD_STAR.value, 50)
