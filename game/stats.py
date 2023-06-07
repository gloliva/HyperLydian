# stdlib imports
from typing import Any, Dict


class OSCStat:
    """A stat to be sent via OSC"""
    def __init__(self, value, send: bool = True) -> None:
        self.value = value
        self.send = send

    def __add__(self, other) -> "OSCStat":
        stat = OSCStat(self.value + other.value, self.send) \
            if isinstance(other, OSCStat) \
            else OSCStat(self.value + other, self.send)

        return stat

    def __sub__(self, other) -> "OSCStat":
        stat = OSCStat(self.value - other.value, self.send) \
            if isinstance(other, OSCStat) \
            else OSCStat(self.value - other, self.send)

        return stat

    def __mul__(self, other) -> "OSCStat":
        stat = OSCStat(self.value * other.value, self.send) \
            if isinstance(other, OSCStat) \
            else OSCStat(self.value * other, self.send)

        return stat

    def __div__(self, other) -> "OSCStat":
        stat = OSCStat(self.value / other.value, self.send) \
            if isinstance(other, OSCStat) \
            else OSCStat(self.value / other, self.send)

        return stat

    def __truediv__(self, other) -> "OSCStat":
        return self.__div__(other)

    def __lt__(self, other) -> bool:
        return self.value < other.value \
            if isinstance(other, OSCStat) \
            else self.value < other

    def __le__(self, other) -> bool:
        return self.value <= other.value \
            if isinstance(other, OSCStat) \
            else self.value <= other

    def __eq__(self, other) -> bool:
        return self.value == other.value \
            if isinstance(other, OSCStat) \
            else self.value == other

    def __ne__(self, other) -> bool:
        return self.value != other.value \
            if isinstance(other, OSCStat) \
            else self.value != other

    def __gt__(self, other) -> bool:
        return self.value > other.value \
            if isinstance(other, OSCStat) \
            else self.value > other

    def __ge__(self, other) -> bool:
        return self.value >= other.value \
            if isinstance(other, OSCStat) \
            else self.value >= other

    def __str__(self) -> str:
        return str(self.value)

    def __repr__(self) -> str:
        return str(f'OSCStat(Value={self.value}, OSC={self.send})')


class OSCTimeStat:
    """A stat that tracks time in ms, seconds, minutes, and hours"""
    def __init__(self, total_ms, send: bool = True) -> None:
        self.total_ms = total_ms
        self.send = send

        seconds, self.ms = divmod(self.total_ms, 1000)
        minutes, self.seconds = divmod(seconds, 60)
        self.hours, self.minutes = divmod(minutes, 60)

    def __sub__(self, other) -> "OSCTimeStat":
        if isinstance(other, OSCTimeStat):
            return OSCTimeStat(self.total_ms - other.total_ms)
        elif isinstance(other, (int, float)):
            return OSCTimeStat(self.total_ms - other)
        else:
            raise TypeError(f'{self.__class__} unable to perform subtraction with type: {type(other)}')

    def __str__(self) -> str:
        return str(self.total_ms)

    def __repr__(self) -> str:
        return str(f'OSCTimeStat(Hours={self.hours}, Minutes={self.minutes}, Seconds={self.seconds}, Milliseconds={self.ms})')


class StatTracker:
    """Tracks game information"""
    def __init__(self) -> None:
        # OSCStats that track throughout each playthrough
        self.game__play_count = OSCStat(0)
        self.game__time__total_played = OSCTimeStat(0)

    def init_new_playthrough(self, start_time_ms: int = 0):
        self.start_time = start_time_ms

        self.game__score = OSCStat(0)
        self.player__shots_fired = OSCStat(0)
        self.player__enemies_hit = OSCStat(0)
        self.player__enemies_killed = OSCStat(0)
        self.player__health_lost = OSCStat(0)
        self.player__accuracy = OSCStat(0.0)
        self.game__time__current_playthrough = OSCTimeStat(0)

        self.game__play_count += 1

    def update_stats(self):
        if self.player__shots_fired > 0:
            self.player__accuracy = (self.player__enemies_hit / self.player__shots_fired) * 100

    def convert_osc_stats_to_dict(self) -> Dict[str, Any]:
        stat_dict = {}

        for stat_name, stat in self.__dict__.items():
            if isinstance(stat, OSCStat) and stat.send:
                stat_dict[stat_name] = stat.value
            if isinstance(stat, OSCTimeStat) and stat.send:
                stat_dict[stat_name] = (stat.hours, stat.minutes, stat.seconds, stat.ms)

        return stat_dict

    def set_game_time(self, total_time_elapsed_ms: int):
        # calculate playthrough time
        playthrough_time_elapsed = total_time_elapsed_ms - self.start_time
        self.game__time__current_playthrough = OSCTimeStat(playthrough_time_elapsed)

        # calculate total time
        self.game__time__total_played = OSCTimeStat(total_time_elapsed_ms)

    def print_stats(self):
        print(f'---- Game {self.game__play_count} ----')
        print(f'Score: {self.game__score}')
        print(f'Enemies Killed: {self.player__enemies_killed}')
        print(f'Total Shots Fired: {self.player__shots_fired}')
        print(f'Enemies Hit: {self.player__enemies_hit}')
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


stat_tracker = StatTracker()
