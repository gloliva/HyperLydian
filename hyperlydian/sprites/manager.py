# 3rd-party imports
import pygame as pg

# project imports
from sprites.background import Star
from sprites.enemies import ShooterGrunt, TrackerGrunt
from sprites.player import Player
from sprites.projectiles import Missile, EnergyOrb, TurretRound


# Single access point for all Sprite objects
class SpriteManager:
    PLAYER = {
        'player': Player,
    }

    ENEMIES = {
        'shooter_grunt': ShooterGrunt,
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
    enemies = pg.sprite.Group()
    projectiles = pg.sprite.Group()
    stars = pg.sprite.Group()
    all_sprites = pg.sprite.Group()
