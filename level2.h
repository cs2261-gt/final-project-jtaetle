
//{{BLOCK(level2)

//======================================================================
//
//	level2, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 54 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1728 + 2048 = 4288
//
//	Time-stamp: 2020-04-28, 14:43:03
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL2_H
#define GRIT_LEVEL2_H

#define level2TilesLen 1728
extern const unsigned short level2Tiles[864];

#define level2MapLen 2048
extern const unsigned short level2Map[1024];

#define level2PalLen 512
extern const unsigned short level2Pal[256];

#endif // GRIT_LEVEL2_H

//}}BLOCK(level2)
