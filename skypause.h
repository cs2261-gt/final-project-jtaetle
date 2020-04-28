
//{{BLOCK(skypause)

//======================================================================
//
//	skypause, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 162 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5184 + 2048 = 7744
//
//	Time-stamp: 2020-04-26, 12:39:21
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SKYPAUSE_H
#define GRIT_SKYPAUSE_H

#define skypauseTilesLen 5184
extern const unsigned short skypauseTiles[2592];

#define skypauseMapLen 2048
extern const unsigned short skypauseMap[1024];

#define skypausePalLen 512
extern const unsigned short skypausePal[256];

#endif // GRIT_SKYPAUSE_H

//}}BLOCK(skypause)
