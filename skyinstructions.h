
//{{BLOCK(skyinstructions)

//======================================================================
//
//	skyinstructions, 256x1024@4, 
//	+ palette 256 entries, not compressed
//	+ 990 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x128 
//	Total size: 512 + 31680 + 8192 = 40384
//
//	Time-stamp: 2020-04-27, 18:37:08
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SKYINSTRUCTIONS_H
#define GRIT_SKYINSTRUCTIONS_H

#define skyinstructionsTilesLen 31680
extern const unsigned short skyinstructionsTiles[15840];

#define skyinstructionsMapLen 8192
extern const unsigned short skyinstructionsMap[4096];

#define skyinstructionsPalLen 512
extern const unsigned short skyinstructionsPal[256];

#endif // GRIT_SKYINSTRUCTIONS_H

//}}BLOCK(skyinstructions)
