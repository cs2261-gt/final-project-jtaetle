
//{{BLOCK(sky)

//======================================================================
//
//	sky, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 162 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5184 + 2048 = 7744
//
//	Time-stamp: 2020-03-26, 21:08:14
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SKY_H
#define GRIT_SKY_H

#define skyTilesLen 5184
extern const unsigned short skyTiles[2592];

#define skyMapLen 2048
extern const unsigned short skyMap[1024];

#define skyPalLen 512
extern const unsigned short skyPal[256];

#endif // GRIT_SKY_H

//}}BLOCK(sky)
