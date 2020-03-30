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
//Bird Struct
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

//timer for new mate
int timer;

//timer for new lizard
int lTimer;

//keep track of mates lost
int matesGone;