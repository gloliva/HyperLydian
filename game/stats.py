class StatTracker:
    def __init__(self) -> None:
        # Stats that track throughout each playthrough
        self.games_played = 0
        self.total_time_played = (0, 0, 0)

    def init_new_playthrough(self, start_time_ms: int = 0):
        self.score = 0
        self.player_shots_fired = 0
        self.player_enemies_hit = 0
        self.player_enemies_killed = 0
        self.player_health_lost = 0
        self.player_accuracy = 0.0
        self.start_time = start_time_ms
        self.current_playthrough_time = (0, 0, 0)

        self.games_played += 1

    def update_stats(self):
        if self.player_shots_fired > 0:
            self.player_accuracy = self.player_enemies_hit / self.player_shots_fired

    def set_game_time(self, total_time_elapsed_ms: int):
        # calculate playthrough time
        playthrough_time_elapsed = total_time_elapsed_ms - self.start_time
        seconds, _ = divmod(playthrough_time_elapsed, 1000)
        minutes, seconds = divmod(seconds, 60)
        hours, minutes = divmod(minutes, 60)

        self.current_playthrough_time = (hours, minutes, seconds)

        # calculate total time
        seconds, _ = divmod(total_time_elapsed_ms, 1000)
        minutes, seconds = divmod(seconds, 60)
        hours, minutes = divmod(minutes, 60)

        self.total_time_played = (hours, minutes, seconds)

    def print_stats(self):
        print(f'---- Game {self.games_played} ----')
        print(f'Total Shots Fired: {self.player_shots_fired}')
        print(f'Enemies Hit: {self.player_enemies_hit}')
        print(f'Player Shot Accuracy: {self.player_accuracy}')
        print(f'Enemies Killed: {self.player_enemies_killed}')
        print(
            f'Time Survived: {self.current_playthrough_time[0]} Hours, '
            f'{self.current_playthrough_time[1]} Minutes, '
            f'{self.current_playthrough_time[2]} Seconds'
        )
        print(
            f'Total Time Played: {self.total_time_played[0]} Hours, '
            f'{self.total_time_played[1]} Minutes, '
            f'{self.total_time_played[2]} Seconds'
        )
        print()


stat_tracker = StatTracker()
