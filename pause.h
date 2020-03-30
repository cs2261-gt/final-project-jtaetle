
//{{BLOCK(pause)

//======================================================================
//
//	pause, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 75 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 2400 + 2048 = 4480
//
//	Time-stamp: 2020-03-27, 11:17:25
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSE_H
#define GRIT_PAUSE_H

#define pauseTilesLen 2400
extern const unsigned short pauseTiles[1200];

#define pauseMapLen 2048
extern const unsigned short pauseMap[1024];

#define pausePalLen 32
extern const unsigned short pausePal[16];

#endif // GRIT_PAUSE_H

//}}BLOCK(pause)