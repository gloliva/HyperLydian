# 3rd-party imports
import pygame as pg
from pygame.locals import (
    K_UP,
    K_DOWN,
    K_ESCAPE,
    K_RETURN,
    KEYDOWN,
    QUIT,
    SRCALPHA,
)

# project imports
from defs import (
    FPS,
    SCREEN_WIDTH,
    SCREEN_HEIGHT,
    GameState,
    FADE_FRAMES,
    FADE_MULTIPLIER,
)
from events import Event, initialize_menu_timers, disable_menu_timers
from menus.base import Menu, clean_up_menu
import sprites.groups as groups
import sprites.background as background
from sprites.menus import MainTitle
from stats import stat_tracker
from text import TransitionText


MENU_SCREEN = pg.Surface((SCREEN_WIDTH, SCREEN_HEIGHT), flags=SRCALPHA)


# Create Main Menu
MAIN_MENU = Menu(GameState.MAIN_MENU, MENU_SCREEN)
MAIN_MENU.add_text(
    TransitionText(
        'START', 'spacemono', 48, (255, 255, 255, 255), (SCREEN_WIDTH/2, 415),
        outline_size=2,
        transition_state=GameState.GAMEPLAY,
    ),
    TransitionText(
        'HOW TO PLAY', 'spacemono', 48, (255, 255, 255, 255), (SCREEN_WIDTH/2, 515),
        outline_size=2,
        transition_state=GameState.HOW_TO_PLAY,
    ),
    TransitionText(
        'SETTINGS', 'spacemono', 48, (255, 255, 255, 255), (SCREEN_WIDTH/2, 615),
        outline_size=2,
        transition_state=GameState.SETTINGS,
    ),
    TransitionText(
        'CREDITS', 'spacemono', 48, (255, 255, 255, 255), (SCREEN_WIDTH/2, 715),
        outline_size=2,
        transition_state=GameState.CREDITS,
    ),
    TransitionText(
        'QUIT', 'spacemono', 48, (255, 255, 255, 255), (SCREEN_WIDTH/2, 815),
        outline_size=2,
        transition_state=GameState.QUIT,
    ),
)


def run_main_menu(game_clock: pg.time.Clock, main_screen: pg.Surface):
    """
    MAIN MENU is the primary menu to start the game.

    This is the Menu loop that handles transitions to the GAMEPLAY, CREDITS, and HOW TO PLAY states.
    """
    # draw initial background
    for _ in range(background.Note.NUM_ON_LOAD):
        note = background.Note(MENU_SCREEN.get_rect(), on_load=True, in_menu=True)
        groups.notes.add(note)
        groups.all_sprites.add(note)

    for _ in range(background.Star.NUM_ON_LOAD):
        star = background.Star(MENU_SCREEN.get_rect(), on_load=True)
        groups.stars.add(star)
        groups.all_sprites.add(star)

    blackhole = background.BlackHole(main_screen.get_rect())

    # hyperlydian Title
    title = MainTitle(MENU_SCREEN.get_rect())
    MAIN_MENU.init_menu_select()

    # update stats
    stat_tracker.control__menu_init.update(1)
    stat_tracker.send_stats()

    # initialize events
    initialize_menu_timers()

    # start main menu loop
    main_menu_loop = True
    while main_menu_loop:
        # event handler
        for event in pg.event.get():
            if event.type == KEYDOWN:
                if event.key == K_ESCAPE:
                    main_menu_loop = False
                    next_state = GameState.QUIT

                if event.key == K_RETURN:
                    main_menu_loop = False
                    next_state = MAIN_MENU.select_text()

                if event.key == K_DOWN:
                    MAIN_MENU.move_text_cursor(1)

                if event.key == K_UP:
                    MAIN_MENU.move_text_cursor(-1)

            # handle creating background
            elif event.type == Event.ADD_NOTE.type:
                for _ in range(background.Note.NUM_NOTES_PER_MENU_EVENT):
                    note = background.Note(MENU_SCREEN.get_rect(), in_menu=True)
                    groups.notes.add(note)
                    groups.all_sprites.add(note)

            elif event.type == QUIT:
                main_menu_loop = False
                next_state = GameState.QUIT

        # update background
        blackhole.update(main_screen.get_rect(), in_menu=True)

        # update notes
        groups.notes.update(MENU_SCREEN.get_rect(), in_menu=True, blackhole_rect=blackhole.rect)

        # update stars
        groups.stars.update(MENU_SCREEN.get_rect(), in_menu=True)

        # draw background
        MENU_SCREEN.fill("black")

        MENU_SCREEN.blit(blackhole.surf, blackhole.rect)

        for sprite in groups.all_sprites:
            MENU_SCREEN.blit(sprite.surf, sprite.rect)

        # collision detection
        handle_collisions(blackhole)

        # draw title
        MENU_SCREEN.blit(title.surf, title.rect)

        # draw text
        MAIN_MENU.update()

        # draw menu to main display
        main_screen.blit(MENU_SCREEN, MENU_SCREEN.get_rect())

        # render screen
        pg.display.flip()

        # lock FPS
        game_clock.tick(FPS)

    # disable menu events
    disable_menu_timers()

    # fade out if starting game
    if next_state == GameState.GAMEPLAY:
        start_game_fade_out(game_clock, main_screen, blackhole)

    clean_up_menu()
    return next_state


def start_game_fade_out(game_clock: pg.time.Clock, main_screen: pg.Surface, blackhole: background.BlackHole):
    """
    If transitioning back into the Game, begin a fade-out by drawing a white surface to the screen
    and increasing its alpha value over time.
    """
    fade_surf = pg.Surface(main_screen.get_size())
    fade_surf.fill('white')
    curr_fade_out_frame = 0

    while curr_fade_out_frame < FADE_FRAMES:
        # update fade out alpha
        new_alpha = int(curr_fade_out_frame * FADE_MULTIPLIER)
        fade_surf.set_alpha(new_alpha)

        # update background
        blackhole.update(main_screen.get_rect(), in_menu=True)

        # update notes
        groups.notes.update(MENU_SCREEN.get_rect(), in_menu=True, blackhole_rect=blackhole.rect)

        # update stars
        groups.stars.update(MENU_SCREEN.get_rect(), in_menu=True)

        # draw all sprites
        for sprite in groups.all_sprites:
            main_screen.blit(sprite.surf, sprite.rect)

        # handle fade-in on game start
        main_screen.blit(fade_surf, fade_surf.get_rect())

        # render screen
        pg.display.flip()

        curr_fade_out_frame += 1

        # lock FPS
        game_clock.tick(FPS)


def handle_collisions(blackhole: background.BlackHole):
    """
    Handle collisions between notes nad blackhole to make it look like notes
    are getting swallowed up by the blackhole.
    """
    # blackhole and stars
    pg.sprite.spritecollide(
        blackhole,
        groups.stars,
        dokill=True,
        collided=pg.sprite.collide_circle_ratio(0.6),
    )
