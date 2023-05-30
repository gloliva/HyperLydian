# 3rd-party imports
from pygame.sprite import Group, LayeredUpdates as LayeredGroup

# project imports
from sprites.background import Star
from sprites.enemies import (
    StraferGruntGroup,
    StraferGrunt,
    TrackerGrunt
)
from sprites.player import Player
from sprites.projectiles import Missile, EnergyOrb, TurretRound


# Single access point for all Sprite objects
class SpriteManager:
    PLAYER = {
        'player': Player,
    }

    ENEMIES = {
        'strafer_grunt': StraferGrunt,
        'tracker_grunt': TrackerGrunt,
    }

    BACKGROUND = {
        'star': Star,
    }

    PROJECTILES = {
        'turret': TurretRound,
        'orb': EnergyOrb,
        'missile': Missile,
    }


# Single access point for all groups of sprites
class GroupManager():
    # Enemies
    all_enemies = Group()
    grunt_enemies = StraferGruntGroup()
    enemy_projectiles = Group()

    # Player
    player_projectiles = Group()

    # Background
    stars = Group()

    # All
    all_sprites = LayeredGroup()
