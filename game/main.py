# 3rd-party imports
import pygame as pg
from pygame.locals import QUIT, RESIZABLE

# project imports
from defs import SCREEN_WIDTH, SCREEN_HEIGHT
from states import GameState, transition_state

# initial pygame setup
pg.init()

# set up display
MAIN_SCREEN = pg.display.set_mode(
    (SCREEN_WIDTH, SCREEN_HEIGHT),
    flags=RESIZABLE,
)
pg.display.set_caption('HYPER LYDIAN')

# set up clock
CLOCK = pg.time.Clock()


def main():
    """Main Program Loop"""
    main_loop = True
    next_state = GameState.MAIN_MENU

    while main_loop:
        # event handler
        for event in pg.event.get():
            # Quit the game
            if event.type == QUIT:
                main_loop = False

        # move to the next state
        next_state = transition_state(next_state, CLOCK, MAIN_SCREEN)
        if next_state is None:
            main_loop = False

        # lock FPS
        CLOCK.tick(60)


if __name__ == "__main__":
    # maybe initialize stuff, like fonts
    main()
    pg.quit()
