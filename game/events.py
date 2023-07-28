# stdlib imports
from random import choices as weightedelem
from typing import List

# 3rd-party imports
import pygame as pg
from pygame.event import custom_type, Event as PGEvent
from pygame.time import set_timer as event_timer

# project imports
from exceptions import SpecialEventError
import sprites.groups as groups
from stats import stat_tracker


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
    event_timer(Event.ADD_NOTE, 400)
    event_timer(Event.ADD_STAR, 50)


def disable_event_timers() -> None:
    event_timer(Event.ADD_STRAFER_GRUNT, 0)
    event_timer(Event.ADD_SPINNER_GRUNT, 0)


def initialize_menu_timers() -> None:
    event_timer(Event.ADD_NOTE, 50)


def disable_menu_timers() -> None:
    event_timer(Event.ADD_NOTE, 0)


class SpecialEvent:
    def __init__(self, screen_rect: pg.Rect) -> None:
        self.curr_time = 0
        self.screen_rect = screen_rect

    @property
    def is_complete(self):
        raise NotImplementedError(f'Special event type must {self.__class__} must override complete property')

    def on_start(self):
        raise NotImplementedError(f'Special event type must {self.__class__} must override `on_start` method')

    def update(self, *args, **kwargs):
        """Override method to handle updates every frame"""
        timedelta = kwargs.get('timedelta')
        if timedelta is None:
            raise KeyError(f'timedelta keyword arg not passed into {self.__class__} update method.')

        self.curr_time += timedelta

    def on_end(self):
        """Override method to for clean-up / post-event handling"""
        pass


class SpinnerGruntSwarm(SpecialEvent):
    MAX_TIME = 30

    def __init__(self, screen_rect: pg.Rect) -> None:
        super().__init__(screen_rect)

        # Event attributes
        self.start_grunts = None
        self.num_grunts = None

    def on_start(self):
        self.start_grunts = groups.spinner_grunt_enemies.num_grunts_per_ellipse
        start_positions = groups.SpinnerGruntGroup.get_oval_starting_positions(self.start_grunts, self.screen_rect)
        rotation_angles = groups.SpinnerGruntGroup.get_rotation_angles_from_start_positions(start_positions, self.screen_rect)

        for idx in range(self.start_grunts):
            spawn, angle = start_positions[idx], rotation_angles[idx]
            grunt = groups.spinner_grunt_enemies.create_new_grunt(
                spawn,
                on_death_callbacks=[self.decrement],
                special_event=True,
            )
            grunt.rotate(angle)
        # set num grunts
        self.num_grunts = self.start_grunts

    def decrement(self):
        self.num_grunts -= 1

    @property
    def is_complete(self):
        return self.num_grunts <= 0 or self.curr_time > self.MAX_TIME


class AsteroidField(SpecialEvent):
    pass


class NoteBurst(SpecialEvent):
    pass


class TimeChallengeSpecialEvent(SpecialEvent):
    def __init__(self, time_in_sec: int) -> None:
        self.time_in_sec = time_in_sec
        self.curr_time = 0

    def update(self, *args, **kwargs):
        timedelta = kwargs.get('timedelta')
        if timedelta is None:
            raise KeyError(f'timedelta keyword arg not passed into {self.__class__} update method.')

        self.update_time(timedelta)

    def update_time(self, timedelta: float) -> None:
        self.curr_time += timedelta

    @property
    def is_complete(self):
        return self.curr_time > self.time_in_sec


class SpecialEventManager:
    EVENTS = [SpinnerGruntSwarm]
    EVENT_WEIGHTS = [1] # once all events are done: [5, 5, 2]
    ENEMY_THRESHOLD_MULTIPLIER = 15
    ENEMY_THRESHOLD_ADDITION = 2

    def __init__(self, screen_rect: pg.Rect) -> None:
        self.event_queue: List[SpecialEvent] = []
        self.event_count = 0
        self.event_queued = False
        self.event_in_progress = False
        self.curr_event: SpecialEvent = None
        self.screen_rect: pg.Rect = screen_rect

    @property
    def event_is_finished(self) -> bool:
        return self.curr_event is not None and self.curr_event.is_complete

    def update(self, *args, **kwargs) -> None:
        if self.event_in_progress:
            self.curr_event.update(*args, **kwargs)

    def kill_event_should_start(self, standard_enemies: int) -> bool:
        threshold_increase = (self.event_count * self.ENEMY_THRESHOLD_ADDITION)
        return standard_enemies > ((self.event_count + 1) * self.ENEMY_THRESHOLD_MULTIPLIER) + threshold_increase

    def queue_event(self) -> None:
        self.event_count += 1
        self.event_queued = True
        event_type = weightedelem(self.EVENTS, weights=self.EVENT_WEIGHTS)[0]
        event = event_type(self.screen_rect)
        self.event_queue.append(event)

    def start_event(self) -> None:
        self.event_in_progress = True
        self.event_queued = False

        # Get event from queue and begin event
        if not self.event_queue:
            raise SpecialEventError("Special Event queue is empty but attempting to start an event")

        self.curr_event = self.event_queue.pop(0)
        self.curr_event.on_start()

    def end_event(self) -> None:
        self.curr_event.on_end()
        self.curr_event = None
        self.event_in_progress = False
