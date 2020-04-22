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
	mov	r3, #16
	ldr	r4, .L4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r3, #3472
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L4+20
	ldr	r1, .L4+24
	ldr	r0, .L4+28
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L4+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startPal
	.word	startTiles
	.word	100720640
	.word	startMap
	.word	playSoundA
	.word	336081
	.word	startSong
	.word	.LANCHOR0
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
	mov	r2, #56320
	mov	r1, #4352
	mov	r3, #67108864
	push	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	strh	r1, [r3]	@ movhi
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	bl	goToStart
	mov	r2, #0
	ldr	r3, .L8+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L9:
	.align	2
.L8:
	.word	setupSounds
	.word	setupInterrupts
	.word	seed
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
	mov	r3, #2592
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L12+12
	ldr	r1, .L12+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L12+20
	ldr	r1, .L12+24
	mov	lr, pc
	bx	r4
	mov	r2, #23552
	mov	r3, #3152
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
	ldr	r2, .L12+48
	mov	r3, #16384
	mov	r0, #3
	ldr	r1, .L12+52
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+56
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
	.word	treetopTiles
	.word	100720640
	.word	treetopMap
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	.LANCHOR0
	.size	goToGame, .-goToGame
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause.part.0, %function
pause.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L19
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L19+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L20:
	.align	2
.L19:
	.word	buttons
	.word	unpauseSound
	.size	pause.part.0, .-pause.part.0
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
	mov	r3, #67108864
	mov	r0, #0
	mov	r1, #4352
	mov	r2, #56320
	push	{r4, lr}
	ldr	r4, .L23
	strh	r0, [r3, #16]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16
	mov	r2, #83886080
	ldr	r1, .L23+4
	mov	lr, pc
	bx	r4
	mov	r3, #464
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L23+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L23+12
	ldr	r1, .L23+16
	mov	r3, #4096
	mov	lr, pc
	bx	r4
	ldr	r3, .L23+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L23+24
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L23+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L24:
	.align	2
.L23:
	.word	DMANow
	.word	level2Pal
	.word	level2Tiles
	.word	100720640
	.word	level2Map
	.word	hideSprites
	.word	shadowOAM
	.word	.LANCHOR0
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
	ldr	r2, .L30
	ldr	r3, [r2]
	ldr	r1, .L30+4
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r2]
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L30+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L31:
	.align	2
.L30:
	.word	levelChangeTimer
	.word	100000
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
	mov	r3, #67108864
	mov	r0, #0
	mov	r1, #4352
	mov	r2, #56320
	push	{r4, lr}
	ldr	r4, .L34
	strh	r0, [r3, #16]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16
	mov	r2, #83886080
	ldr	r1, .L34+4
	mov	lr, pc
	bx	r4
	mov	r3, #496
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L34+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L34+12
	ldr	r1, .L34+16
	mov	r3, #4096
	mov	lr, pc
	bx	r4
	ldr	r3, .L34+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L34+24
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L34+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L35:
	.align	2
.L34:
	.word	DMANow
	.word	level3Pal
	.word	level3Tiles
	.word	100720640
	.word	level3Map
	.word	hideSprites
	.word	shadowOAM
	.word	.LANCHOR0
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
	ldr	r2, .L41
	ldr	r3, [r2]
	ldr	r1, .L41+4
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r2]
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L41+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L42:
	.align	2
.L41:
	.word	levelChangeTimer
	.word	100000
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
	mov	r3, #67108864
	mov	r0, #0
	mov	r1, #4352
	mov	r2, #56320
	push	{r4, lr}
	ldr	r4, .L45
	strh	r0, [r3, #16]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16
	mov	r2, #83886080
	ldr	r1, .L45+4
	mov	lr, pc
	bx	r4
	mov	r3, #1200
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L45+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L45+12
	ldr	r1, .L45+16
	mov	r3, #4096
	mov	lr, pc
	bx	r4
	ldr	r3, .L45+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L45+24
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L45+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L46:
	.align	2
.L45:
	.word	DMANow
	.word	pausePal
	.word	pauseTiles
	.word	100720640
	.word	pauseMap
	.word	hideSprites
	.word	shadowOAM
	.word	.LANCHOR0
	.size	goToPause, .-goToPause
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
	@ link register save eliminated.
	ldr	r3, .L49
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	pause.part.0
.L50:
	.align	2
.L49:
	.word	oldButtons
	.size	pause, .-pause
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
	push	{r4, lr}
	mov	r3, #16
	ldr	r4, .L53
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L53+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L53+8
	ldr	r1, .L53+12
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L53+16
	mov	r0, #3
	ldr	r1, .L53+20
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L53+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L54:
	.align	2
.L53:
	.word	DMANow
	.word	instructionsPal
	.word	6480
	.word	instructionsTiles
	.word	100720640
	.word	instructionsMap
	.word	.LANCHOR0
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
	ldr	r2, .L67
	ldr	r4, .L67+4
	ldr	r0, [r2]
	ldrh	r3, [r4]
	add	r0, r0, #1
	tst	r3, #8
	str	r0, [r2]
	beq	.L56
	ldr	r2, .L67+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L65
.L56:
	tst	r3, #1
	beq	.L55
	ldr	r3, .L67+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L66
.L55:
	pop	{r4, lr}
	bx	lr
.L66:
	pop	{r4, lr}
	b	goToInstructions
.L65:
	ldr	r3, .L67+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+16
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L67+20
	ldr	r0, .L67+24
	ldr	r3, .L67+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+32
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L56
.L68:
	.align	2
.L67:
	.word	seed
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	stopSound
	.word	170114
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
	ldr	r3, .L77
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L77+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L77+8
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L77+12
	ldr	r0, .L77+16
	ldr	r3, .L77+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L77+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L78:
	.align	2
.L77:
	.word	oldButtons
	.word	buttons
	.word	stopSound
	.word	170114
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
	mov	r3, #67108864
	mov	r0, #0
	mov	r1, #4352
	mov	r2, #56320
	push	{r4, lr}
	ldr	r4, .L81
	strh	r0, [r3, #16]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16
	mov	r2, #83886080
	ldr	r1, .L81+4
	mov	lr, pc
	bx	r4
	mov	r3, #1712
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L81+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L81+12
	ldr	r1, .L81+16
	mov	r3, #4096
	mov	lr, pc
	bx	r4
	ldr	r3, .L81+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L81+24
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L81+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L82:
	.align	2
.L81:
	.word	DMANow
	.word	losePal
	.word	loseTiles
	.word	100720640
	.word	loseMap
	.word	hideSprites
	.word	shadowOAM
	.word	.LANCHOR0
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
	ldr	r3, .L99
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L84
	ldr	r3, .L99+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L95
.L84:
	ldr	r3, .L99+16
	ldr	r3, [r3]
	cmp	r3, #5
	beq	.L96
.L85:
	ldr	r3, .L99+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L97
.L86:
	ldr	r3, .L99+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L98
	pop	{r4, lr}
	bx	lr
.L98:
	pop	{r4, lr}
	b	goToLevel3
.L97:
	bl	goToLevel2
	b	.L86
.L96:
	ldr	r3, .L99+28
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L99+32
	ldr	r0, .L99+36
	ldr	r3, .L99+40
	mov	lr, pc
	bx	r3
	bl	goToLose
	b	.L85
.L95:
	ldr	r3, .L99+44
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L84
.L100:
	.align	2
.L99:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	matesGone
	.word	initLevel2Change
	.word	initLevel3Change
	.word	stopSound
	.word	215998
	.word	loseSong
	.word	playSoundA
	.word	pauseSound
	.size	game, .-game
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
	ldr	r6, .L119
	ldr	r7, .L119+4
	ldr	r3, .L119+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L119+12
	ldr	r2, [r6]
	ldrh	r0, [r7]
	ldr	fp, .L119+16
	ldr	r10, .L119+20
	ldr	r9, .L119+24
	ldr	r8, .L119+28
	ldr	r4, .L119+32
.L103:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L113
.L105:
	.word	.L111
	.word	.L110
	.word	.L109
	.word	.L108
	.word	.L107
	.word	.L106
	.word	.L104
.L104:
	ldr	r3, .L119+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L103
.L106:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L103
.L107:
	tst	r0, #8
	beq	.L113
	tst	r3, #8
	beq	.L118
.L113:
	mov	r0, r3
	b	.L103
.L108:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L103
.L109:
	tst	r0, #8
	beq	.L113
	ldr	r3, .L119+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L103
.L111:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L103
.L110:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L103
.L118:
	ldr	r3, .L119+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L103
.L120:
	.align	2
.L119:
	.word	.LANCHOR0
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	start
	.word	game
	.word	instructions
	.word	level2State
	.word	67109120
	.word	level3State
	.word	pause.part.0
	.word	goToStart
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
	ldr	r3, .L126
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L126+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L127:
	.align	2
.L126:
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
	.global	state
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	isCheat,4,4
	.comm	matesKissed,4,4
	.comm	levelChangeTimer,4,4
	.comm	level3,4,4
	.comm	level2,4,4
	.comm	initLevel3Change,4,4
	.comm	initLevel2Change,4,4
	.comm	activeLizard,4,4
	.comm	matesGone,4,4
	.comm	fTimer,4,4
	.comm	lTimer,4,4
	.comm	timer,4,4
	.comm	hOff,2,2
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	state, %object
	.size	state, 4
state:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
