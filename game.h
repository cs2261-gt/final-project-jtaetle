//Prototypes
void initGame();
void updateGame();
void drawGame();
void initLevel2();
void initLevel3();
void drawLevel();
void initCasanova();
void updateCasanova();
void drawCasanova();
void drawCasanovaCheat();
void initMates();
void addMates();
void updateMates();
void drawMates();
void initLizard();
void addLizard();
void updateLizard();
void drawLizard();
void addFireball();
void initFireball();
void updateFireball();
void drawFireball();
void initHeart();
void updateHeart();
void drawHeart();
void initLostLife();
void addLostLife();
void drawLostLife();
void initScore();
void updateScore();
void drawScore();
void alphaBlending();


//Vertical Offset 
unsigned short vOff0;
unsigned short vOff1;

//Horizontal Offset
unsigned short hOff0;
unsigned short hOff1;

int gamehOff0;

//Bird Struct
typedef struct {
	int row;
	int col;
	int width;
    int height;
    int aniState;
    int aniCounter;
    int missedTimer;
    int isActive;
} BIRD;

//Lizard Struct
typedef struct {
	int row;
	int col;
	int width;
    int height;
    int aniState;
    int aniCounter;
    int missedTimer;
    int isActive;
} LIZARD;

//Fireball Struct
typedef struct {
    int row;
	int col;
	int width;
    int height;
    int isActive;
} FIREBALL;

//Heart Struct
typedef struct {
    int row;
	int col;
	int width;
    int height;
    int isActive;
} HEART;

//Lost Life Struct
typedef struct {
    int row;
	int col;
    int missedTimer;
    int isActive;
} LOSTLIFE;

//Count of birds
#define BIRDCOUNT 4

//Count of lizards
#define LIZARDCOUNT 3

//Count of fireballs
#define FIREBALLCOUNT 9

//Count of hearts
#define HEARTCOUNT 5

//Count of lost life indicationg sprites
#define LOSTLIFECOUNT 5

//timer for new mate
int timer;

//timer for new lizard
int lTimer;

//keep track of mates lost
int matesGone;

//initialize Levels
int initLevel2Change;
int initLevel3Change;

//Levels
int level2;
int level3;

//level display
int level;

//level Change Timer
int levelChangeTimer;

//Keep track of mates kissed
int matesKissed;

//cheat variable
int isCheat;

//Blending Registers
#define REG_BLDCNT (*(volatile unsigned short*)0x04000050)
#define BLD_OBJa (1<<4)

#define BLD_BLACK (3<<6)

#define REG_BLDY (*(volatile unsigned short*)0x04000054)
#define BLD_EY(num) ((num<<0))

//alpha blending weight
int blackWeight;

//alpha blending timer
int alphaBlendTimer;

//determines to add/subtract from alpha blend
int alphaUp;
int alphaDown;

//Score
int ones;
int tens;
int hundreds;