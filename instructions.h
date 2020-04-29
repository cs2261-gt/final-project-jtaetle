
//{{BLOCK(instructions)

//======================================================================
//
//	instructions, 256x512@4, 
//	+ palette 16 entries, not compressed
//	+ 1004 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x64 
//	Total size: 32 + 32128 + 4096 = 36256
//
//	Time-stamp: 2020-04-28, 20:26:41
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONS_H
#define GRIT_INSTRUCTIONS_H

#define instructionsTilesLen 32128
extern const unsigned short instructionsTiles[16064];

#define instructionsMapLen 4096
extern const unsigned short instructionsMap[2048];

#define instructionsPalLen 32
extern const unsigned short instructionsPal[16];

#endif // GRIT_INSTRUCTIONS_H

//}}BLOCK(instructions)
