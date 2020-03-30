
//{{BLOCK(start)

//======================================================================
//
//	start, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 201 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 6432 + 2048 = 8512
//
//	Time-stamp: 2020-03-26, 12:28:13
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_START_H
#define GRIT_START_H

#define startTilesLen 6432
extern const unsigned short startTiles[3216];

#define startMapLen 2048
extern const unsigned short startMap[1024];

#define startPalLen 32
extern const unsigned short startPal[16];

#endif // GRIT_START_H

//}}BLOCK(start)
