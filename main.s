	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #512
	ldr	r4, .L4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L4+8
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L4+20
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L4+28
	ldr	r1, .L4+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L4+36
	ldr	r1, .L4+40
	mov	lr, pc
	bx	r4
	ldr	r0, .L4+44
	mov	r2, #1
	ldr	r1, .L4+48
	ldr	r3, .L4+52
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r2, .L4+56
	ldr	r3, .L4+60
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L4+64
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	skystartPal
	.word	5216
	.word	100679680
	.word	skystartTiles
	.word	100724736
	.word	skystartMap
	.word	6048
	.word	startTiles
	.word	100720640
	.word	startMap
	.word	startSong
	.word	136568
	.word	playSoundA
	.word	state
	.word	hideSprites
	.word	shadowOAM
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r0, #7168
	mov	r1, #4864
	ldr	r2, .L8
	push	{r4, lr}
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+8
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	ip, #28
	mov	r1, #4
	ldr	r2, .L8+12
	ldr	lr, .L8+16
	str	r3, [r2]
	ldr	r0, .L8+20
	ldr	r2, .L8+24
	strh	r3, [lr]	@ movhi
	ldr	lr, .L8+28
	strh	r3, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	ldr	r0, .L8+32
	ldr	r2, .L8+36
	strh	r3, [lr]	@ movhi
	pop	{r4, lr}
	str	ip, [r0]
	str	r1, [r2]
	b	goToStart
.L9:
	.align	2
.L8:
	.word	7684
	.word	setupSounds
	.word	setupInterrupts
	.word	seed
	.word	hOff0
	.word	hOff1
	.word	vOff0
	.word	vOff1
	.word	screenBlockBG0
	.word	screenBlockBG1
	.size	initialize, .-initialize
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4864
	mov	r5, #67108864
	ldr	r4, .L12
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12+4
	mov	lr, pc
	bx	r4
	ldr	r2, .L12+8
	mov	r3, #5184
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L12+12
	ldr	r1, .L12+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L12+20
	ldr	r1, .L12+24
	mov	lr, pc
	bx	r4
	mov	r2, #23552
	mov	r3, #3616
	strh	r2, [r5, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L12+28
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L12+32
	ldr	r1, .L12+36
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L12+40
	ldr	r1, .L12+44
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L12+48
	ldr	r1, .L12+52
	mov	lr, pc
	bx	r4
	mov	r2, #208
	ldr	r3, .L12+56
	strh	r2, [r5, #80]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L12+60
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	DMANow
	.word	skyPal
	.word	7684
	.word	100679680
	.word	skyTiles
	.word	100724736
	.word	skyMap
	.word	treeTiles
	.word	100720640
	.word	treeMap
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	goToLevel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLevel2, %function
goToLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	lr, #0
	ldr	ip, .L16
	ldr	r4, .L16+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+8
	strh	lr, [ip]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L16+12
	ldr	r2, .L16+16
	ldr	r1, .L16+20
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L16+24
	ldr	r1, .L16+28
	mov	lr, pc
	bx	r4
	mov	r3, #1728
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L16+32
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L16+36
	ldr	r1, .L16+40
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+44
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L16+48
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L16+52
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	hOff0
	.word	DMANow
	.word	skylevel2Pal
	.word	5216
	.word	100679680
	.word	skylevel2Tiles
	.word	100724736
	.word	skylevel2Map
	.word	level2Tiles
	.word	100720640
	.word	level2Map
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToLevel2, .-goToLevel2
	.align	2
	.global	level2State
	.syntax unified
	.arm
	.fpu softvfp
	.type	level2State, %function
level2State:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L23
	ldr	r1, .L23+4
	ldr	r3, [r0]
	ldrh	r2, [r1]
	add	r3, r3, #1
	add	r2, r2, #1
	cmp	r3, #300
	str	r3, [r0]
	strh	r2, [r1]	@ movhi
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L23+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L24:
	.align	2
.L23:
	.word	levelChangeTimer
	.word	hOff1
	.word	initLevel2
	.size	level2State, .-level2State
	.align	2
	.global	goToLevel3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLevel3, %function
goToLevel3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	lr, #0
	ldr	ip, .L27
	ldr	r4, .L27+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L27+8
	strh	lr, [ip]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L27+12
	ldr	r2, .L27+16
	ldr	r1, .L27+20
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L27+24
	ldr	r1, .L27+28
	mov	lr, pc
	bx	r4
	mov	r3, #1792
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L27+32
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L27+36
	ldr	r1, .L27+40
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L27+44
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L27+48
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L27+52
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L28:
	.align	2
.L27:
	.word	hOff0
	.word	DMANow
	.word	skylevel3Pal
	.word	5216
	.word	100679680
	.word	skylevel3Tiles
	.word	100724736
	.word	skylevel3Map
	.word	level3Tiles
	.word	100720640
	.word	level3Map
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToLevel3, .-goToLevel3
	.align	2
	.global	level3State
	.syntax unified
	.arm
	.fpu softvfp
	.type	level3State, %function
level3State:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L34
	ldr	r1, .L34+4
	ldr	r3, [r0]
	ldrh	r2, [r1]
	add	r3, r3, #1
	add	r2, r2, #1
	cmp	r3, #300
	str	r3, [r0]
	strh	r2, [r1]	@ movhi
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L34+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L35:
	.align	2
.L34:
	.word	levelChangeTimer
	.word	hOff1
	.word	initLevel3
	.size	level3State, .-level3State
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	lr, #0
	ldr	ip, .L38
	ldr	r4, .L38+4
	mov	r3, #512
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L38+8
	strh	lr, [ip]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r3, #5184
	mov	r0, #3
	ldr	r2, .L38+12
	ldr	r1, .L38+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L38+20
	ldr	r1, .L38+24
	mov	lr, pc
	bx	r4
	mov	r3, #5632
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L38+28
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L38+32
	ldr	r1, .L38+36
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L38+40
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L38+44
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L38+48
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L39:
	.align	2
.L38:
	.word	hOff0
	.word	DMANow
	.word	skypausePal
	.word	100679680
	.word	skypauseTiles
	.word	100724736
	.word	skypauseMap
	.word	pauseTiles
	.word	100720640
	.word	pauseMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	mov	r2, #67108864
	mov	r0, #4352
	mov	r1, #39936
	ldr	r3, .L42
	push	{r4, lr}
	strh	ip, [r3]	@ movhi
	ldr	r4, .L42+4
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #32
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L42+12
	ldr	r1, .L42+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L42+20
	ldr	r1, .L42+24
	mov	r3, #4096
	mov	lr, pc
	bx	r4
	ldr	r3, .L42+28
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L42+32
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L42+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L43:
	.align	2
.L42:
	.word	hOff0
	.word	DMANow
	.word	instructionsPal
	.word	32128
	.word	instructionsTiles
	.word	100720640
	.word	instructionsMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	ip, .L56
	ldr	r1, .L56+4
	ldr	r4, .L56+8
	ldr	r0, [ip]
	ldrh	r3, [r1]
	ldrh	r2, [r4]
	add	r0, r0, #1
	add	r3, r3, #1
	tst	r2, #8
	str	r0, [ip]
	strh	r3, [r1]	@ movhi
	beq	.L45
	ldr	r3, .L56+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L54
.L45:
	tst	r2, #1
	beq	.L44
	ldr	r3, .L56+12
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L55
.L44:
	pop	{r4, lr}
	bx	lr
.L55:
	pop	{r4, lr}
	b	goToInstructions
.L54:
	ldr	r3, .L56+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L56+20
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L56+24
	ldr	r0, .L56+28
	ldr	r3, .L56+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L56+36
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r2, [r4]
	b	.L45
.L57:
	.align	2
.L56:
	.word	seed
	.word	hOff1
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	stopSound
	.word	158374
	.word	gameSong
	.word	playSoundA
	.word	initGame
	.size	start, .-start
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L76
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	beq	.L59
	ldr	r3, .L76+4
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L75
.L59:
	ldr	r1, .L76+8
	ldrh	r3, [r1, #48]
	tst	r3, #128
	bne	.L60
	ldr	r2, .L76+12
	ldr	r0, .L76+16
	ldrh	r3, [r2]
	cmp	r3, r0
	bhi	.L60
	add	r3, r3, #1
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r2]	@ movhi
	ldrh	r1, [r1, #48]
	tst	r1, #64
	bne	.L58
.L61:
	sub	r3, r3, #1
	strh	r3, [r2]	@ movhi
.L58:
	pop	{r4, lr}
	bx	lr
.L60:
	ldr	r3, .L76+8
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L58
	ldr	r2, .L76+12
	ldrh	r3, [r2]
	cmp	r3, #0
	bne	.L61
	pop	{r4, lr}
	bx	lr
.L75:
	ldr	r3, .L76+20
	mov	lr, pc
	bx	r3
	ldr	r1, .L76+24
	ldr	r0, .L76+28
	mov	r2, #1
	ldr	r3, .L76+32
	mov	lr, pc
	bx	r3
	ldr	r2, .L76+12
	ldr	r3, .L76+36
	strh	r4, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	bl	goToGame
	b	.L59
.L77:
	.align	2
.L76:
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	vOff0
	.word	350
	.word	stopSound
	.word	158374
	.word	gameSong
	.word	playSoundA
	.word	initGame
	.size	instructions, .-instructions
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	lr, #0
	ldr	ip, .L80
	ldr	r4, .L80+4
	mov	r3, #512
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L80+8
	strh	lr, [ip]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L80+12
	ldr	r2, .L80+16
	ldr	r1, .L80+20
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L80+24
	ldr	r1, .L80+28
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L80+32
	ldr	r1, .L80+36
	mov	lr, pc
	bx	r4
	ldr	r2, .L80+40
	mov	r0, #3
	ldr	r1, .L80+44
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L80+48
	mov	lr, pc
	bx	r3
	mov	r1, #135
	mov	r0, #102
	ldr	r3, .L80+52
	mov	lr, pc
	bx	r3
	mov	r1, #127
	mov	r0, #104
	ldr	r3, .L80+56
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L80+60
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L80+64
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L81:
	.align	2
.L80:
	.word	hOff0
	.word	DMANow
	.word	skylosePal
	.word	5216
	.word	100679680
	.word	skyloseTiles
	.word	100724736
	.word	skyloseMap
	.word	5920
	.word	loseTiles
	.word	100720640
	.word	loseMap
	.word	hideSprites
	.word	drawScore
	.word	drawLevel
	.word	shadowOAM
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L98
	mov	lr, pc
	bx	r3
	ldr	r3, .L98+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L98+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L83
	ldr	r3, .L98+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L94
.L83:
	ldr	r3, .L98+16
	ldr	r3, [r3]
	cmp	r3, #5
	beq	.L95
.L84:
	ldr	r3, .L98+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L96
.L85:
	ldr	r3, .L98+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L97
	pop	{r4, lr}
	bx	lr
.L97:
	pop	{r4, lr}
	b	goToLevel3
.L96:
	bl	goToLevel2
	b	.L85
.L95:
	ldr	r3, .L98+28
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L98+32
	ldr	r0, .L98+36
	ldr	r3, .L98+40
	mov	lr, pc
	bx	r3
	bl	goToLose
	b	.L84
.L94:
	ldr	r3, .L98+44
	ldr	r2, .L98+48
	ldrh	r1, [r3]
	ldr	r3, .L98+52
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L98+56
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L98+60
	ldr	r0, .L98+64
	ldr	r3, .L98+68
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L83
.L99:
	.align	2
.L98:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	matesGone
	.word	initLevel2Change
	.word	initLevel3Change
	.word	stopSound
	.word	150700
	.word	loseSong
	.word	playSoundA
	.word	hOff0
	.word	gamehOff0
	.word	stopSoundB
	.word	pauseSoundA
	.word	169244
	.word	pauseSong
	.word	playSoundB
	.size	game, .-game
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r1, .L112
	ldr	r4, .L112+4
	ldrh	r3, [r1]
	ldrh	r2, [r4]
	add	r3, r3, #1
	tst	r2, #8
	strh	r3, [r1]	@ movhi
	beq	.L101
	ldr	r3, .L112+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L110
.L101:
	tst	r2, #4
	beq	.L100
	ldr	r3, .L112+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L111
.L100:
	pop	{r4, lr}
	bx	lr
.L111:
	ldr	r3, .L112+12
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L112+16
	ldr	r0, .L112+20
	ldr	r3, .L112+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLose
.L110:
	ldr	r3, .L112+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L112+32
	mov	lr, pc
	bx	r3
	ldr	r2, .L112+36
	ldr	r3, .L112+40
	ldr	r2, [r2]
	strh	r2, [r3]	@ movhi
	bl	goToGame
	ldrh	r2, [r4]
	b	.L101
.L113:
	.align	2
.L112:
	.word	hOff1
	.word	oldButtons
	.word	buttons
	.word	stopSound
	.word	150700
	.word	loseSong
	.word	playSoundA
	.word	stopSoundB
	.word	unpauseSoundA
	.word	gamehOff0
	.word	hOff0
	.size	pause, .-pause
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L129
	mov	lr, pc
	bx	r3
	mov	r7, #67108864
	ldr	r6, .L129+4
	ldr	r4, .L129+8
	ldr	fp, .L129+12
	ldr	r10, .L129+16
	ldr	r5, .L129+20
	ldr	r9, .L129+24
	ldr	r8, .L129+28
.L124:
	ldrh	r3, [r4]
	strh	r3, [r6]	@ movhi
	ldr	r3, .L129+32
	ldrh	r3, [r3, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	fp
	ldr	r3, [r10]
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L115
.L117:
	.word	.L123
	.word	.L122
	.word	.L121
	.word	.L120
	.word	.L119
	.word	.L118
	.word	.L116
.L116:
	ldr	r3, .L129+36
	mov	lr, pc
	bx	r3
.L115:
	ldrh	r3, [r9]
	lsr	r3, r3, #1
	strh	r3, [r7, #16]	@ movhi
	ldrh	r3, [r5]
	lsr	r3, r3, #2
	strh	r3, [r7, #20]	@ movhi
	ldr	r3, .L129+40
	ldrh	r3, [r3]
	strh	r3, [r7, #18]	@ movhi
	ldrh	r3, [r8]
	strh	r3, [r7, #22]	@ movhi
	b	.L124
.L118:
	ldr	r3, .L129+44
	mov	lr, pc
	bx	r3
	b	.L115
.L119:
	ldrh	r3, [r5]
	ldrh	r2, [r6]
	add	r3, r3, #1
	tst	r2, #8
	strh	r3, [r5]	@ movhi
	beq	.L115
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L115
	ldr	r3, .L129+48
	mov	lr, pc
	bx	r3
	b	.L115
.L120:
	ldr	r3, .L129+52
	mov	lr, pc
	bx	r3
	b	.L115
.L121:
	ldr	r3, .L129+56
	mov	lr, pc
	bx	r3
	b	.L115
.L123:
	ldr	r3, .L129+60
	mov	lr, pc
	bx	r3
	b	.L115
.L122:
	ldr	r3, .L129+64
	mov	lr, pc
	bx	r3
	b	.L115
.L130:
	.align	2
.L129:
	.word	initialize
	.word	oldButtons
	.word	buttons
	.word	waitForVBlank
	.word	state
	.word	hOff1
	.word	hOff0
	.word	vOff1
	.word	67109120
	.word	level3State
	.word	vOff0
	.word	level2State
	.word	goToStart
	.word	instructions
	.word	pause
	.word	start
	.word	game
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L136
	ldr	r1, .L136+4
	ldrh	r3, [r2]
	ldrh	r1, [r1]
	add	r3, r3, #1
	tst	r1, #8
	strh	r3, [r2]	@ movhi
	bxeq	lr
	ldr	r3, .L136+8
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L137:
	.align	2
.L136:
	.word	hOff1
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
	.comm	screenBlockBG1,4,4
	.comm	screenBlockBG0,4,4
	.comm	state,4,4
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	hundreds,4,4
	.comm	tens,4,4
	.comm	ones,4,4
	.comm	alphaDown,4,4
	.comm	alphaUp,4,4
	.comm	alphaBlendTimer,4,4
	.comm	blackWeight,4,4
	.comm	isCheat,4,4
	.comm	matesKissed,4,4
	.comm	levelChangeTimer,4,4
	.comm	level,4,4
	.comm	level3,4,4
	.comm	level2,4,4
	.comm	initLevel3Change,4,4
	.comm	initLevel2Change,4,4
	.comm	matesGone,4,4
	.comm	lTimer,4,4
	.comm	timer,4,4
	.comm	gamehOff0,4,4
	.comm	hOff1,2,2
	.comm	hOff0,2,2
	.comm	vOff1,2,2
	.comm	vOff0,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
