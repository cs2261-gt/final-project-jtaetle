
//{{BLOCK(pause)

//======================================================================
//
//	pause, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 75 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2400 + 2048 = 4960
//
//	Time-stamp: 2020-04-12, 14:26:13
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short pauseTiles[1200] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0xEEE8,0xE8EE,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x37E3,0x3333,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0xEEE3,0x38EE,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0xE833,0x98EE,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x4333,0x925A,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x33ED,0xEEE8,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0xEEEE,0x318E,
	0x3333,0x9333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0000,0x0000,0x00F3,0xB63C,0x00D3,0x933C,0x0093,0x333C,
	0x0093,0x633C,0x0093,0xA333,0x0093,0x0B77,0x0093,0x2B00,
	0x3370,0x3333,0x3400,0x3333,0x3A00,0x3333,0x3A0B,0x3333,
	0x3200,0x4333,0x3800,0xB333,0x3320,0x0D33,0x333D,0x0233,

	0x60B3,0x3333,0xF009,0x3333,0xB00A,0x3333,0x000B,0x3331,
	0x0BD0,0x333A,0x0A3A,0x3330,0x0931,0x3340,0x0D6D,0x3350,
	0x00B3,0xC000,0x0E33,0x33F0,0xB333,0x3310,0xB333,0x33E0,
	0xB333,0x33E0,0xB333,0x33E0,0xB333,0x33E0,0xB333,0x33E0,
	0x0093,0x7000,0x4333,0x3350,0x3333,0x332B,0x3333,0x338B,
	0x3333,0x33E5,0x3333,0x33E5,0x3333,0x33E5,0x3333,0x33E5,
	0x0B33,0x00AB,0x70A3,0x5333,0xC0B3,0x6333,0x40B3,0x3333,
	0x00B3,0x3337,0x0023,0xD200,0x0A33,0x0000,0xD333,0x000A,

	0x93B0,0x0000,0x33B0,0x0073,0x3350,0x00D3,0x33BA,0x0093,
	0x332E,0x0093,0x3333,0x0093,0x333A,0x0093,0x33B0,0x0093,
	0x0000,0x3B00,0x3333,0x3507,0x333C,0x3B53,0xD33C,0x3E6D,
	0xA33C,0x333A,0x083D,0x3332,0x0000,0x3332,0x08C9,0x3332,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0xD333,0x3333,0x3333,0x3333,0x3333,
	0x0093,0x333C,0x0093,0x333C,0x0093,0x333C,0x0093,0x3333,
	0x0059,0x3392,0x0000,0x3C00,0x3333,0x3333,0x3333,0x3333,

	0x3333,0x0B33,0x3333,0x9083,0x3333,0x3553,0x3333,0x3409,
	0x4333,0x1A00,0x0933,0x0000,0x3333,0x3333,0x3333,0x3333,
	0x0000,0x3D00,0x9CCC,0x3200,0x3333,0x3005,0x3333,0x400E,
	0x6333,0x000F,0x5331,0x0000,0x3333,0x3333,0x3333,0x3333,
	0xB333,0x33E0,0xB333,0x3310,0xB333,0x3370,0xB333,0x3C00,
	0xE334,0x4000,0x33E0,0x00B1,0x3333,0x9C33,0x3333,0x3333,
	0x3333,0x33E5,0x3333,0x33EB,0xC333,0x33E0,0xA333,0x33D0,
	0x0589,0x3337,0x4000,0x3333,0x3369,0x3333,0x3333,0x3333,

	0x33D3,0x0433,0x3307,0x1333,0x380F,0x3333,0xC00F,0xC333,
	0x0009,0x5D38,0x0A09,0x0000,0x3333,0x36D6,0x3333,0x3333,
	0x3E00,0x0093,0x3E00,0x0093,0x3E00,0x0093,0x3600,0x0093,
	0x3320,0x0051,0x9334,0x0000,0x3333,0x3333,0x3333,0x3333,
	0xA333,0x3332,0x133C,0xFD38,0x333C,0xB533,0x333C,0xA013,
	0xE1EA,0x2007,0x0000,0x2000,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x4333,0xB000,0x3333,0x320C,
	0x3333,0x32B3,0x3333,0x32B3,0x3333,0x32B3,0x3333,0xB0B3,

	0x3333,0x3333,0x3333,0x3333,0x3EB0,0x3333,0x300D,0x3333,
	0x6053,0x3333,0xE053,0xB7BB,0x3508,0xFB0E,0x337B,0x31B3,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0xA360,0x3200,0xA590,0x4063,0x20D6,0x2BE1,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x0023,0x23E0,0x3309,0x098B,0xDA09,0x0936,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0xE000,0x3333,0x8B33,0x3333,0x36DA,0x3333,

	0x3333,0x3333,0x9C33,0x333C,0x5053,0x5200,0x3304,0x5206,
	0x33BA,0xB223,0x3202,0x6F93,0x0009,0x3362,0x02C3,0x3400,
	0x3333,0x3333,0x3333,0x3333,0x0000,0xB0BB,0x0D3A,0xBF31,
	0x093D,0xB33E,0x0933,0x633E,0x0933,0x333E,0x0933,0x333E,
	0x3333,0x3333,0x3333,0x333C,0x3333,0x33FB,0x6333,0x33B0,
	0x7333,0x3900,0xB333,0x3204,0xA133,0x30B3,0x4533,0x80A3,
	0x3333,0x3333,0x3333,0x3333,0x0A33,0x00B0,0x2333,0xF330,
	0xF333,0x33C0,0xF333,0x63C0,0xF333,0x56D0,0xF333,0x00B0,

	0x3333,0x3333,0x3333,0x3333,0x53C5,0x0000,0x5350,0x0D3A,
	0xB3BB,0x093D,0x63B0,0x0933,0x3390,0x0933,0x3333,0x0933,
	0x3333,0x3333,0x3333,0x3333,0xB0BB,0x3333,0xBF31,0x3333,
	0xB33E,0x3333,0x633E,0x2333,0x333E,0x3333,0x333E,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x33C3,0x3333,0x33B7,0x3333,
	0x33BF,0x3333,0xA500,0x0B63,0x6102,0x3A03,0x330F,0x360F,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3320,0x2333,0x3A06,0x3333,0xC073,0x3333,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x0255,0x0E32,0xBF05,0xD015,0x33BF,0xE0A3,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3DB0,0x00BD,0x30A3,0xE3FB,0xC021,0x34B5,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0xBBDB,0xBB89,0x043B,0x083E,0x093D,0x093E,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0xB531,0x00A2,0xB63E,0xB980,0x533E,0x5332,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x0029,0xD33E,0xB6F0,0x033B,0x733B,0x043B,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x800B,0x3333,0x043F,0x333D,0x0414,0x3338,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x0B13,0xC5AB,0x32B3,0x3902,0x3403,0x3C07,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x005D,0xB83F,0x735B,0x73C0,0xF314,0xD3C0,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x0B4B,0x0B92,0x7650,0xF6B0,0xD330,0x3310,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3335,0xB00E,0x13E0,0xA3D0,0xA3E0,0x21E0,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x333D,0x3333,0x3330,0x3333,0x33C0,0x3333,
	0x3333,0x32B3,0x3333,0x32B3,0x3333,0x3206,0xD333,0xB000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x3333,0x3E03,0x3333,0x3EB3,0x3333,0x3403,0x3333,0x700B,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x5093,0x1F77,0x4093,0x3333,0x0B33,0xB436,0xB633,0x3B00,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0023,0x236B,0x43C8,0xC820,0x3357,0x5725,0xB00F,0x0FCB,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x6B00,0x3333,0x2043,0x3333,0x2533,0x3333,0xCBB0,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x3334,0x3B04,0x331B,0x3BA3,0x3605,0x3AB3,0xB055,0x33A0,
	0xC333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0933,0x333E,0x0933,0x3331,0x0E33,0x3332,0x00A3,0xD300,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x5063,0x5055,0x3723,0x0A33,0x3906,0x0E33,0x7000,0x0093,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xF333,0x0230,0xF336,0x53C0,0x233A,0x3360,0x0A50,0x3100,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x3332,0x0933,0x3340,0x0933,0x3E0B,0x0E33,0x500E,0x00A3,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x333E,0x3333,0x3331,0x3333,0x3332,0x3333,0x3300,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3C0F,0x330F,0x330F,0x3607,0x3107,0x3206,0x0009,0xB0E3,
	0x3333,0x6333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xC023,0x3333,0xC0F3,0x3333,0x35B3,0x3333,0x3350,0x4333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x33B7,0x2053,0x33B7,0x3B53,0x3302,0x2083,0x3000,0x0733,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3F77,0x00BD,0x3333,0xA934,0xEB33,0x63E0,0x3F00,0x0B0B,
	0x3333,0x3C33,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0937,0x093E,0x09C0,0x0D3E,0x0DC0,0x023F,0x5337,0xB200,
	0x3333,0x333C,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x533E,0x5332,0x533E,0x5332,0xB334,0x533A,0x0A10,0x0270,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x733B,0x0F3B,0x733B,0x0F3B,0x233B,0x0630,0x04A0,0xE350,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x777A,0x3336,0x3336,0x3333,0xA335,0x3332,0xA000,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xE0A3,0x335B,0x4B73,0x6331,0x2B53,0x9622,0xB023,0x6000,
	0x3604,0xE0D3,0x3907,0x3043,0xB0A3,0x395B,0x3333,0x3333,
	0x5B5D,0x93C0,0x6320,0x93C0,0x2340,0x13D0,0xA00B,0x0400,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x93C0,0x33E0,0x93C0,0x33E0,0x93D0,0x3380,0x0100,0xBE00,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x53EB,0x7720,0x53EB,0x333B,0x8340,0x3320,0x3100,0x0007,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x333F,0x3333,0x3333,0x3333,0x041B,0x3331,0x0F3F,0x333E,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
};

const unsigned short pauseMap[1024] __attribute__((aligned(4)))=
{
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0002,0x0001,0x0003,0x0004,0x0005,
	0x0006,0x0007,0x0008,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0009,0x000A,0x000B,0x000C,0x000D,0x000E,
	0x000F,0x0010,0x0011,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0012,0x0013,0x0014,0x0015,0x0016,0x0017,
	0x0018,0x0019,0x001A,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x001B,0x001C,0x001D,0x001E,0x001F,
	0x0020,0x0021,0x0022,0x0023,0x0024,0x0025,0x0026,0x0027,
	0x0028,0x0029,0x002A,0x002B,0x002C,0x002D,0x002E,0x002F,
	0x0030,0x0031,0x0032,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0033,0x0034,0x0035,0x0036,0x0037,
	0x0038,0x0039,0x003A,0x003B,0x003C,0x003D,0x003E,0x003F,
	0x0040,0x0041,0x0042,0x0043,0x0044,0x0045,0x0046,0x0047,
	0x0048,0x0049,0x004A,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short pausePal[256] __attribute__((aligned(4)))=
{
	0x36BB,0x637E,0x471C,0x7FFF,0x575D,0x3EDC,0x6FBE,0x4F3D,
	0x5B5D,0x679E,0x42FC,0x36DB,0x73DF,0x6B9E,0x5F7D,0x533D,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(pause)
