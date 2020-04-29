#include "myLib.h"
#include "start.h"
#include "skystart.h"
#include "instructions.h"
#include "sky.h"
#include "game.h"
#include "pause.h"
#include "skypause.h"
#include "lose.h"
#include "skylose.h"
#include "level2.h"
#include "skylevel2.h"
#include "level3.h"
#include "skylevel3.h"
#include "spritesheet.h"
#include "tree.h"
#include "startSong.h"
#include "gameSong.h"
#include "loseSong.h"
#include "pauseSong.h"
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
int state;

//screenblock variables
int screenBlockBG0;
int screenBlockBG1;

int main() {

    initialize();

    while(1) {

        oldButtons = buttons;
        buttons = BUTTONS;

        waitForVBlank();

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

        REG_BG0HOFF = hOff0 / 2;
        REG_BG1HOFF = hOff1 / 4;
        REG_BG0VOFF = vOff0;
        REG_BG1VOFF = vOff1;
        
	}

    return 0;
}

//initialize game
void initialize() {

    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_SMALL;

    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_4BPP | BG_SIZE_SMALL;

    setupSounds();
	setupInterrupts();

    seed = 0;
    hOff0 = 0; 
    hOff1 = 0;
    vOff0 = 0;
    vOff1 = 0;
    screenBlockBG0 = 28;
    screenBlockBG1 = 4;

    goToStart();
}

//Sets up the Start State
void goToStart() {

    //initialize sky
    DMANow(3, skystartPal, PALETTE, skystartPalLen);

    DMANow(3, skystartTiles, &CHARBLOCK[1], skystartTilesLen);

    DMANow(3, skystartMap, &SCREENBLOCK[30], skystartMapLen);

    //initializes start
    DMANow(3, startTiles, &CHARBLOCK[0], startTilesLen);

    DMANow(3, startMap, &SCREENBLOCK[28], startMapLen);

    playSoundA(startSong, STARTSONGLEN, 1);
    
    state = START;

    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);

}

//start state
void start() {

    seed++;
    hOff1++;

    if(BUTTON_PRESSED(BUTTON_START)) {
        srand(seed);
        stopSound();
        playSoundA(gameSong, GAMESONGLEN - 75, 1);
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

    DMANow(3, skyTiles, &CHARBLOCK[1], skyTilesLen);

    DMANow(3, skyMap, &SCREENBLOCK[30], skyMapLen);

    //initializes treetops
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_WIDE;

    DMANow(3, treeTiles, &CHARBLOCK[0], treeTilesLen / 2);

    DMANow(3, treeMap, &SCREENBLOCK[28], treeMapLen / 2);

    //initializes sprites
    DMANow(3, spritesheetPal, SPRITEPALETTE, 256);

    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);

    REG_BLDCNT = BLD_OBJa | BLD_BLACK;

    hideSprites();
    state = GAME;

}

//game state
void game() {

    updateGame();
    drawGame();

    if(BUTTON_PRESSED(BUTTON_START)) {
        gamehOff0 = hOff0;
        stopSoundB();
        pauseSoundA();
        playSoundB(pauseSong, PAUSESONGLEN - 100, 1);
        goToPause();
    }
   
    //lose condition
    if(matesGone == 5) {
        stopSound();
        playSoundA(loseSong, LOSESONGLEN - 500, 1);
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

    hOff0 = 0;

    //initialize sky
    DMANow(3, skylevel2Pal, PALETTE, 256);
    DMANow(3, skylevel2Tiles, &CHARBLOCK[1], skylevel2TilesLen);
    DMANow(3, skylevel2Map, &SCREENBLOCK[30], skylevel2MapLen);
    
    //initialize level 2
    DMANow(3, level2Tiles, &CHARBLOCK[0], level2TilesLen);
    DMANow(3, level2Map, &SCREENBLOCK[28], level2MapLen);

    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);

    state = LEVEL2;

}

//level 2 state
void level2State() {

    hOff1++;
    levelChangeTimer++;

    //timer for level transition
    if(levelChangeTimer == 300) {
        initLevel2();
        goToGame();
    }

}

//Sets up Level 3
void goToLevel3() {

    hOff0 = 0;

    //initialize sky
    DMANow(3, skylevel3Pal, PALETTE, 256);
    DMANow(3, skylevel3Tiles, &CHARBLOCK[1], skylevel3TilesLen);
    DMANow(3, skylevel3Map, &SCREENBLOCK[30], skylevel3MapLen);

    //initialize level 3
    DMANow(3, level3Tiles, &CHARBLOCK[0], level3TilesLen);
    DMANow(3, level3Map, &SCREENBLOCK[28], level3MapLen);

    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);

    state = LEVEL3;

}
//level 3 state
void level3State() {

    hOff1++;
    levelChangeTimer++;

    //timer for level transition
    if(levelChangeTimer == 300) {
        initLevel3();
        goToGame();
    }

}

//Sets up the Pause State
void goToPause() {

    hOff0 = 0;

    //initialize sky
    DMANow(3, skypausePal, PALETTE, skypausePalLen);
    DMANow(3, skypauseTiles, &CHARBLOCK[1], skypauseTilesLen);
    DMANow(3, skypauseMap, &SCREENBLOCK[30], skypauseMapLen);

    //initialize lose state
    DMANow(3, pauseTiles, &CHARBLOCK[0], pauseTilesLen);
    DMANow(3, pauseMap, &SCREENBLOCK[28], pauseMapLen);

    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    state = PAUSE;

}

//pause state
void pause() {

    hOff1++;

    if(BUTTON_PRESSED(BUTTON_START)) {
        stopSoundB();
        unpauseSoundA();
        hOff0 = gamehOff0;
        goToGame();
    }
    if(BUTTON_PRESSED(BUTTON_SELECT)) {
        stopSound();
        playSoundA(loseSong, LOSESONGLEN - 500, 1);
        goToLose();
    }
}

//Set Up Instructions State
void goToInstructions() {
    hOff0 = 0;

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;

    //initialize instructions
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_TALL | BG_4BPP;

    DMANow(3, instructionsPal, PALETTE, instructionsPalLen);
    DMANow(3, instructionsTiles, &CHARBLOCK[0], instructionsTilesLen);
    DMANow(3, instructionsMap, &SCREENBLOCK[28], instructionsMapLen);

    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    state = INSTRUCTIONS;
}

//instructions state
void instructions() {

    if(BUTTON_PRESSED(BUTTON_START)) {
        stopSound();
        playSoundA(gameSong, GAMESONGLEN - 75, 1);
        vOff0 = 0;
        initGame();
        goToGame();
    }

    //scroll down
    if(BUTTON_HELD(BUTTON_DOWN)) {
        if(vOff0 < 512-160-1) {
            vOff0++;
        }
    }

    //scroll up
    if(BUTTON_HELD(BUTTON_UP)) {
        if (vOff0 > 0) {
            vOff0--;
        }
    }

}

//Set up Lose State
void goToLose() {

    hOff0 = 0;

    //initialize sky
    DMANow(3, skylosePal, PALETTE, skylosePalLen);
    DMANow(3, skyloseTiles, &CHARBLOCK[1], skyloseTilesLen);
    DMANow(3, skyloseMap, &SCREENBLOCK[30], skyloseMapLen);

    //initialize lose state
    DMANow(3, loseTiles, &CHARBLOCK[0], loseTilesLen);
    DMANow(3, loseMap, &SCREENBLOCK[28], loseMapLen);
    
    hideSprites();
    drawScore(102, 135);
    drawLevel(104, 127);
    DMANow(3, shadowOAM, OAM, 512);
    state = LOSE;
}

//lose state
void lose() {

    hOff1++;
    
    if(BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }

}