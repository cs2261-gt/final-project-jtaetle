
//{{BLOCK(tree)

//======================================================================
//
//	tree, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 226 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 7232 + 4096 = 11840
//
//	Time-stamp: 2020-04-28, 14:53:59
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TREE_H
#define GRIT_TREE_H

#define treeTilesLen 7232
extern const unsigned short treeTiles[3616];

#define treeMapLen 4096
extern const unsigned short treeMap[2048];

#define treePalLen 512
extern const unsigned short treePal[256];

#endif // GRIT_TREE_H

//}}BLOCK(tree)
