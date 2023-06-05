# HyperLydian

## Requirements

You will need at least Python 3.7, although preferably Python 3.9+. Has been tested with Python 3.8 and Python 3.11. If you need help installing a new version of Python, check out [pyenv](https://github.com/pyenv/pyenv).

## Install

Will make this into a proper package at the end, but for now:

```bash
git clone git@github.com:gloliva/hyperlydian.git
cd hyperlydian
python3 -m venv .venv  # install reqs in a new venv
source .venv/bin/activate  # or activate.fish if using fish shell
python3 -m pip install -r requirements.txt
```

## Run Game

```bash
python3 game/main.py
```

## How to Play

Shoot everything you see. View the controls down below.

You can view some basic stats (like number of enemies killed) in the terminal post-game; these will be added to a post-game menu eventually.

## Where things are at

Screen size is 1440x900 (MacBook 13" default scaled resolution). Will maybe handle additional resolutions later; resize at your own risk.

Music, obviously. OSC data will be sent to Max/MSP for Music generation. This is what the PyOSC stuff is for.

No GUI yet, but it will happen.

Eventually there will be controller support.

The menu is just a placeholder, will be fleshed out towards the end.

Extremely in-progress; everything subject to change.

## Controls

`Arrow Keys` - Move

`Space` or `W` - Shoot

`R` - Cycle Weapons

`Q` - Rotate CCW

`E` - Rotate CW

### *GOOD LUCK*
