#include "myLib.h"
#include "game.h"
#include "spritesheet.h"
#include "sound.h"
#include "missedMate.h"
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

//Heart Pooling
HEART heart[HEARTCOUNT];

//Lost Life Pooling
LOSTLIFE lostLife[LOSTLIFECOUNT];

//Bird Animation State
enum {CBIRD1, CBIRD2, CBIRD3, FBIRD1, FBIRD2, FBIRD3};

//Lizard Animation State
enum {LIZARD1, LIZARD2, LIZARD3};

void initGame() {

    initCasanova();

    initMates();

    initLizard();

    initFireball();

    initHeart();

    initScore();

    initLostLife();

    //initialize timer
    timer = 95;

    //initialize lizard timer
    lTimer = 0;

    //initialize level timer
    levelChangeTimer = 0;

    //initialize alpha blend timer
    alphaBlendTimer = 0;

    //initialize level 2 change
    initLevel2Change = 0;

    //initialize level 3 change
    initLevel3Change = 0;

    //initialize matesGone
    matesGone = 0;

    //initialize matesKissed
    matesKissed = 0;

    //initialize levels
    level2 = 0;
    level3 = 0;
    

    //initialize level display
    level = 1;

    //initialize cheat
    isCheat = 0;

    //initialize alpha weight
    blackWeight = 16;

    //initialize alpha indicator
    alphaUp = 0;
    alphaDown = 0;

    //initialize gamehOff0
    gamehOff0 = 0;

}

void updateGame() {
    //check to see if lizard time change needed
    if(level2) {
        if (lTimer > 100) {
            lTimer = 50;
        }
    }

    //check to see if cheat activate or deactivated
    if(BUTTON_PRESSED(BUTTON_A)) {
        if(!(isCheat)){ 
            isCheat++;
        } else {
            isCheat = 0;
        }
    }
    //update background parallax
    hOff0++;
    hOff1++;

    //update timer
    timer++;

    updateCasanova();

    addMates();

    //update lizard timer
    lTimer++;
    addLizard();

    updateMates();

    updateLizard();

    if (!(isCheat)) {

        updateFireball();

    }

    updateHeart();

    updateScore();

    alphaBlending();

}

void drawGame() {
    
    if(!(isCheat)) {

        drawCasanova();

    } else {

        drawCasanovaCheat();

    }

    drawMates();

    drawLizard();

    drawFireball();

    drawHeart();

    drawScore(2, 0);
    
    drawLevel(200, 0);

    drawLostLife();

    REG_BLDY = BLD_EY((blackWeight));
    DMANow(3, shadowOAM, OAM, 512);
}

//initialize level2
void initLevel2() {
    //increase level display 
    level++;
    //reset bg0 hOff
    hOff0 = 0;
    gamehOff0 = hOff0;
    initLevel2Change = 0;
    levelChangeTimer = 0;

    initCasanova();

    initMates();

    initLizard();

    initFireball();

    initLostLife();

}

void initLevel3() {
    //update level
    level++;

    //reset bg0 hOff
    hOff0 = 0;
    gamehOff0 = hOff0;
    initLevel3Change = 0;
    levelChangeTimer = 0;

    initCasanova();

    initMates();

    initLizard();

    initFireball();

    initLostLife();

}

//adjust alpha blending
void alphaBlending() {
    if (matesGone < 4) {
        if (blackWeight > 0) {
            blackWeight--;
        }
    } else {
        if (alphaBlendTimer == 1) {
            if (blackWeight == 0) {
                alphaUp = 1;
                alphaDown = 0;
            } else if (blackWeight == 16) {
                alphaDown = 1;
                alphaUp = 0;
            }
            if (alphaUp) {
                blackWeight++;
            } else if (alphaDown) {
                blackWeight--;
            }
            alphaBlendTimer = 0;
        }
        alphaBlendTimer++;
    }
}

//draw level 200, 216, 228
void drawLevel(int col, int row) {
    //draw LEVEL: 
    shadowOAM[10].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | row | ATTR0_NOBLEND;
    shadowOAM[10].attr1 = ATTR1_SMALL | col;
    shadowOAM[10].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(4, 10);
    shadowOAM[11].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | row | ATTR0_NOBLEND;
    shadowOAM[11].attr1 = ATTR1_SMALL | (col + 16);
    shadowOAM[11].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(6, 10);

    //draw the actual level
    shadowOAM[12].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | row | ATTR0_NOBLEND;
    shadowOAM[12].attr1 = ATTR1_SMALL | (col + 28);
    shadowOAM[12].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(2 * level, 8);
}

//initializes casanova
void initCasanova() {
    birds[0].width = 24;
    birds[0].height = 32;
    birds[0].col = 16;
    birds[0].row = (SCREENHEIGHT / 2 - 16);
    birds[0].isActive = 1;
    birds[0].aniState = CBIRD1;
    birds[0].aniCounter = 0;
}

//Update casanova positiion
void updateCasanova() {
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
}

//draw Casanova
void drawCasanova(){
    shadowOAM[13].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | birds[0].row;
    shadowOAM[13].attr1 = ATTR1_MEDIUM | birds[0].col;
    shadowOAM[13].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(birds[0].aniState * 4, 0);
}

//draw Casanova Cheat Mode
void drawCasanovaCheat() {
    shadowOAM[13].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | birds[0].row;
    shadowOAM[13].attr1 = ATTR1_MEDIUM | birds[0].col;
    shadowOAM[13].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(birds[0].aniState * 4, 4);
}

//initializes mates
void initMates() {
    for (int i = 1; i < BIRDCOUNT; i++) {
        birds[i].width = 24;
        birds[i].height = 32;
        birds[i].col = 240;
        birds[i].row = rand() % 200;
        while((birds[i].row > 120) || birds[i].row < 0) {
             birds[i].row = rand() % 200;
        }
        birds[i].isActive = 0;
        birds[i].aniState = FBIRD1;
        birds[i].aniCounter = 0;
        birds[i].missedTimer = 0;
    }
}

//add new mates
void addMates() {
    //add new mates
   if (timer == 100) {
        for (int i = 1; i < BIRDCOUNT; i++) {
            if (!birds[i].isActive) {
                birds[i].col = 240;
                if (!(isCheat)) {
                    birds[i].row = rand() % 200;
                } else {
                    birds[i].row = birds[0].row;
                }
                while((birds[i].row > 120) || (birds[i].row < 0)) {
                    birds[i].row = rand() % 200;
                }
                birds[i].isActive = 1;
                birds[i].aniState = FBIRD1;
                birds[i].aniCounter = 0;
                birds[i].missedTimer = 0;
                break;
            }
        }
        timer = 0;
     }
}

//update mates position and aniState
void updateMates() {
     for (int i = 1; i < BIRDCOUNT; i++) {
        if (birds[i].isActive) {
            birds[i].col --;
            if (isCheat) {
                birds[i].row = birds[0].row;
            }
            if (birds[i].aniCounter == 8) {
                if (birds[i].aniState != FBIRD3) {
                    birds[i].aniState++;
                } else {
                    birds[i].aniState = FBIRD1;
                }
                birds[i].aniCounter = 0;
            }
            if (birds[i].col == 0) {
                //birds[i].missedTimer++;
                addLostLife(birds[i].col, birds[i].row);
                playSoundB(missedMate, MISSEDMATELEN - 125, 0);
                birds[i].isActive = 0;
                matesGone++;
            }
            if((collision(birds[0].col, birds[0].row, birds[0].width,
            birds[0].height, birds[i].col, birds[i].row, birds[i].width, birds[i].height))) {
                birds[i].isActive = 0;
                matesKissed++;
                //check to see if need to change level
                if (matesKissed == 10) {
                    initLevel2Change = 1;
                    level2 = 1;
                } else if (matesKissed == 20) {
                    initLevel3Change = 1;
                    level3 = 1;
                }
            }
            birds[i].aniCounter++;
        }
     }
}

//draw mates
void drawMates() {
    for(int i = 1; i < BIRDCOUNT; i++) {
        if (birds[i].isActive) {
            shadowOAM[13+i].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | birds[i].row;
            shadowOAM[13+i].attr1 = ATTR1_MEDIUM | birds[i].col;
            shadowOAM[13+i].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(birds[i].aniState * 4, 0);
        } else {
            shadowOAM[13+i].attr0 = ATTR0_HIDE;
        }
    }
}

//initializes lizard
void initLizard() {
    for(int i = 0; i < LIZARDCOUNT; i++) {
        lizard[i].width = 27;
        lizard[i].height = 26;
        lizard[i].col = 240;
        lizard[i].row = rand() % 200;
        while((lizard[i].row > 120) || (lizard[i].row < 0)) {
            lizard[i].row = rand() % 200;
        }
        lizard[i].isActive = 0;
        lizard[i].aniState = LIZARD1;
        lizard[i].aniCounter = 0;
    }
}

//add lizard
void addLizard() {
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
                    lizard[i].aniState = LIZARD1;
                    lizard[i].aniCounter = 0;
                    //add fireball
                    if (level3 && !isCheat) {
                        addFireball(i);
                    }
                    break;
                }
            }
            lTimer = 0;
        }
    } else {
        if (lTimer == 325) {
            for (int i = 0; i < LIZARDCOUNT; i++) {
                if (!lizard[i].isActive) {
                    lizard[i].col = 240;
                    lizard[i].row = rand() % 200;
                    while((lizard[i].row > 120) || (lizard[i].row < 0)) {
                        lizard[i].row = rand() % 200;
                    }
                    lizard[i].isActive = 1;
                    lizard[i].aniState = LIZARD1;
                    lizard[i].aniCounter = 0;
                    break;
                }
            }
            lTimer = 0;
        }
    }
}

//update lizards position and aniState
void updateLizard() {
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
                    lizard[i].col -= 1;
                }
            }
            if (lizard[i].aniCounter == 8) {
                if (lizard[i].aniState != LIZARD3) {
                    lizard[i].aniState++;
                } else {
                    lizard[i].aniState = LIZARD1;
                }
                lizard[i].aniCounter = 0;
            }
            if((collision(birds[0].col, birds[0].row, birds[0].width,
            birds[0].height, lizard[i].col, lizard[i].row, lizard[i].width, lizard[i].height))) {
                addLostLife(lizard[i].col, lizard[i].row);
                playSoundB(missedMate, MISSEDMATELEN - 125, 0);
                lizard[i].isActive = 0;
                matesGone++;
            }
            lizard[i].aniCounter++;
        }
    }
}

//draws lizard
void drawLizard() {
    for (int i = 0; i < LIZARDCOUNT; i++) {
        if ((lizard[i].isActive)) {
            shadowOAM[17+i].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | lizard[i].row;
            shadowOAM[17+i].attr1 = ATTR1_MEDIUM | lizard[i].col;
            shadowOAM[17+i].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID((lizard[i].aniState + 3) * 4 , 4);
        } else {
            shadowOAM[17+i].attr0 = ATTR0_HIDE;
        }
    }
}

//initializes fireball
void initFireball() {
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
}

//add fireball
void addFireball(int i) {
    for (int j = 0; j < FIREBALLCOUNT; j++) {
        if(!fireball[j].isActive) {
            fireball[j].col = lizard[i].col;
            fireball[j].row = lizard[i].row + 8;
            fireball[j].isActive = 1;
            break;
        }
    }
}

//update fireball
void updateFireball() {
    for(int i = 0; i < FIREBALLCOUNT; i++) {
        if (fireball[i].isActive) {
            if (fireball[i].col < 3) {
                fireball[i].isActive = 0;
            } else {
                fireball[i].col = fireball[i].col - 3;
            }
            if((collision(birds[0].col, birds[0].row, birds[0].width,
            birds[0].height, fireball[i].col, fireball[i].row, fireball[i].width,fireball[i].height))) {
                addLostLife(fireball[i].col, fireball[i].row);
                playSoundB(missedMate, MISSEDMATELEN - 125, 0);
                fireball[i].isActive = 0;
                matesGone++;
            }
        }
    }
}

//draws fireballs
void drawFireball() {
    for (int i = 0; i < FIREBALLCOUNT; i++) {
        if ((fireball[i].isActive) &&!(isCheat)) {
            shadowOAM[20+i].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | fireball[i].row;
            shadowOAM[20+i].attr1 = ATTR1_SMALL | fireball[i].col;
            shadowOAM[20+i].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(20, 10);
        } else {
            shadowOAM[20+i].attr0 = ATTR0_HIDE;
        }
    }
}

//initialize hearts
void initHeart() {
    for (int i = 0; i < HEARTCOUNT; i++){ 
        heart[i].col = 16*i;
        heart[i].row = 145;
        heart[i].width = 16;
        heart[i].height = 16;
        heart[i].isActive = 1;
    }
}
 
//update hearts
void updateHeart() {
    for (int i = HEARTCOUNT - 1; i > ((HEARTCOUNT - 1) - matesGone); i--){ 
        if (heart[i].isActive) {
            heart[i].isActive = 0;   
        }
    }
}

//draw hearts
void drawHeart() {
     for (int i = 0; i < HEARTCOUNT; i++) {
        if (heart[i].isActive) {
            shadowOAM[5+i].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | heart[i].row;
            shadowOAM[5+i].attr1 = ATTR1_SMALL | heart[i].col;
            shadowOAM[5+i].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(20, 8);
        } else {
            shadowOAM[5+i].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | heart[i].row;
            shadowOAM[5+i].attr1 = ATTR1_SMALL | heart[i].col;
            shadowOAM[5+i].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(22, 8);
        }
    }
}

void initLostLife() {
    for (int i = 0; i < LOSTLIFECOUNT; i++) {
        lostLife[i].row = 0;
	    lostLife[i].col = 0;
        lostLife[i].missedTimer = 0;
        lostLife[i].isActive = 0;
    }
}

void addLostLife(int col, int row) {
     for (int i = 0; i < LOSTLIFECOUNT; i++) {
        if(!lostLife[i].isActive) {
            if (row < 16) {
                row = row + 5;
            } else if (row > 144) {
                row = row - 5;
            }
            lostLife[i].row = row;
            lostLife[i].col = col + 5;
            lostLife[i].missedTimer = 0;
            lostLife[i].isActive = 1;
            break;
        }
    }
}

void drawLostLife() {
    for (int i = 0; i < LOSTLIFECOUNT; i++) {
        if(lostLife[i].isActive) {
            if(lostLife[i].missedTimer < 50) {
                shadowOAM[29+i].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | lostLife[i].row ;
                shadowOAM[29+i].attr1 = ATTR1_SMALL | lostLife[i].col;
                shadowOAM[29+i].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(22, 8);
                lostLife[i].missedTimer++;
            } else {
                lostLife[i].isActive = 0;
            }
        } else {
            shadowOAM[29+i].attr0 = ATTR0_HIDE;
        }
    }
}

//initialize score
void initScore() {
    ones = 0;
    tens = 0;
    hundreds = 0;

}

//update score
void updateScore() {
    ones = matesKissed % 10;
    if (matesKissed > 9) {
        if (matesKissed > 99){
            hundreds = matesKissed  / 100;
            tens = (matesKissed - (hundreds * 100) - ones) / 10;
        } else {
            tens = (matesKissed - ones) / 10;
        }
    }
    
}

//draw score
void drawScore(int scorePlaceCol, int scorePlaceRow) { 

    //draw SCORE:
    shadowOAM[0].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | scorePlaceRow;
    shadowOAM[0].attr1 = ATTR1_SMALL | scorePlaceCol;
    shadowOAM[0].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(0, 10);
    shadowOAM[1].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | scorePlaceRow;
    shadowOAM[1].attr1 = ATTR1_SMALL | (scorePlaceCol + 16);
    shadowOAM[1].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(2, 10);

    //score
    if (matesKissed > 9) {
        if (matesKissed > 99) {
            shadowOAM[4].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | scorePlaceRow;
            shadowOAM[4].attr1 = ATTR1_SMALL | (scorePlaceCol + 30);
            shadowOAM[4].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(2 * hundreds, 8);
            shadowOAM[3].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | scorePlaceRow;
            shadowOAM[3].attr1 = ATTR1_SMALL | (scorePlaceCol + 35);
            shadowOAM[3].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(2 * tens, 8);
            shadowOAM[2].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | scorePlaceRow;
            shadowOAM[2].attr1 = ATTR1_SMALL | (scorePlaceCol + 40);
            shadowOAM[2].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(2 * ones, 8);
        } else {
            shadowOAM[3].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | scorePlaceRow;
            shadowOAM[3].attr1 = ATTR1_SMALL | (scorePlaceCol + 30);
            shadowOAM[3].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(2 * tens, 8);
            shadowOAM[2].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | scorePlaceRow;
            shadowOAM[2].attr1 = ATTR1_SMALL | (scorePlaceCol + 35);
            shadowOAM[2].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(2 * ones, 8);
        }    
    } else {
        shadowOAM[2].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | scorePlaceRow ;
        shadowOAM[2].attr1 = ATTR1_SMALL | (scorePlaceCol + 30);
        shadowOAM[2].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(2 * ones, 8);
    }
}