class StatTracker:
    def __init__(self) -> None:
        self.score = 0
        self.player_shots_fired = 0
        self.player_enemies_hit = 0
        self.player_enemies_killed = 0
        self.player_health_lost = 0
        self.player_accuracy = 0.0

        self.total_time_survived = (0, 0, 0)

    def update_stats(self):
        if self.player_shots_fired > 0:
            self.player_accuracy = self.player_enemies_hit / self.player_shots_fired

    def set_game_time(self, time_elapsed_ms: int):
        seconds, _ = divmod(time_elapsed_ms, 1000)
        minutes, seconds = divmod(seconds, 60)
        hours, minutes = divmod(minutes, 60)

        self.total_time_survived = (hours, minutes, seconds)

    def print_stats(self):
        print(f'Total Shots Fired: {self.player_shots_fired}')
        print(f'Enemies Hit: {self.player_enemies_hit}')
        print(f'Player Shot Accuracy: {self.player_accuracy}')
        print(f'Enemies Killed: {self.player_enemies_killed}')
        print(
            f'Time Played: {self.total_time_survived[0]} Hours, '
            f'{self.total_time_survived[1]} Minutes, '
            f'{self.total_time_survived[2]} Seconds'
        )


stat_tracker = StatTracker()
