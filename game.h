//Prototypes
void initGame();
void updateGame();
void drawGame();

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


//Count of birds
#define BIRDCOUNT 4

//Count of lizards
#define LIZARDCOUNT 3

//Count of fireballs
#define FIREBALLCOUNT 9

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

//Levels
int level2;
int level3;

//Keep track of mates kissed
int matesKissed;

//cheat

int isCheat;