# stdlib imports
from random import randint

# 3rd-party imports
import pygame as pg
from pygame.locals import (
    K_w,
    QUIT,
    SRCALPHA,
)

# project imports
from attacks import StandardAttack, Weapon
from defs import FPS, SCREEN_WIDTH, SCREEN_HEIGHT, GameState
from events import Event, initialize_event_timers
from sprites.player import Player
import sprites.background as background
import sprites.enemies as enemies
import sprites.projectiles as projectiles
import sprites.groups as groups


def run_gameplay(game_clock: pg.time.Clock, main_screen: pg.Surface):
    print('Gameplay State')

    # create game screen
    game_screen = pg.Surface((SCREEN_WIDTH, SCREEN_HEIGHT), flags=SRCALPHA)

    # start initial events
    initialize_event_timers()

    # create the player
    player = create_player(game_screen.get_rect())

    gameplay_loop = True
    while gameplay_loop:
        # event handler
        for event in pg.event.get():
            # handle exit
            if event.type == QUIT:
                gameplay_loop = False
                next_state = GameState.QUIT

            # handle creating stars
            elif event.type == Event.ADD_STAR.type:
                for _ in range(background.Star.NUM_STARS_PER_EVENT):
                    star = background.Star(game_screen.get_rect())
                    groups.stars.add(star)
                    groups.all_sprites.add(star)

            # handle player death
            elif event.type == Event.PLAYER_DEATH.type:
                gameplay_loop = False
                next_state = GameState.MAIN_MENU

            # handle creating grunts
            elif event.type == Event.ADD_STRAFER_GRUNT.type and not groups.grunt_enemies.is_full():
                # create Grunt object
                grunt_row = groups.grunt_enemies.curr_row_to_fill
                grunt_weapon = Weapon(
                    projectiles.RedEnergyBeam,
                    Weapon.INFINITE_AMMO,
                    randint(500, 2000),
                )
                grunt_attack = StandardAttack(grunt_weapon, groups.enemy_projectiles)
                grunt = enemies.StraferGrunt(grunt_attack, grunt_row)

                # determine where grunt stops on screen
                grunt_y_position = (
                    groups.grunt_enemies.ROW_START +
                    (groups.grunt_enemies.curr_row_to_fill * grunt.rect.height * groups.grunt_enemies.ROW_SPACING)
                )
                grunt.set_stopping_point_y(grunt_y_position)

                # Add Grunt to groups
                groups.grunt_enemies.add(grunt)
                groups.all_sprites.add(grunt)
                groups.all_enemies.add(grunt)

                # Calculate new grunt row
                groups.grunt_enemies.update_curr_row()

        # get pressed key events
        pressed_keys = pg.key.get_pressed()

        # player attack
        if pressed_keys[K_w]:
            player.light_attack()

        # move the player
        player.update(pressed_keys, game_screen.get_rect())

        # move enemies
        groups.all_enemies.update(game_screen.get_rect())

        # enemy attacks
        for grunt in groups.grunt_enemies:
            grunt.attack()

        # move projectiles
        groups.player_projectiles.update(game_screen.get_rect())
        groups.enemy_projectiles.update(game_screen.get_rect())

        # move stars
        groups.stars.update(game_screen.get_rect())

        # collision checks
        handle_collisions(player)

        # screen background
        game_screen.fill((0, 0, 0,))

        # draw all sprites
        for sprite in groups.all_sprites:
            game_screen.blit(sprite.surf, sprite.rect)

        # draw game screen to display
        main_screen.blit(game_screen, game_screen.get_rect())

        # render screen
        pg.display.flip()

        # lock FPS
        game_clock.tick(FPS)

    # return the next state
    return next_state


def create_player(game_screen_rect: pg.Rect):
    # create default weapon
    energy_beam = Weapon(
        projectiles.BlueEnergyBeam,
        Weapon.INFINITE_AMMO,
        Weapon.DEFAULT_RATE_OF_FIRE,
    )
    player_attack = StandardAttack(
        energy_beam,
        groups.player_projectiles,
    )

    # create player object
    player = Player(game_screen_rect, player_attack)

    # add to sprite group
    groups.all_sprites.add(player)
    return player


def handle_collisions(player):
    # grunt + enemies collison
    # change Grunt strafe direction
    handled_enemies = set()
    for grunt in groups.grunt_enemies:
        collided_enemies = pg.sprite.spritecollide(
            grunt,
            groups.all_enemies,
            dokill=False,
            collided=pg.sprite.collide_mask,
        )
        for collided_enemy in collided_enemies:
            # skip for enemy colliding with itself and if the enemy has already been handled
            if grunt == collided_enemy or grunt in handled_enemies:
                continue
            if not grunt.moving_to_position:
                pass
                # grunt.switch_strafe_direction()
            handled_enemies.add(grunt)

    # projectiles + enemies collision
    # destroy projectile + damage enemy
    collided = pg.sprite.groupcollide(
        groups.player_projectiles,
        groups.all_enemies,
        dokilla=True,
        dokillb=False,
        collided=pg.sprite.collide_mask,
    )
    for projectile, enemies in collided.items():
        for enemy in enemies:
            enemy.take_damage(projectile.damage)

    # projectiles + player collision
    # destroy projectile + damage player
    collided = pg.sprite.spritecollide(
        player,
        groups.enemy_projectiles,
        dokill=False,
        collided=pg.sprite.collide_mask
    )
    for projectile in collided:
        player.take_damage(projectile.damage)
        projectile.kill()


def end_game():
    pass
