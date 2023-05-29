# 3rd-party imports
import pygame
from pygame.locals import QUIT, RESIZABLE

# project imports
from defs import SCREEN_WIDTH, SCREEN_HEIGHT
from states import GameState, transition_state

# initial pygame setup
pygame.init()

# set up display
MAIN_SCREEN = pygame.display.set_mode(
    (SCREEN_WIDTH, SCREEN_HEIGHT),
    flags=RESIZABLE,
)
pygame.display.set_caption('HYPER LYDIAN')

# set up clock
CLOCK = pygame.time.Clock()


def initialize_game():
    pass


def main():
    """Main Program Loop"""
    main_loop = True
    next_state = GameState.MAIN_MENU

    while main_loop:
        # event handler
        for event in pygame.event.get():
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
    initialize_game()
    main()
    pygame.quit()
