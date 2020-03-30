#include "myLib.h"
#include "game.h"
#include "sky.h"
#include "treetop.h"
#include "spritesheet.h"
#include <stdlib.h>
#include <stdio.h>

//ShadowOAM
OBJ_ATTR shadowOAM[128];

//Bird Pooling
BIRD birds[BIRDCOUNT];

//Lizard
LIZARD lizard;

//Bird Animation State
enum {CBIRD1, CBIRD2, CBIRD3, FBIRD1, FBIRD2, FBIRD3, L1, L2, L3};

void initGame() {

    hOff = 134;

    //initialize casanova
    birds[0].width = 16;
    birds[0].height = 16;
    birds[0].col = 16;
    birds[0].row = (SCREENHEIGHT / 2 - 16);
    birds[0].isActive = 1;
    birds[0].aniState = CBIRD1;
    birds[0].aniCounter = 0;

    //initialize mates
    for (int i = 1; i < BIRDCOUNT; i++) {
        birds[i].width = 16;
        birds[i].height = 16;
        birds[i].col = 240;
        birds[i].row = rand() % 200;
        while((birds[i].row > 120) || birds[i].row < 0) {
             birds[i].row = rand() % 200;
        }
        birds[i].isActive = 0;
        birds[i].aniState = FBIRD1;
        birds[i].aniCounter = 0;
    }

    //initialize lizard
    lizard.width = 16;
    lizard.height = 16;
    lizard.col = 240;
    lizard.row = rand() % 200;
    while((lizard.row > 120) || (lizard.row < 0)) {
        lizard.row = rand() % 200;
    }
    lizard.isActive = 0;
    lizard.aniState = L1;
    lizard.aniCounter = 0;

    //initialize timer
    timer = 95;

    //initialize lizard timer
    lTimer = 0;

    //initialize matesGone
    matesGone = 0;
}

void updateGame() {
    //update background parallax
    hOff++;

    //Update casanova positiion
    if (BUTTON_HELD(BUTTON_UP)) {
        if (birds[0].row > 0) {
            birds[0].row -= 1;
        } else {
            birds[0].row = birds[0].row;
        }
    }

    if (BUTTON_HELD(BUTTON_DOWN)) {
        if (birds[0].row < 120) {
            birds[0].row += 1;
        } else {
            birds[0].row = birds[0].row;
        }
    }

    //Update casanova aniState
    if (birds[0].aniCounter == 8) {
        if (birds[0].aniState != CBIRD3) {
            birds[0].aniState++;
        } else {
            birds[0].aniState = CBIRD1;
        }
        birds[0].aniCounter = 0;
    }

    birds[0].aniCounter++;

    //update timer
    timer++;

    //update lizard timer
    lTimer++;

    //add new mates
   if (timer == 100) {
        for (int i = 1; i < BIRDCOUNT; i++) {
            if (!birds[i].isActive) {
                birds[i].col = 240;
                birds[i].row = rand() % 200;
                while((birds[i].row > 120) || birds[i].row < 0) {
                    birds[i].row = rand() % 200;
                }
                birds[i].isActive = 1;
                birds[i].aniState = FBIRD1;
                birds[i].aniCounter = 0;
                break;
            }
        }
        timer = 0;
     }

    //add lizard
     if (lTimer == 250) {
        lizard.width = 16;
        lizard.height = 16;
        lizard.col = 240;
        lizard.row = rand() % 200;
        while((lizard.row > 120) || (lizard.row < 0)) {
            lizard.row = rand() % 200;
        }
        lizard.isActive = 0;
        lizard.aniState = L1;
        lizard.aniCounter = 0;

     }

     //update mates position and aniState
     for (int i = 1; i < BIRDCOUNT; i++) {
        if (birds[i].isActive) {
            birds[i].col--;
            if (birds[i].aniCounter == 8) {
                if (birds[i].aniState != FBIRD3) {
                    birds[i].aniState++;
                } else {
                    birds[i].aniState = FBIRD1;
                }
                birds[i].aniCounter = 0;
            }
            if (birds[i].col == 0) {
                birds[i].isActive = 0;
                matesGone++;
            }
            if((collision(birds[0].col, birds[0].row, birds[0].width,
            birds[0].height, birds[i].col, birds[i].row, birds[i].width, birds[i].height))) {
                birds[i].isActive = 0;
            }
            birds[i].aniCounter++;
        }
     } 

     //update lizards po
}

void drawGame() {

    //draw Casanova
    shadowOAM[0].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | birds[0].row;
    shadowOAM[0].attr1 = ATTR1_MEDIUM | birds[0].col;
    shadowOAM[0].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(birds[0].aniState * 4, 0 * 4);

    //draw mates
   for(int i = 1; i < BIRDCOUNT; i++) {
        if (birds[i].isActive) {
            shadowOAM[i].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | birds[i].row;
            shadowOAM[i].attr1 = ATTR1_MEDIUM| birds[i].col;
            shadowOAM[i].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(birds[i].aniState * 4, 0 * 4);
        } else {
                shadowOAM[i].attr0 = ATTR0_HIDE;
        }
    }
    waitForVBlank();

    REG_BG1HOFF = hOff / 4;
    REG_BG0HOFF = hOff / 2;

    DMANow(3, shadowOAM, OAM, spritesheetPalLen);
}