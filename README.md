![title_card](assets/png/github/itchio_header.png) <!-- markdownlint-disable-line -->

Welcome to HyperLydian, a top-down 2D space shooter that goes beyond the ordinary gaming experience by blending multidirectional shooter gameplay with dynamic music creation. Prepare to embark on an extraordinary journey where your actions as a player shape the very fabric of the soundtrack.

In a not-so-distant future, Earth faces an invasion from an alien race that is devoid of the ability to appreciate music. Intent on dismantling humanity's greatest achievement, they threaten to erase the essence of rhythm and melody from our world. Standing as the last line of defense, our courageous protagonist, Lydian, emerges to confront the invaders head-on, armed with the power of infectious tunes, danceworthy beats... and GUNS!

HyperLydian immerses you in a unique amalgamation of interactive gameplay and creative music-making. Each move you make, every shot you fire, and every adversary you overcome will dynamically influence the evolving soundtrack. It's not just a game; it's a musical instrument disguised as a space shooter.

The fate of humanity's music rests in your hands. So, jump into the cosmic battlefield and let the melody of the universe guide your way to victory! The power of music is not just in the notes, but in your hands as you wield the guns and the groove to save humanity.

## Overview

HyperLydian is a Digital Instrument disguised as a top-down 2D space-shooter. Every action the player takes will have an influence on changing the game's soundtrack: such as adding rests or notes, changing the tempo, scale, and key, modulating the parameters of various effects (e.g. reverb or delay), and much more.

Gameplay-wise it is heavily inspired by the bullet hell genre in which the player is bombarded by projectiles and has to deal with an overload of visual information. Musically it takes inspiration from generative music and Eurorack principles, particularly the idea of experiencing a unique piece of music on each iteration and the feeling of limitless exploration.

## Game Details

Read the **[HyperLydian | A Detailed Description](https://docs.google.com/document/d/1ugD658rL3Vi32GL9vDijxxINv15wIo75vuHTpG1NvUc/edit?usp=sharing)** document for an in-depth guide into the game mechanics and technical details.

Watch the **[HyperLydian Game Trailer](https://youtu.be/8B7LRShHdi0?si=9L2K8aVrS0d2FJR0)**.

Watch an in-depth **[HyperLydian Gameplay Demo](https://youtu.be/NnmMC1h0PUg?si=e2VY52XC4lz3x-NG)**.

## How to Install and Run

### *Download the Application*

You can download the main application from either:

1. [HyperLydian Itch.io](https://gloliva.itch.io/hyperlydian) page
2. [HyperLydian Github Releases](https://github.com/gloliva/hyperlydian/releases) page.

Download the `HyperLydian-<OS>-<Architecture>.zip` file that is appropriate for your OS and open the zip file to extract the `HyperLydian` application.

### *Run the Game*

#### Microsoft Windows

Click into the HyperLydian folder and then double-click the `HyperLydian` executable.

#### Apple MacOS

Find the `HyperLydian` application in Finder and double-click on it.
If the application does not run due to MacOS restrictions, right-click on the application in Finder and select `open`, you may be prompted asking you if you want to open an application from an unregistered developer, click yes.

If the above does not work, then you will need to open the Terminal and run the following commands:

```bash
sudo chmod -R 755 <path-to-app>/HyperLydian.app
sudo xattr -dr com.apple.quarantine <path-to-app>/HyperLydian.app
```

You should replace `<path-to-app>` with the correct path to HyperLydian.app. For example, if you extracted the HyperLydian application to your Downloads folder, you would run:

```bash
sudo chmod -R 755 ~/Downloads/HyperLydian.app
sudo xattr -dr com.apple.quarantine ~/Downloads/HyperLydian.app
```

Additionally for MacOS, the Max Standalone will ask you permission to use your microphone. This is due to MacOS security restrictions and you must click yes for the software to work. However, the Max Standalone application **does not** use your microphone or record from any input device.

#### Addtional Details All Operating Systems

The HyperLydian application should open first, followed by the Max Standalone application. The game is played via the HyperLydian app, but the Max Standalone can be viewed to see how the music evolves as the game is played.

## How to Play

Maneuver around the screen, shooting at enemies, dodging bullets, and reclaiming notes.

RED objects are dangerous and will damage the player if you collide with them.

GOLD notes will increase your score; collect them by flying into them.

Occasionally enemies will drop BLUE health packs, fly into these to heal the player. Get them quickly before they disappear.

Explore different play styles to see how the music evolves: shoot enemies from up close or at a distance, swap between different weapons, focus on movement or rotation, constantly shoot or time your shots carefully; different play styles will reward different musical explorations.

## Controls

### In Menu

`Arrow Keys` - Move Menu Selection Up / Down

`Enter` - Select Menu Item

### In Game

`Arrow Keys` - Move Player

`W` or `Space` - Shoot

`R` - Switch Weapon

`Q` - Rotate Player Counter-Clockwise

`E` - Rotate Player Clockwise

## Images

**[CLICK HERE](https://imgur.com/a/8N6KZjA)** to view screenshots taken of the HyperLydian Max Patch and its subpatches and abstractions.

## Tools Used

### Game Programming

Python Versions: Python3.8 and Python3.11  
Packages for game development: pygame-ce, python-osc, sounddevice  
Packages for application development: pyinstaller, Pillow

### Music Programming

Max 8  
Max Packages: odot

### Artwork (Sprites and Animations)

Pyxel Edit

## Future Ambitions

HyperLydian is a complete, fully-functioning game and digital instrument; however, it acts as a proof-of-concept for a much grander vision. A future project would expand upon the core ideas of HyperLydian by creating a game that, when completed, would produce an album of generated music. Each level of the game would produce one song, and the completion of all of the levels would produce the full album.

Features and Goals of the project include:

* **Distinct levels**: Each level has a unique musical theme / genre / sound palette and the game will shape and change the music using this as a guideline. The game will still allow for musical exploration, but will keep the level's theme apparent.
* **Runtime Length Selection**: The player can choose how long they want the final collection of songs to be in terms of runtime:
  * Single: Between 2-8 minutes
  * EP: Between 15-30 minutes
  * Album: Between 30-60 minutes
  * Double Album: Between 60-120 minutes

  This selection will both change how many levels the player must complete to finish the game as well as how long each level takes to complete.
* **Multiplayer**: The process of making music often involves collaboration with other people. A multiplayer mode would allow 2-4 people to play the game together, where each person is influencing one "voice" or "instrument", and the combination of all the players' actions will create the song.
* **Album Editor**: By default, playing the game from start to finish will produce an album based on that specific playthrough. In addition to this, runs of each level will be saved and the player can select specific songs produced by a level to have more control over the produced album. This will allow the player to blend their favorite parts of different runs into a single collection.
* **Community Sharing**: Foster a community for the game that encourages sharing completed pieces produced by completing the game.
* **Replayability**: There should be enough variation of each level and each full runthrough of the game that the completed pieces of music sound distinct to encourage multiple playthroughs of the game.

This would be a very ambitious undertaking, but HyperLydian is a testament that this future project is achievable and worthwhile.

## Credits

All programming, art assets, and music written, designed, and created by Gregg Oliva.

Thank you for playing my game.
