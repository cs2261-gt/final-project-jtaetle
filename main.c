/*
Milestone04:

Done: complete gameplay and sprites (minus the orb for the cheat), all states, a level 2
and a level 3 with splash screen transitions. In Level 2, there are more lizards and they
are faster. In Level 3, the lizards have fireballs. 3 animated sprite types (lizard, mates,
and Casanova). Hearts in the bottom left to symbolize lives. Start sound, game sound, and 
sound for when you miss a mate!! Both the Start and Game State Sounds loop after 30 seconds.

TODO: The cheat, which I think I want to be you press a button, an orb appears, then when you hit
the orb all of the mates line up and the lizards disappear. I also need to do the orb sprite for the cheat,
cleaning up some of the sprites and
backgrounds, more music.

To play the game: Follow the instructions! There are also instructions for what to do on each
screen if applicable.

Bugs: TBD! I havent found any yet. I do think the collisions (especially Casanova + lizard) need
to be cleaner but im working on that. Also, right now on level 3 each dragon only shoots one fireball.
I figured out why its happening but i kind of like it, so i may keep it. Also, I don't like how long the missed
mate sound is but im having trouble fixing that so any feedback on that would be greatly appreciated!!

*/
#include "myLib.h"
#include "start.h"
#include "instructions.h"
#include "sky.h"
#include "game.h"
#include "pause.h"
#include "lose.h"
#include "level2.h"
#include "level3.h"
#include "spritesheet.h"
#include "treetop.h"
#include "startSong.h"
#include "gameSong.h"
#include "sound.h"
#include <stdlib.h>
#include <stdio.h>

//Protoypes
void initialize();

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

//State Prototypes
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToInstructions();
void instructions();
void goToLose();
void lose();
void goToLevel2();
void level2State();
void goToLevel3();
void level3State();

//Random Seed
int seed;

//Sound
SOUND soundA;
SOUND soundB;

//States
enum {START, GAME, PAUSE, INSTRUCTIONS, LOSE, LEVEL2, LEVEL3};
int state = 0;

int main() {

    initialize();

    while(1) {

        oldButtons = buttons;
        buttons = BUTTONS;

        //waitForVBlank();

        switch (state) {
        case START:
            start();
            break;
        case GAME:
            game();
            break; 
        case PAUSE:
            pause();
            break;
        case INSTRUCTIONS:
            instructions();
            break;
        case LOSE:
            lose();
            break;
        case LEVEL2:
            level2State();
            break;
        case LEVEL3:
            level3State();
            break;
        default:
            break;
        }
	}

    return 0;
}

//initialize game
void initialize() {

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_LARGE;

    setupSounds();
	setupInterrupts(); 

    goToStart();

    seed = 0;
}

//Sets up the Start State
void goToStart() {
    DMANow(3, startPal, PALETTE, 16);
    DMANow(3, startTiles, &CHARBLOCK[0], startTilesLen / 2);
    DMANow(3, startMap, &SCREENBLOCK[28], 1024 * 4);

    playSoundA(startSong, STARTSONGLEN, 1);
    
    state = START;
}

//start state
void start() {

    seed++;

    if(BUTTON_PRESSED(BUTTON_START)) {
        srand(seed);
        stopSound();
        playSoundA(gameSong, GAMESONGLEN, 1);
        initGame();
        goToGame();
    }
    if(BUTTON_PRESSED(BUTTON_A)) {
        goToInstructions();
    }

}

//Sets up the Game State
void goToGame() {
    REG_BG0HOFF = 0;
    REG_BG1HOFF = 0;

    //initializes sky
    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;

    DMANow(3, skyPal, PALETTE, skyPalLen / 2);

    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3, skyTiles, &CHARBLOCK[1], skyTilesLen / 2);

    DMANow(3, skyMap, &SCREENBLOCK[30], skyMapLen / 2);

    //initializes treetops
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_WIDE;

    DMANow(3, treetopTiles, &CHARBLOCK[0], treetopTilesLen / 2);

    DMANow(3, treetopMap, &SCREENBLOCK[28], treetopMapLen / 2);

    //initializes sprites
    DMANow(3, spritesheetPal, SPRITEPALETTE, 256);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);

    hideSprites();
    state = GAME;
}

//game state
void game() {

    updateGame();
    drawGame();

    if(BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause();
    }
    if(matesGone == 5) {
        stopSound();
        goToLose();
    }
    if(initLevel2Change) {
        goToLevel2();
    }

    if(initLevel3Change) {
        goToLevel3();
    }
}

//Sets up Level 2
void goToLevel2() {

    REG_BG0HOFF = 0;

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_LARGE;

    DMANow(3, level2Pal, PALETTE, 16);
    DMANow(3, level2Tiles, &CHARBLOCK[0], level2TilesLen / 2);
    DMANow(3, level2Map, &SCREENBLOCK[28], 1024 * 4);

    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);

    state = LEVEL2;

}
//level 2 state
void level2State() {

    levelChangeTimer++;

    if(levelChangeTimer == 100000) {
        initLevel2();
        goToGame();
    }

}

//Sets up Level 3
void goToLevel3() {

    REG_BG0HOFF = 0;

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_LARGE;

    DMANow(3, level3Pal, PALETTE, 16);
    DMANow(3, level3Tiles, &CHARBLOCK[0], level3TilesLen / 2);
    DMANow(3, level3Map, &SCREENBLOCK[28], 1024 * 4);

    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);

    state = LEVEL3;

}
//level 3 state
void level3State() {

    levelChangeTimer++;

    if(levelChangeTimer == 100000) {
        initLevel3();
        goToGame();
    }

}

//Sets up the Pause State
void goToPause() {

    REG_BG0HOFF = 0;

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_LARGE;

    DMANow(3, pausePal, PALETTE, 16);
    DMANow(3, pauseTiles, &CHARBLOCK[0], pauseTilesLen / 2);
    DMANow(3, pauseMap, &SCREENBLOCK[28], 1024 * 4);

    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    state = PAUSE;
}

//pause state
void pause() {
    if(BUTTON_PRESSED(BUTTON_START)) {
        unpauseSound();
        goToGame();
    }
}

//Set Up Instructions State
void goToInstructions() {
    DMANow(3, instructionsPal, PALETTE, 16);
    DMANow(3, instructionsTiles, &CHARBLOCK[0], instructionsTilesLen / 2);
    DMANow(3, instructionsMap, &SCREENBLOCK[28], 1024 * 4);
    
    state = INSTRUCTIONS;
}

//instructions state
void instructions() {
    if(BUTTON_PRESSED(BUTTON_START)) {
        stopSound();
        playSoundA(gameSong, GAMESONGLEN, 1);
        initGame();
        goToGame();
    }
}

//Set up Lose State
void goToLose() {

    REG_BG0HOFF = 0;

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_LARGE;

    DMANow(3, losePal, PALETTE, 16);
    DMANow(3, loseTiles, &CHARBLOCK[0], loseTilesLen / 2);
    DMANow(3, loseMap, &SCREENBLOCK[28], 1024 * 4);
    
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    state = LOSE;
}

//lose state
void lose() {
    if(BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}
