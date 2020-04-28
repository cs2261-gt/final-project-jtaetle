
//{{BLOCK(instructionsnew)

//======================================================================
//
//	instructionsnew, 256x512@4, 
//	+ palette 256 entries, not compressed
//	+ 1002 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x64 
//	Total size: 512 + 32064 + 4096 = 36672
//
//	Time-stamp: 2020-04-27, 18:43:14
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONSNEW_H
#define GRIT_INSTRUCTIONSNEW_H

#define instructionsnewTilesLen 32064
extern const unsigned short instructionsnewTiles[16032];

#define instructionsnewMapLen 4096
extern const unsigned short instructionsnewMap[2048];

#define instructionsnewPalLen 512
extern const unsigned short instructionsnewPal[256];

#endif // GRIT_INSTRUCTIONSNEW_H

//}}BLOCK(instructionsnew)
