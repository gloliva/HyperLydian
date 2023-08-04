class SettingsManager:
    def __init__(
        self,
        easy_mode: bool = False,
        player_invincible: bool = False,
    ) -> None:
        self.easy_mode = easy_mode
        self.player_invincible = player_invincible

    def update_setting(self, setting_name: str, setting_value: bool) -> None:
        # A bit hacky, but there's only two settings so it's not a big deal
        setting_name = setting_name.lower().replace(' ', '_')
        setattr(self, setting_name, setting_value)

    def __str__(self) -> str:
        return f'Settings[ Easy Mode: {self.easy_mode} | Player Invincible: {self.player_invincible} ]'

    def __repr__(self) -> str:
        return self.__str__()


settings_manager = SettingsManager()
