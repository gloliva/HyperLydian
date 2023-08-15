# stdlib imports
from random import randint, choices as weightedelem
from typing import List

# 3rd-party imports
import pygame as pg
from pygame.event import custom_type, Event as PGEvent
from pygame.time import set_timer as event_timer

# project imports
from defs import ScreenSide
from exceptions import SpecialEventError
import sprites.background as background
import sprites.groups as groups
import sprites.indicators as indicators
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

    # Animation events
    FADE_OUT_LETTERS = PGEvent(custom_type())


# Event timers
def initialize_event_timers() -> None:
    """Event timers to be initialized on game start"""
    event_timer(Event.ADD_STRAFER_GRUNT, 2000)
    event_timer(Event.ADD_SPINNER_GRUNT, 10000)
    event_timer(Event.ADD_NOTE, 400)
    event_timer(Event.ADD_STAR, 50)


def update_timer(event: Event, new_time: int) -> None:
    """Update an Event timer"""
    event_timer(event, new_time)


def disable_event_timers() -> None:
    """Turn off enemy event timers"""
    event_timer(Event.ADD_STRAFER_GRUNT, 0)
    event_timer(Event.ADD_SPINNER_GRUNT, 0)


def initialize_menu_timers() -> None:
    """Start menu timer: notes spawning from corners of the screen"""
    event_timer(Event.ADD_NOTE, 50)


def disable_menu_timers() -> None:
    """Turn off menu timers as game begins"""
    event_timer(Event.ADD_NOTE, 0)


def initialize_credits_timers() -> None:
    """Start credits timers, spawn a single spinner grunt"""
    event_timer(Event.ADD_SPINNER_GRUNT, 1000)


def disable_credits_timers() -> None:
    """Turn off credits timers"""
    event_timer(Event.ADD_SPINNER_GRUNT, 0)


def disable_timers_on_special_event() -> None:
    """Disable notes spawning on special events"""
    event_timer(Event.ADD_NOTE, 0)


def re_enable_timers_after_special_event() -> None:
   """Re-enable notes spawning after special event ends"""
   event_timer(Event.ADD_NOTE, 400)


class SpecialEvent:
    """
    Special Event base class. Special events should override this class and need to override
    the `is_complete` method.
    """
    def __init__(self, screen_rect: pg.Rect) -> None:
        self.curr_time = 0
        self.screen_rect = screen_rect

    @property
    def is_complete(self):
        """Specifies when the special event has ended"""
        raise NotImplementedError(f'Special event type must {self.__class__} must override complete property')

    def on_start(self):
        """Override method to for pre-event handling"""
        pass

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
    """
    Spawns a number of spinner grunts that form an ellipse across the screen.
    """
    MAX_TIME = 30

    def __init__(self, screen_rect: pg.Rect) -> None:
        super().__init__(screen_rect)

        # Event attributes
        self.start_grunts = None
        self.num_grunts = None

    def on_start(self):
        """
        Gets the spawn position for each spinner grunt to be spawned. This calculates the position and rotation
        of each grunt to form an ellipse where each grunt is an equidistant distance away from each other.
        """
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
        """This is a callback function that gets called when a grunt from this event dies"""
        self.num_grunts -= 1

    @property
    def is_complete(self):
        """The special event is complete when all grunts are dead, or enough time has ellapsed"""
        return self.num_grunts <= 0 or self.curr_time > self.MAX_TIME


class LetterField(SpecialEvent):
    """
    Spawn a bunch of letter asteroids from all four sides of the screen that fly out to hit the player.
    """
    LETTERS_PER_SECOND = 10
    EVENT_LENGTH_MIN = 8
    EVENT_LENGTH_MAX = 20

    def __init__(self, screen_rect: pg.Rect) -> None:
        super().__init__(screen_rect)

        # Event attributes
        self.player_health = stat_tracker.player__curr_health.value
        self.event_length = randint(self.EVENT_LENGTH_MIN, self.EVENT_LENGTH_MAX)
        self.prev_time = -1
        self.warning_animation_on = True

    def on_start(self):
        """
        Disable notes from spawning.
        Warn the player of the impending danger by flashing a warning indicator on all four sides of the screen.
        """
        disable_timers_on_special_event()
        for side in ScreenSide.ALL_SIDES:
            warning_bar = indicators.SideBar(
                self.screen_rect, spawn_side=side, on_death_callbacks=[self.end_warning_phase]
            )
            groups.side_bars.add(warning_bar)
            groups.all_sprites.add(warning_bar)

    def end_warning_phase(self):
        """Callback function when the warning bars are "killed" (i.e. removed from their respective groups)"""
        self.warning_animation_on = False

    def update(self, *args, **kwargs):
        """Keep spawning letters until the time event time has ellapsed"""
        # Return early if in pre-phase
        if self.warning_animation_on:
            return

        if int(self.curr_time) > self.prev_time:
            num_letters = self.LETTERS_PER_SECOND + randint(0, self.player_health - 1)
            for _ in range(num_letters):
                letter = background.Letter(self.screen_rect)
                groups.letters.add(letter)
                groups.all_sprites.add(letter)
            self.prev_time = int(self.curr_time)

        super().update(*args, **kwargs)

    def on_end(self):
        """Re-enable notes spawning and post and event to fade out the current letters."""
        re_enable_timers_after_special_event()
        pg.event.post(Event.FADE_OUT_LETTERS)

    @property
    def is_complete(self):
        """This is a time-based event, so the event ends when enough time has ellapsed."""
        return self.curr_time > self.event_length


class NoteBurst(SpecialEvent):
    """
    Spawn a bunch of notes at the top of the screen
    """
    NOTES_PER_SECOND = 40
    EVENT_LENGTH_MIN = 3
    EVENT_LENGTH_MAX = 15

    def __init__(self, screen_rect: pg.Rect) -> None:
        super().__init__(screen_rect)

        # Event attributes
        self.player_health = stat_tracker.player__curr_health.value
        self.event_length = randint(self.EVENT_LENGTH_MIN, self.EVENT_LENGTH_MAX)
        self.prev_time = -1

    def on_start(self):
        """Disable additional notes from spawning during this event"""
        disable_timers_on_special_event()

    def update(self, *args, **kwargs):
        """Continue spawning notes until enought time has ellpased."""
        if int(self.curr_time) > self.prev_time:
            num_notes = self.NOTES_PER_SECOND + randint(0, self.player_health - 1)
            for _ in range(num_notes):
                note = background.Note(self.screen_rect)
                groups.notes.add(note)
                groups.all_sprites.add(note)
            self.prev_time = int(self.curr_time)

        super().update(*args, **kwargs)

    def on_end(self):
        """Re-enable the normal amount of notes to spawn"""
        re_enable_timers_after_special_event()

    @property
    def is_complete(self):
        """This is a time-based event, so the event ends when enough time has ellapsed."""
        return self.curr_time > self.event_length


class SpecialEventManager:
    """Manages when special events start and which special event gets called"""
    EVENTS = [SpinnerGruntSwarm, LetterField, NoteBurst]
    EVENT_WEIGHTS = [5, 4, 2]
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
        """Checks to see if their is an ongoing event and if the event has finished"""
        return self.curr_event is not None and self.curr_event.is_complete

    def update(self, *args, **kwargs) -> None:
        """
        This update function gets called every frame during the gameplay loop.
        Update the specific event if an event is currently in-progress.
        """
        if self.event_in_progress:
            self.curr_event.update(*args, **kwargs)

    def kill_event_should_start(self, standard_enemies: int) -> bool:
        """Checks if a special event should start based on the number of enemies that have spawned"""
        threshold_increase = (self.event_count * self.ENEMY_THRESHOLD_ADDITION)
        threshold_base = (self.event_count + 1) * self.ENEMY_THRESHOLD_MULTIPLIER

        event_in_progress = self.event_queued or self.event_in_progress
        return not event_in_progress and standard_enemies > threshold_base + threshold_increase

    def queue_event(self) -> None:
        """Queue and event to be started once the remaining enemies are killed"""
        self.event_queued = True
        event_type = weightedelem(self.EVENTS, weights=self.EVENT_WEIGHTS)[0]
        event = event_type(self.screen_rect)
        self.event_queue.append(event)

    def start_event(self) -> None:
        """Start the queued event"""
        self.event_count += 1
        self.event_in_progress = True
        self.event_queued = False
        stat_tracker.game__num_events.update(self.event_count)

        # Get event from queue and begin event
        if not self.event_queue:
            raise SpecialEventError("Special Event queue is empty but attempting to start an event")

        self.curr_event = self.event_queue.pop(0)
        self.curr_event.on_start()

    def end_event(self) -> None:
        """End the event and resume normal gameplay"""
        self.curr_event.on_end()
        self.curr_event = None
        self.event_in_progress = False
