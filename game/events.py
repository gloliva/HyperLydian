# stdlib imports
from functools import partial
from random import choice as randelem

# 3rd-party imports
import pygame as pg
from pygame.event import custom_type, Event as PGEvent
from pygame.time import set_timer as event_timer

# project imports
from exceptions import SpecialEventError
import sprites.groups as groups


# Custom Events
class Event:
    """Event wrapper class for single-entrypoint access to custom player events"""
    # Add a new strafer enemy
    ADD_STRAFER_GRUNT = PGEvent(custom_type())

    # Add a new spinner enemy
    ADD_SPINNER_GRUNT = PGEvent(custom_type())

    # Add background features
    ADD_STAR = PGEvent(custom_type())
    ADD_NOTE = PGEvent(custom_type())

    # The player has been killed
    PLAYER_DEATH = PGEvent(custom_type())

    # Difficulty events
    INCREASE_DIFFICULTY = PGEvent(custom_type())
    DECREASE_DIFFICULTY = PGEvent(custom_type())


# Event timers
def initialize_event_timers() -> None:
    event_timer(Event.ADD_STRAFER_GRUNT, 2000)
    event_timer(Event.ADD_SPINNER_GRUNT, 10000)
    event_timer(Event.ADD_NOTE, 50)
    event_timer(Event.ADD_STAR, 50)


def disable_event_timers() -> None:
    event_timer(Event.ADD_STRAFER_GRUNT, 0)
    event_timer(Event.ADD_SPINNER_GRUNT, 0)


def initialize_menu_timers() -> None:
    event_timer(Event.ADD_NOTE, 50)


def disable_menu_timers() -> None:
    event_timer(Event.ADD_NOTE, 0)


def enable_spinner_grunt_event(game_screen_rect: pg.Rect):
    num_grunts = groups.spinner_grunt_enemies.num_grunts_per_ellipse
    start_positions = groups.SpinnerGruntGroup.get_oval_starting_positions(num_grunts, game_screen_rect)
    rotation_angles = groups.SpinnerGruntGroup.get_rotation_angles_from_start_positions(start_positions, game_screen_rect)
    special_event = CountdownSpecialEvent(num_grunts)

    for idx in range(num_grunts):
        spawn, angle = start_positions[idx], rotation_angles[idx]
        grunt = groups.spinner_grunt_enemies.create_new_grunt(
            spawn,
            on_death_callbacks=[special_event.decrement],
            special_event=True
        )
        grunt.rotate(angle)

    return special_event


class SpecialEvent:
    @property
    def complete(self):
        raise NotImplementedError(f'Special event type must {self.__class__} must override complete property')


class TimeChallengeSpecialEvent:
    pass


class CountdownSpecialEvent(SpecialEvent):
    def __init__(self, count: int) -> None:
        self.count = count

    def decrement(self):
        self.count -= 1

    @property
    def complete(self):
        return self.count == 0


class SpecialEventManager:
    EVENTS = [enable_spinner_grunt_event]
    ENEMY_THRESHOLD_MULTIPLIER = 15
    ENEMY_THRESHOLD_ADDITION = 2

    def __init__(self, game_screen_rect: pg.Rect) -> None:
        self.event_queue = []
        self.event_count = 0
        self.event_queued = False
        self.event_in_progress = False
        self.curr_event: SpecialEvent = None
        self.game_screen_rect: pg.Rect = game_screen_rect

    @property
    def event_is_finished(self) -> bool:
        return self.curr_event is not None and self.curr_event.complete

    def kill_event_should_start(self, standard_enemies: int) -> bool:
        threshold_increase = (self.event_count * self.ENEMY_THRESHOLD_ADDITION)
        return standard_enemies > ((self.event_count + 1) * self.ENEMY_THRESHOLD_MULTIPLIER) + threshold_increase

    def queue_event(self) -> None:
        self.event_count += 1
        self.event_queued = True
        event_function = randelem(self.EVENTS)
        self.event_queue.append(partial(event_function, self.game_screen_rect))

    def start_event(self) -> None:
        self.event_in_progress = True
        self.event_queued = False

        # Get event from queue and begin event
        if not self.event_queue:
            raise SpecialEventError("Special Event queue is empty but attempting to start an event")

        event_function = self.event_queue.pop(0)
        self.curr_event = event_function()

    def end_event(self) -> None:
        self.curr_event = None
        self.event_in_progress = False

