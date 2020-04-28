
//{{BLOCK(level3)

//======================================================================
//
//	level3, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 56 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1792 + 2048 = 4352
//
//	Time-stamp: 2020-04-28, 14:49:36
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL3_H
#define GRIT_LEVEL3_H

#define level3TilesLen 1792
extern const unsigned short level3Tiles[896];

#define level3MapLen 2048
extern const unsigned short level3Map[1024];

#define level3PalLen 512
extern const unsigned short level3Pal[256];

#endif // GRIT_LEVEL3_H

//}}BLOCK(level3)
