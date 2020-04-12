
//{{BLOCK(level3)

//======================================================================
//
//	level3, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 31 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 992 + 2048 = 3552
//
//	Time-stamp: 2020-04-12, 16:50:26
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL3_H
#define GRIT_LEVEL3_H

#define level3TilesLen 992
extern const unsigned short level3Tiles[496];

#define level3MapLen 2048
extern const unsigned short level3Map[1024];

#define level3PalLen 512
extern const unsigned short level3Pal[256];

#endif // GRIT_LEVEL3_H

//}}BLOCK(level3)
