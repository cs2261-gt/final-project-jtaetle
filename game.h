//Prototypes
void initGame();
void updateGame();
void drawGame();
void initLevel2();
void initLevel3();
void initCasanova();
void updateCasanova();
void drawCasanova();
void initMates();
void addMates();
void updateMates();
void drawMates();
void initLizard();
void addLizard();
void updateLizard();
void drawLizard();
void initFireball();
void updateFireball();
void drawFireball();
void initHeart();
void updateHeart();
void drawHeart();

//Horizontal Offset
unsigned short hOff;

//Bird Struct
typedef struct {
	int row;
	int col;
	int width;
    int height;
    int aniState;
    int aniCounter;
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


//Count of birds
#define BIRDCOUNT 4

//Count of lizards
#define LIZARDCOUNT 3

//Count of fireballs
#define FIREBALLCOUNT 9

//Count of hearts
#define HEARTCOUNT 5

//timer for new mate
int timer;

//timer for new lizard
int lTimer;

//timer for new fireball
int fTimer;

//keep track of mates lost
int matesGone;

//last active lizard
int activeLizard;

//initialize Levels
int initLevel2Change;
int initLevel3Change;

//Levels
int level2;
int level3;

//level Change Timer
int levelChangeTimer;

//Keep track of mates kissed
int matesKissed;
