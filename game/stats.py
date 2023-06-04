class StatTracker:
    def __init__(self) -> None:
        self.score = 0
        self.player_shots_fired = 0
        self.player_enemies_hit = 0
        self.player_enemies_killed = 0
        self.player_health_lost = 0
        self.player_accuracy = 0.0

        self.total_time_survived = 0.0

    def update_stats(self):
        if self.player_shots_fired > 0:
            self.player_accuracy = self.player_enemies_hit / self.player_shots_fired

    def print_stats(self):
        print(f'Total Shots Fired: {self.player_shots_fired}')
        print(f'Enemies Hit: {self.player_enemies_hit}')
        print(f'Player Shot Accuracy: {self.player_accuracy}')
        print(f'Enemies Killed: {self.player_enemies_killed}')

        seconds, _ = divmod(self.total_time_survived, 1000)
        minutes, seconds = divmod(seconds, 60)
        hours, minutes = divmod(minutes, 60)

        print(f'Time Played: {hours} Hours, {minutes} Minutes, {seconds} Seconds')


stat_tracker = StatTracker()
