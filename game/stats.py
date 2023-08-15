# stdlib imports
from typing import Any, Dict, List, Union

# project imports
import debug
from defs import SCREEN_WIDTH, SCREEN_HEIGHT, PROJECTILE_TYPES, REST, NUM_VOICES, FPS, RECORD_MUSIC
from osc_client import osc, OSCHandler


class Stat:
    """A simple Number Stat to be sent via OSC"""
    def __init__(self, value: Any, send: bool = True) -> None:
        self.value = value
        self.send = send

    def update(self, value: Any) -> None:
        """Set the value of this stat to a different object"""
        self.value = value

    def __add__(self, other) -> "Stat":
        stat = Stat(self.value + other.value, self.send) \
            if isinstance(other, Stat) \
            else Stat(self.value + other, self.send)

        return stat

    def __sub__(self, other) -> "Stat":
        stat = Stat(self.value - other.value, self.send) \
            if isinstance(other, Stat) \
            else Stat(self.value - other, self.send)

        return stat

    def __mul__(self, other) -> "Stat":
        stat = Stat(self.value * other.value, self.send) \
            if isinstance(other, Stat) \
            else Stat(self.value * other, self.send)

        return stat

    def __div__(self, other) -> "Stat":
        stat = Stat(self.value / other.value, self.send) \
            if isinstance(other, Stat) \
            else Stat(self.value / other, self.send)

        return stat

    def __truediv__(self, other) -> "Stat":
        return self.__div__(other)

    def __lt__(self, other) -> bool:
        return self.value < other.value \
            if isinstance(other, Stat) \
            else self.value < other

    def __le__(self, other) -> bool:
        return self.value <= other.value \
            if isinstance(other, Stat) \
            else self.value <= other

    def __eq__(self, other) -> bool:
        return self.value == other.value \
            if isinstance(other, Stat) \
            else self.value == other

    def __ne__(self, other) -> bool:
        return self.value != other.value \
            if isinstance(other, Stat) \
            else self.value != other

    def __gt__(self, other) -> bool:
        return self.value > other.value \
            if isinstance(other, Stat) \
            else self.value > other

    def __ge__(self, other) -> bool:
        return self.value >= other.value \
            if isinstance(other, Stat) \
            else self.value >= other

    def __str__(self) -> str:
        return str(self.value)

    def __repr__(self) -> str:
        return str(f'Stat(Value={self.value}, OSC={self.send})')


class TextStat:
    """A stat that tracks strings"""
    def __init__(self, initial_text: str = '', send: bool = True) -> None:
        self.text = initial_text
        self.send = send

    def update(self, text: str) -> None:
        """Update the string"""
        self.text = text

    def __str__(self) -> str:
        return self.text

    def __repr__(self) -> str:
        return str(f'TextStat(Text={self.text})')


class TimeStat:
    """A stat that tracks time in ms, seconds, minutes, and hours"""
    def __init__(self, total_ms, send: bool = True) -> None:
        self.total_ms = total_ms
        self.send = send

        seconds, self.ms = divmod(self.total_ms, 1000)
        minutes, self.seconds = divmod(seconds, 60)
        self.hours, self.minutes = divmod(minutes, 60)

    @property
    def time(self):
        """Represents Time as a tuple of Hours, Minutes, Seconds, and Ms"""
        return (self.hours, self.minutes, self.seconds, self.ms)

    @property
    def time_display(self) -> str:
        """
        Display the time in a format that makes sense with how much time has ellapsed.
        e.g. as (4 minutes 32 seconds), (24 seconds), (1 hour 3 minutes 10 seconds),

        This function is useful for displaying Time Stats in the DEATH MENU
        """
        time_str = [f'{self.seconds} Seconds']
        if self.minutes > 0:
            time_str.insert(0, f'{self.minutes} Minutes')
        if self.hours > 0:
            time_str.insert(0, f'{self.hours} Hours')
        return ' '.join(time_str)

    def __sub__(self, other) -> "TimeStat":
        if isinstance(other, TimeStat):
            return TimeStat(self.total_ms - other.total_ms)
        elif isinstance(other, (int, float)):
            return TimeStat(self.total_ms - other)
        else:
            raise TypeError(f'{self.__class__} unable to perform subtraction with type: {type(other)}')

    def __str__(self) -> str:
        return str(self.total_ms)

    def __repr__(self) -> str:
        return str(f'TimeStat(Hours={self.hours}, Minutes={self.minutes}, Seconds={self.seconds}, Milliseconds={self.ms})')


class TrackerStat:
    """
    Tracks information about a numerical Stat that changes/updates frequently.

    Tracks the following:
        1) Min. value recorded
        2) Avg. of all values recorded
        3) The most recent value recorded
        4) Max. value recorded
        5) Total number of values recorded

    """
    def __init__(self, send_mode: int = 0, send: bool = True) -> None:
        self.sum = 0
        self.last = 0
        self.count = 0
        self.min = float('inf')
        self.max = float('-inf')

        if send_mode > len(self.list):
            send_mode = 0

        self.send_mode = send_mode
        self.send = send

    @property
    def avg(self) -> float:
        """
        Calculate the average of all tracked values
        """
        if self.count > 0:
            return self.sum / self.count
        else:
            return 0

    @property
    def list(self) -> List:
        """
        All tracked values as a List
        """
        return [self.min, self.avg, self.last, self.max, self.count]

    @property
    def value(self) -> Union[int, float, List]:
        """
        Returns one or more of the tracked values depending on the send_mode

        send_mode = 0: Return all tracked values as a list
        send_mode = 1: Return the min
        send_mode = 2: Return the avg
        send_mode = 3: Return the most recent
        send_mode = 4: Return the max
        send_mode = 5: Return the count
        """
        if self.send_mode == 0:
            return self.list

        return self.list[self.send_mode - 1]

    def add(self, val: float):
        """
        Add a new value to be tracked
        """
        self.last = val
        self.sum += val
        self.count += 1
        if val > self.max:
            self.max = val
        if val < self.min:
            self.min = val

    def __str__(self) -> str:
        return str(self.avg)

    def __repr__(self) -> str:
        return str(f'TrackerStat(Average={self.avg}, Last={self.last} Count={self.count}, Min={self.min}, Max={self.max})')


class CounterStat:
    """A stat that maps strings to counts"""
    def __init__(self, init_values: List[str] = None, send: bool = True) -> None:
        self._items = {} if init_values is None else {key: 0 for key in init_values}
        self.count = 0
        self.send = send

    @property
    def items(self) -> List[Union[str, int]]:
        """
        Returns a List of tuple pairs: (item_str, item_count)
        """
        items_list = []
        for key, val in self._items.items():
            items_list.extend([key, val])
        return items_list

    def get(self, item: str) -> int:
        """Get an item by name"""
        return self._items[item]

    def increase(self, item: str) -> None:
        """Increase the value of an item, or add the item to the map"""
        if item not in self._items:
            self._items[item] = 1
        else:
            self._items[item] += 1

        self.count += 1


class ListStat:
    """A stat that tracks Lists"""
    def __init__(self, initial_length: int = 0, initial_fill: int = 0, send: bool = True) -> None:
        self.list = [initial_fill for _ in range(initial_length)]
        self.send = send

    def add_at_index(self, index: int, val: int):
        """Increase the value at the index by one"""
        self.list[index] += val

    def update(self, *vals: int):
        """Update the entire list to equal this new list"""
        for idx, val in enumerate(vals):
            self.list[idx] = val

    def get(self, index: int) -> Stat:
        """Return an element from the list at the given index"""
        return Stat(self.list[index])

    def __str__(self) -> str:
        return str(', '.join(self.list))

    def __repr__(self) -> str:
        return str(f'ListStat(List={self.list})')


class StatTracker:
    """
    Tracks all game information as Stats.

    Displays some of these stats at the end DEATH MENU.

    Sends relevant stats over OSC at the provided port.
    """

    OUTPUT_STATS_FORMAT = [
        'SCORE:              {buffer}{value}',
        'ENEMIES KILLED:     {buffer}{value}',
        'PLAYER ACCURACY:    {buffer}{value}%',
        'PLAYER HEALTH LOST: {buffer}{value}',
        'NOTES RECOVERED:    {buffer}{value}',
        'UPGRADES PICKED UP: {buffer}{value}',
        'TIME SURVIVED:      {buffer}{value}',
        'TOTAL TIME PLAYED:  {buffer}{value}',
    ]

    def __init__(self, osc: OSCHandler) -> None:
        self.osc = osc

        # Stats that track throughout each playthrough
        self.control__max_init = Stat(0)
        self.control__game_init = Stat(0)
        self.control__menu_init = Stat(0)
        self.control__max_quit = Stat(0)
        self.control__output_device = TextStat()
        self.control__fps = Stat(FPS)
        self.control__num_voices = Stat(NUM_VOICES)
        self.control__screen_width = Stat(SCREEN_WIDTH)
        self.control__screen_height = Stat(SCREEN_HEIGHT)
        self.control__record_music = Stat(RECORD_MUSIC)

        self.game__play_count = Stat(0)
        self.game__time__total_played = TimeStat(0)

    def init_new_playthrough(self, start_time_ms: int = 0, player_max_health: int = 0):
        """Reset Stats on a new Playthrough"""

        # Time trackers
        self.start_time = start_time_ms
        self.time_last_enemy_killed = start_time_ms
        self.time_player_last_hit = start_time_ms
        self.time_last_collected_note = start_time_ms

        self.control__game_init = Stat(0)
        self.control__menu_init = Stat(0)
        self.control__reset_music = Stat(0)

        self.game__score = Stat(0)
        self.game__total_frames = Stat(0)
        self.game__time__current_playthrough = TimeStat(0)
        self.game__num_events = Stat(0)
        self.game__percent__note_over_enemy_score = Stat(50.)

        self.player__starting_position = ListStat(initial_length=2)
        self.player__starting_angle = Stat(0)
        self.player__position = ListStat(initial_length=2)
        self.player__vertical_half = TextStat()
        self.player__horizontal_half = TextStat()
        self.player__frames__moving_and_rotating = Stat(0)
        self.player__frames__moving = Stat(0)
        self.player__frames__still = Stat(0)
        self.player__frames__rotating = Stat(0)
        self.player__frames__firing = Stat(0)
        self.player__frames__per_screen_quadrant = ListStat(initial_length=4)
        self.player__frames__per_angle_quadrant = ListStat(initial_length=4)
        self.player__percent__firing_weapon = Stat(0.)
        self.player__percent__moving_over_rotating = Stat(50.)
        self.player__percent__moving_and_rotating = Stat(50.)
        self.player__percent__health_lost_over_gained = Stat(50.)
        self.player__percent__dodges_over_enemy_collision = Stat(50.)
        self.player__percent__hit_rests_over_accidentals = Stat(50.)
        self.player__percent__missed_notes_over_dodges = Stat(50.)
        self.player__curr_velocity = ListStat(initial_length=2)
        self.player__curr_speed = Stat(0)
        self.player__angle = Stat(0)
        self.player__last_rotation_direction = Stat(0)
        self.player__percent__accuracy = Stat(0.0)
        self.player__time__between_kills = TrackerStat()
        self.player__time__between_getting_hit = TrackerStat()
        self.player__max_health = Stat(player_max_health)
        self.player__curr_health = Stat(player_max_health)
        self.player__health_lost = Stat(0)
        self.player__health_gained = Stat(0)
        self.player__projectile_hit_count = CounterStat(PROJECTILE_TYPES)
        self.player__hit_distance = TrackerStat()
        self.player__enemies_collided = Stat(0)
        self.player__dodges = Stat(0)
        self.player__missed_nearby_notes = Stat(0)
        self.player__alive_projectiles = Stat(0)

        self.notes__collected = Stat(0)
        self.notes__total = Stat(0)
        self.notes__score = Stat(0)
        self.notes__time__between_collecting = TrackerStat()
        self.notes__time__lifespan = TrackerStat()
        self.notes__percent__collected = Stat(0)

        self.weapon__selected = Stat(0)
        self.weapon__total_shots_fired = Stat(0)
        self.weapon__shots_per_weapon = ListStat(initial_length=2)
        self.weapon__hits_per_weapon = ListStat(initial_length=2)
        self.weapon__frames__per_weapon = ListStat(initial_length=2)
        self.weapon__percent__one_over_two = Stat(0)

        self.upgrades__total_dropped = Stat(0)
        self.upgrades__picked_up = Stat(0)
        self.upgrades__missed = Stat(0)
        self.upgrades__time__between_collecting = TrackerStat()
        self.upgrades__time__lifespan = TrackerStat()
        self.upgrades__percent__collected = Stat(0)

        self.enemies__total = Stat(0)
        self.enemies__standard_count = Stat(0)
        self.enemies__special_count = Stat(0)
        self.enemies__num_on_screen = TrackerStat(0)
        self.enemies__hit = Stat(0)
        self.enemies__killed = Stat(0)
        self.enemies__hit_distance = TrackerStat()
        self.enemies__alive_projectiles = Stat(0)
        self.enemies__score = Stat(0)
        self.enemies__time__lifespan = TrackerStat()

        self.game__play_count += 1

    def send_stats(self):
        """Send all stats over OSC"""
        osc_stats = self.convert_osc_stats_to_dict()
        self.osc.union_bundle(osc_stats)
        if not debug.DISABLE_OSC_SEND:
            self.osc.send_full_bundle()

    def update_stats(self):
        """Update stats based on other stats"""
        # Update score
        self.game__score = self.enemies__score + self.notes__score

        # Update player accuracy
        if self.weapon__total_shots_fired > 0:
            self.player__percent__accuracy = (self.enemies__hit / self.weapon__total_shots_fired) * 100

        # Update player position stats
        horizontal_half = "left" if self.player__position.list[0] < SCREEN_WIDTH / 2 else "right"
        vertical_half = "top" if self.player__position.list[1] < SCREEN_HEIGHT / 2 else "bottom"
        self.player__horizontal_half.update(horizontal_half)
        self.player__vertical_half.update(vertical_half)

        if vertical_half == "top":
            # top left == quadrant 0
            if horizontal_half == "left":
                self.player__frames__per_screen_quadrant.add_at_index(0, 1)
            # top right == quadrant 1
            else:
                self.player__frames__per_screen_quadrant.add_at_index(1, 1)
        else:
            # bottom left == quadrant 2
            if horizontal_half == "left":
                self.player__frames__per_screen_quadrant.add_at_index(2, 1)
            # bottom right == quadrant 3
            else:
                self.player__frames__per_screen_quadrant.add_at_index(3, 1)

        # Update movement vs rotating vs non-movement ratio
        total = self.player__frames__moving + self.player__frames__rotating
        if total > 0:
            self.player__percent__moving_over_rotating = (self.player__frames__moving / total) * 100

        # Update movement and rotating vs just movement or just rotation
        total = self.player__frames__moving + self.player__frames__rotating + self.player__frames__moving_and_rotating
        if total > 0:
            self.player__percent__moving_and_rotating = (self.player__frames__moving_and_rotating / total) * 100

        # Update firing vs not ratio
        if self.game__total_frames > 0:
            self.player__percent__firing_weapon = (self.player__frames__firing / self.game__total_frames) * 100

        # Upgrade percentage
        if self.upgrades__total_dropped > 0:
            self.upgrades__percent__collected = (self.upgrades__picked_up / self.upgrades__total_dropped) * 100

        if self.notes__total > 0:
            self.notes__percent__collected = (self.notes__collected / self.notes__total) * 100

        # Update weapon usage
        if self.weapon__total_shots_fired > 0:
            self.weapon__percent__one_over_two = \
                (self.weapon__shots_per_weapon.get(0) / self.weapon__total_shots_fired) * 100

        # Health lost vs gained
        total = self.player__health_lost + self.player__health_gained
        if total > 0:
            self.player__percent__health_lost_over_gained = (self.player__health_lost / total) * 100

        # Dodges vs enemy collisions
        total = self.player__dodges + self.player__enemies_collided
        if total > 0:
            self.player__percent__dodges_over_enemy_collision = (self.player__dodges / total) * 100

        # Missed notes vs dodges
        total = self.player__missed_nearby_notes + self.player__dodges
        if total > 0:
            self.player__percent__missed_notes_over_dodges = (self.player__missed_nearby_notes / total) * 100

        # Rests vs accidentals
        projectile_hit_count = self.player__projectile_hit_count.count
        if projectile_hit_count > 0:
            num_rests = self.player__projectile_hit_count.get(REST)
            self.player__percent__hit_rests_over_accidentals.update((num_rests / projectile_hit_count) * 100)

        # Note vs enemy score
        if self.game__score > 0:
            self.game__percent__note_over_enemy_score = (self.notes__score / self.game__score) * 100

    def convert_osc_stats_to_dict(self) -> Dict[str, Any]:
        """Convert stats into a dictionary to be used by the OSC manager"""
        stat_dict = {}

        for stat_name, stat in self.__dict__.items():
            if not hasattr(stat, 'send') or not stat.send:
                continue

            if isinstance(stat, Stat):
                stat_dict[stat_name] = stat.value
            elif isinstance(stat, TimeStat):
                stat_dict[stat_name] = stat.time
            elif isinstance(stat, TrackerStat):
                stat_dict[stat_name] = stat.value
            elif isinstance(stat, ListStat):
                stat_dict[stat_name] = stat.list
            elif isinstance(stat, TextStat):
                stat_dict[stat_name] = stat.text
            elif isinstance(stat, CounterStat):
                stat_dict[stat_name] = stat.items

        return stat_dict

    def set_game_time(self, total_time_elapsed_ms: int):
        """Set the time that a new game playthrough begins"""
        # calculate playthrough time
        playthrough_time_elapsed = total_time_elapsed_ms - self.start_time
        self.game__time__current_playthrough = TimeStat(playthrough_time_elapsed)

        # calculate total time
        self.game__time__total_played = TimeStat(total_time_elapsed_ms)

    def print_stats(self):
        """Print Stats to the console"""
        print(f'---- Game {self.game__play_count} ----')
        print(f'Score: {self.game__score}')
        print(f'Enemies Killed: {self.enemies__killed}')
        print(f'Enemy shots dodged: {self.player__dodges}')
        print(f'Avg time to kill an Enemy: {self.player__time__between_kills.avg / 1000}')
        print(f'Total Shots Fired: {self.weapon__total_shots_fired}')
        print(f'Enemies Hit: {self.enemies__hit}')
        print(f'Player Shot Accuracy: {self.player__percent__accuracy}%')
        print(
            f'Time Survived: {self.game__time__current_playthrough.hours} Hours, '
            f'{self.game__time__current_playthrough.minutes} Minutes, '
            f'{self.game__time__current_playthrough.seconds} Seconds'
        )
        print(
            f'Total Time Played: {self.game__time__total_played.hours} Hours, '
            f'{self.game__time__total_played.minutes} Minutes, '
            f'{self.game__time__total_played.seconds} Seconds'
        )
        print()

    def get_endgame_stats(self) -> str:
        """Formats the endgame stats text to be displayed during the DEATH MENU"""
        stats_to_report = [
            self.game__score,
            self.enemies__killed,
            int(self.player__percent__accuracy.value),
            self.player__health_lost,
            self.notes__collected,
            self.upgrades__picked_up,
            self.game__time__current_playthrough.time_display,
            self.game__time__total_played.time_display,
        ]

        # Format lines without buffer
        stats_str_no_buffer = [
            stat_str.format(buffer=0, value=stats_to_report[idx])
            for idx, stat_str in enumerate(self.OUTPUT_STATS_FORMAT)
        ]

        # Calculate buffer for each line
        longest_line = len(max(stats_str_no_buffer, key=len))
        buffer_per_line = [
            ' ' * (longest_line - len(line)) for line in stats_str_no_buffer
        ]

        # Re-format lines with buffer
        stats_str_with_buffer = [
            stat_str.format(buffer=buffer_per_line[idx], value=stats_to_report[idx])
            for idx, stat_str in enumerate(self.OUTPUT_STATS_FORMAT)
        ]

        return '\n'.join(stats_str_with_buffer)



stat_tracker = StatTracker(osc=osc)
