
//{{BLOCK(instructions)

//======================================================================
//
//	instructions, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 401 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 12832 + 2048 = 14912
//
//	Time-stamp: 2020-03-26, 14:03:11
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONS_H
#define GRIT_INSTRUCTIONS_H

#define instructionsTilesLen 12832
extern const unsigned short instructionsTiles[6416];

#define instructionsMapLen 2048
extern const unsigned short instructionsMap[1024];

#define instructionsPalLen 32
extern const unsigned short instructionsPal[16];

#endif // GRIT_INSTRUCTIONS_H

//}}BLOCK(instructions)
