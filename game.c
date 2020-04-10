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

//Lizard Pooling
LIZARD lizard[LIZARDCOUNT];

//Fireball Pooling
FIREBALL fireball[FIREBALLCOUNT];

//Bird Animation State
enum {CBIRD1, CBIRD2, CBIRD3, FBIRD1, FBIRD2, FBIRD3};

//Lizard Animation State
enum {L1, L2, L3};

void initGame() {

    hOff = 134;

    //initialize casanova
    birds[0].width = 32;
    birds[0].height = 32;
    birds[0].col = 16;
    birds[0].row = (SCREENHEIGHT / 2 - 16);
    birds[0].isActive = 1;
    birds[0].aniState = CBIRD1;
    birds[0].aniCounter = 0;

    //initialize mates
    for (int i = 1; i < BIRDCOUNT; i++) {
        birds[i].width = 32;
        birds[i].height = 32;
        birds[i].col = 240;
        birds[i].row = rand() % 200;
        while((birds[i].row > 120) || birds[i].row < 0) {
             birds[i].row = rand() % 200;
        }
        birds[i].isActive = 0;
        birds[i].aniState = FBIRD1;
        birds[i].aniCounter = 0;
    }

    //initialize lizards
    for(int i = 0; i < LIZARDCOUNT; i++) {
        lizard[i].width = 32;
        lizard[i].height = 32;
        lizard[i].col = 240;
        lizard[i].row = rand() % 200;
        while((lizard[i].row > 120) || (lizard[i].row < 0)) {
            lizard[i].row = rand() % 200;
        }
        lizard[i].isActive = 0;
        lizard[i].aniState = L1;
        lizard[i].aniCounter = 0;
    }

    for (int j = 0; j < FIREBALLCOUNT; j++) {
        fireball[j].col = 240;
        fireball[j].row = rand() % 200;
        while((fireball[j].row > 120) || (fireball[j].row < 0)) {
            fireball[j].row = rand() % 200;
        }
        fireball[j].width = 16;
        fireball[j].height = 16;
        fireball[j].isActive = 0;
    }
    //initialize timer
    timer = 95;

    //initialize lizard timer
    lTimer = 0;

    //initialize fireball timer
    fTimer = 0;

    //initialize matesGone
    matesGone = 0;

    //initialize matesKissed
    matesKissed = 0;

    //initialize levels
    level2 = 0;
    level3 = 0;

}

void updateGame() {
    //update background parallax
    hOff++;

    //check if level needs to change
   if (matesKissed == 10) {
        level2 = 1;
        if (lTimer > 100) {
            lTimer = 50;
        }
    } else if (matesKissed == 20) {
        level3 = 1;
    }

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
    if (level2 == 1) {
        if (lTimer == 100) {
            for (int i = 0; i < LIZARDCOUNT; i++) {
                if (!lizard[i].isActive) {
                    lizard[i].col = 240;
                    lizard[i].row = rand() % 200;
                    while((lizard[i].row > 120) || (lizard[i].row < 0)) {
                        lizard[i].row = rand() % 200;
                    }
                    lizard[i].isActive = 1;
                    lizard[i].aniState = L1;
                    lizard[i].aniCounter = 0;
                    if (level3) {
                        for (int j = 0; j < FIREBALLCOUNT; j++) {
                            if(!fireball[j].isActive) {
                                fireball[j].col = lizard[i].col;
                                fireball[j].row = lizard[i].row + 8;
                                fireball[j].isActive = 1;
                                break;
                            }
                            fTimer = 0;
                        }
                    }
                    break;
                }
            }
            lTimer = 0;
        }
    } else {
        if (lTimer == 350) {
            for (int i = 0; i < LIZARDCOUNT; i++) {
                if (!lizard[i].isActive) {
                    lizard[i].col = 240;
                    lizard[i].row = rand() % 200;
                    while((lizard[i].row > 120) || (lizard[i].row < 0)) {
                        lizard[i].row = rand() % 200;
                    }
                    lizard[i].isActive = 1;
                    lizard[i].aniState = L1;
                    lizard[i].aniCounter = 0;
                    break;
                }
            }
            lTimer = 0;
        }
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
                matesKissed++;
            }
            birds[i].aniCounter++;
        }
     } 

     //update lizards position and aniState
    for (int i = 0; i < LIZARDCOUNT; i++) {
        if (lizard[i].isActive) {
            if (level2) {
                if (lizard[i].col < 2) {
                    lizard[i].isActive = 0;
                } else {
                    lizard[i].col -= 2;
                }
            } else {
                if (lizard[i].col == 0) {
                    lizard[i].isActive = 0;
                } else {
                    lizard[i].col--;
                }
            }
            if (lizard[i].aniCounter == 8) {
                if (lizard[i].aniState != L3) {
                    lizard[i].aniState++;
                } else {
                    lizard[i].aniState = L1;
                }
                lizard[i].aniCounter = 0;
            }
            if((collision(birds[0].col, birds[0].row, birds[0].width,
            birds[0].height, lizard[i].col, lizard[i].row, lizard[i].width, lizard[i].height))) {
                lizard[i].isActive = 0;
                matesGone = 5;
            }
            lizard[i].aniCounter++;

            //update fireball
            if (level3) {
                for(int j = 0; j < FIREBALLCOUNT; j++) {
                    if (fireball[j].isActive) {
                        if (fireball[j].col < 3) {
                            fireball[j].isActive = 0;
                        } else {
                            fireball[j].col = fireball[j].col - 3;
                        }
                        if((collision(birds[0].col, birds[0].row, birds[0].width,
                        birds[0].height, fireball[j].col, fireball[j].row, fireball[j].width, fireball[j].height))) {
                            fireball[j].isActive = 0;
                            matesGone = 5;
                        }
                    }
                }
            }
        }
    }
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
            shadowOAM[i].attr1 = ATTR1_MEDIUM | birds[i].col;
            shadowOAM[i].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(birds[i].aniState * 4, 0 * 4);
        } else {
            shadowOAM[i].attr0 = ATTR0_HIDE;
        }
    }

    //draw lizards
    for (int i = 0; i < LIZARDCOUNT; i++) {
        if (lizard[i].isActive) {
            shadowOAM[4+i].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | lizard[i].row;
            shadowOAM[4+i].attr1 = ATTR1_MEDIUM | lizard[i].col;
            shadowOAM[4+i].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(lizard[i].aniState * 4, 4);
        } else {
            shadowOAM[4+i].attr0 = ATTR0_HIDE;
        }
    }

    //draw fireball
    for (int i = 0; i < FIREBALLCOUNT; i++) {
        if (fireball[i].isActive) {
            shadowOAM[7+i].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | fireball[i].row;
            shadowOAM[7+i].attr1 = ATTR1_SMALL | fireball[i].col;
            shadowOAM[7+i].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(12, 6);
        } else {
            shadowOAM[7+i].attr0 = ATTR0_HIDE;
        }
    }

    waitForVBlank();

    REG_BG1HOFF = hOff / 4;
    REG_BG0HOFF = hOff / 2;

    DMANow(3, shadowOAM, OAM, 512);
}