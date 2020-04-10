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

//Count of birds
#define BIRDCOUNT 4

//Count of lizards
#define LIZARDCOUNT 4

//timer for new mate
int timer;

//timer for new lizard
int lTimer;

//lizard timer based on level
int lTimerLimit;

//keep track of mates lost
int matesGone;

//Levels
int level2;
int level3;

//Keep track of mates kissed
int matesKissed;