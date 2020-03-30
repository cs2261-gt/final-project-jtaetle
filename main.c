#include "myLib.h"
#include "start.h"
#include "instructions.h"
#include "sky.h"
#include "game.h"
#include "pause.h"
#include "lose.h"
#include "spritesheet.h"
#include "treetop.h"
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

//Random Seed
int seed;

//States
enum {START, GAME, PAUSE, INSTRUCTIONS, LOSE};
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

    goToStart();

    seed = 0;
}

//Sets up the Start State
void goToStart() {
    DMANow(3, startPal, PALETTE, 16);
    DMANow(3, startTiles, &CHARBLOCK[0], startTilesLen / 2);
    DMANow(3, startMap, &SCREENBLOCK[28], 1024 * 4);
    
    state = START;
}

//start state
void start() {

    seed++;

    if(BUTTON_PRESSED(BUTTON_START)) {
        srand(seed);
        initGame();
        goToGame();
    }
    if(BUTTON_PRESSED(BUTTON_A)) {
        goToInstructions();
    }

}

//Sets up the Game State
void goToGame() {

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
        goToPause();
    }
    if(matesGone == 5) {
        goToLose();
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
    DMANow(3, shadowOAM, OAM, spritesheetPalLen);
    state = PAUSE;
}

//pause state
void pause() {
    if(BUTTON_PRESSED(BUTTON_START)) {
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
    DMANow(3, shadowOAM, OAM, spritesheetPalLen);
    state = LOSE;
}

//lose state
void lose() {
    if(BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}
