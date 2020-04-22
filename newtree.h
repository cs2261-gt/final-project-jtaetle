
//{{BLOCK(newtree)

//======================================================================
//
//	newtree, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 227 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 7264 + 4096 = 11872
//
//	Time-stamp: 2020-04-22, 19:19:42
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_NEWTREE_H
#define GRIT_NEWTREE_H

#define newtreeTilesLen 7264
extern const unsigned short newtreeTiles[3632];

#define newtreeMapLen 4096
extern const unsigned short newtreeMap[2048];

#define newtreePalLen 512
extern const unsigned short newtreePal[256];

#endif // GRIT_NEWTREE_H

//}}BLOCK(newtree)
