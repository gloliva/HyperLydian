# stdlib imports
from typing import Any, Dict, List, Union

# project imports
import debug
from defs import SCREEN_WIDTH, SCREEN_HEIGHT, PROJECTILE_TYPES, NUM_VOICES, FPS
from osc_client import osc, OSCHandler


class Stat:
    """A stat to be sent via OSC"""
    def __init__(self, value: Any, send: bool = True) -> None:
        self.value = value
        self.send = send

    def update(self, value: Any) -> None:
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
    """A stat that tracks text"""
    def __init__(self, initial_text: str = '', send: bool = True) -> None:
        self.text = initial_text
        self.send = send

    def update(self, text: str) -> None:
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
        return (self.hours, self.minutes, self.seconds, self.ms)

    @property
    def time_display(self) -> str:
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
    def __init__(self, send_mode: int = 0, send: bool = True) -> None:
        self.sum = 0
        self.last = None
        self.count = 0
        self.min = float('inf')
        self.max = float('-inf')

        if send_mode > len(self.list):
            send_mode = 0

        self.send_mode = send_mode
        self.send = send

    @property
    def avg(self) -> float:
        if self.count > 0:
            return self.sum / self.count
        else:
            return 0

    @property
    def list(self) -> List:
        return [self.min, self.avg, self.last, self.max]

    @property
    def value(self) -> Union[int, float, List]:
        if self.send_mode == 0:
            return self.list

        return self.list[self.send_mode - 1]

    def add(self, val: float):
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
    def __init__(self, init_values: List[str] = None, send: bool = True) -> None:
        self._items = {} if init_values is None else {key: 0 for key in init_values}
        self.send = send

    @property
    def items(self) -> List[Union[str, int]]:
        items_list = []
        for key, val in self._items.items():
            items_list.extend([key, val])
        return items_list

    def increase(self, item: str) -> None:
        if item not in self._items:
            self._items[item] = 1
        else:
            self._items[item] += 1


class ListStat:
    def __init__(self, initial_length: int = 0, initial_fill: int = 0, send: bool = True) -> None:
        self.list = [initial_fill for _ in range(initial_length)]
        self.send = send

    def add_at_index(self, index: int, val: int):
        self.list[index] += val

    def update(self, *vals: int):
        for idx, val in enumerate(vals):
            self.list[idx] = val

    def __str__(self) -> str:
        return str(', '.join(self.list))

    def __repr__(self) -> str:
        return str(f'ListStat(List={self.list})')


class StatTracker:
    """Tracks game information"""
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

        self.game__play_count = Stat(0)
        self.game__time__total_played = TimeStat(0)

    def init_new_playthrough(self, start_time_ms: int = 0, player_max_health: int = 0):
        self.start_time = start_time_ms
        self.time_last_enemy_killed = start_time_ms

        self.control__game_init = Stat(0)
        self.control__menu_init = Stat(0)

        self.game__score = Stat(0)
        self.game__total_frames = Stat(0)
        self.game__time__current_playthrough = TimeStat(0)

        self.player__starting_position = ListStat(initial_length=2)
        self.player__starting_angle = Stat(0)
        self.player__position = ListStat(initial_length=2)
        self.player__vertical_half = TextStat()
        self.player__horizontal_half = TextStat()
        self.player__frames__moving = Stat(0)
        self.player__frames__still = Stat(0)
        self.player__frames__rotating = Stat(0)
        self.player__frames__firing = Stat(0)
        self.player__percent_firing_weapon = Stat(0.)
        self.player__percent_moving_over_rotating = Stat(50.)
        self.player__frames__per_screen_quadrant = ListStat(initial_length=4)
        self.player__curr_velocity = ListStat(initial_length=2)
        self.player__curr_speed = Stat(0)
        self.player__angle = Stat(0)
        self.player__last_rotation_direction = Stat(0)
        self.player__accuracy = Stat(0.0)
        self.player__avg_time_between_kills = TrackerStat()
        self.player__max_health = Stat(player_max_health)
        self.player__curr_health = Stat(player_max_health)
        self.player__health_lost = Stat(0)
        self.player__projectile_hit_count = CounterStat(PROJECTILE_TYPES)
        self.player__hit_distance = TrackerStat()
        self.player__dodges = Stat(0)
        self.player__alive_projectiles = Stat(0)

        self.weapon__selected = Stat(0)
        self.weapon__total_shots_fired = Stat(0)
        self.weapon__shots_per_weapon = ListStat(initial_length=2)

        self.upgrades__total_dropped = Stat(0)
        self.upgrades__picked_up = Stat(0)
        self.upgrades__missed = Stat(0)

        self.enemies__total = Stat(0)
        self.enemies__standard_count = Stat(0)
        self.enemies__special_count = Stat(0)
        self.enemies__num_on_screen = TrackerStat(0)
        self.enemies__hit = Stat(0)
        self.enemies__killed = Stat(0)
        self.enemies__hit_distance = TrackerStat()
        self.enemies__alive_projectiles = Stat(0)

        self.game__play_count += 1

    def send_stats(self):
        osc_stats = self.convert_osc_stats_to_dict()
        self.osc.union_bundle(osc_stats)
        if not debug.DISABLE_OSC_SEND:
            self.osc.send_full_bundle()

    def update_stats(self):
        # Update player accuracy
        if self.weapon__total_shots_fired > 0:
            self.player__accuracy = (self.enemies__hit / self.weapon__total_shots_fired) * 100

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
            self.player__percent_moving_over_rotating = (self.player__frames__moving / total) * 100

        # Update firing vs not ratio
        if self.game__total_frames > 0:
            self.player__percent_firing_weapon = (self.player__frames__firing / self.game__total_frames) * 100



    def convert_osc_stats_to_dict(self) -> Dict[str, Any]:
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
        # calculate playthrough time
        playthrough_time_elapsed = total_time_elapsed_ms - self.start_time
        self.game__time__current_playthrough = TimeStat(playthrough_time_elapsed)

        # calculate total time
        self.game__time__total_played = TimeStat(total_time_elapsed_ms)

    def print_stats(self):
        print(f'---- Game {self.game__play_count} ----')
        print(f'Score: {self.game__score}')
        print(f'Enemies Killed: {self.enemies__killed}')
        print(f'Enemy shots dodged: {self.player__dodges}')
        print(f'Avg time to kill an Enemy: {self.player__avg_time_between_kills.avg / 1000}')
        print(f'Total Shots Fired: {self.weapon__total_shots_fired}')
        print(f'Enemies Hit: {self.enemies__hit}')
        print(f'Player Shot Accuracy: {self.player__accuracy}%')
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


stat_tracker = StatTracker(osc=osc)
