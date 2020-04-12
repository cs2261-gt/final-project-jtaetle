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
	ldr	r2, .L4+12
	mov	r0, #3
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+20
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
	mov	r3, #67108864
	mov	r2, #56320
	mov	r1, #4352
	push	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	strh	r1, [r3]	@ movhi
	bl	goToStart
	mov	r2, #0
	ldr	r3, .L8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L9:
	.align	2
.L8:
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
	.type	instructions.part.0, %function
instructions.part.0:
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
	.word	initGame
	.size	instructions.part.0, .-instructions.part.0
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
	mov	r3, #32
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
	.word	75000
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
	mov	r3, #32
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
	mov	r3, #32
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
	ldr	r3, .L52
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L52+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToGame
.L53:
	.align	2
.L52:
	.word	oldButtons
	.word	buttons
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
	ldr	r4, .L56
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L56+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L56+8
	ldr	r1, .L56+12
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L56+16
	mov	r0, #3
	ldr	r1, .L56+20
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L56+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L57:
	.align	2
.L56:
	.word	DMANow
	.word	instructionsPal
	.word	6032
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
	ldr	r2, .L70
	ldr	r4, .L70+4
	ldr	r0, [r2]
	ldrh	r3, [r4]
	add	r0, r0, #1
	tst	r3, #8
	str	r0, [r2]
	beq	.L59
	ldr	r2, .L70+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L68
.L59:
	tst	r3, #1
	beq	.L58
	ldr	r3, .L70+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L69
.L58:
	pop	{r4, lr}
	bx	lr
.L69:
	pop	{r4, lr}
	b	goToInstructions
.L68:
	ldr	r3, .L70+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+16
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L59
.L71:
	.align	2
.L70:
	.word	seed
	.word	oldButtons
	.word	buttons
	.word	srand
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
	@ link register save eliminated.
	ldr	r3, .L74
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	instructions.part.0
.L75:
	.align	2
.L74:
	.word	oldButtons
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
	ldr	r4, .L78
	strh	r0, [r3, #16]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16
	mov	r2, #83886080
	ldr	r1, .L78+4
	mov	lr, pc
	bx	r4
	mov	r3, #1712
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L78+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L78+12
	ldr	r1, .L78+16
	mov	r3, #4096
	mov	lr, pc
	bx	r4
	ldr	r3, .L78+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L78+24
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L78+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L79:
	.align	2
.L78:
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
	ldr	r3, .L96
	mov	lr, pc
	bx	r3
	ldr	r3, .L96+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L96+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L81
	ldr	r3, .L96+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L92
.L81:
	ldr	r3, .L96+16
	ldr	r3, [r3]
	cmp	r3, #5
	beq	.L93
.L82:
	ldr	r3, .L96+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L94
.L83:
	ldr	r3, .L96+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L95
	pop	{r4, lr}
	bx	lr
.L95:
	pop	{r4, lr}
	b	goToLevel3
.L94:
	bl	goToLevel2
	b	.L83
.L93:
	bl	goToLose
	b	.L82
.L92:
	bl	goToPause
	b	.L81
.L97:
	.align	2
.L96:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	matesGone
	.word	initLevel2Change
	.word	initLevel3Change
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
	mov	r3, #67108864
	mov	r2, #56320
	mov	r1, #4352
	push	{r4, r7, fp, lr}
	strh	r2, [r3, #8]	@ movhi
	strh	r1, [r3]	@ movhi
	ldr	r3, .L118
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L118+4
	ldr	r6, .L118+8
	ldr	fp, .L118+12
	str	r2, [r3]
	ldrh	r0, [fp]
	ldr	r2, [r6]
	ldr	r5, .L118+16
	ldr	r10, .L118+20
	ldr	r9, .L118+24
	ldr	r8, .L118+28
	ldr	r7, .L118+32
	ldr	r4, .L118+36
.L100:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L110
.L102:
	.word	.L108
	.word	.L107
	.word	.L106
	.word	.L105
	.word	.L104
	.word	.L103
	.word	.L101
.L101:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L100
.L103:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L100
.L104:
	tst	r0, #8
	beq	.L110
	tst	r3, #8
	beq	.L117
.L110:
	mov	r0, r3
	b	.L100
.L105:
	tst	r0, #8
	beq	.L110
	ldr	r3, .L118+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L100
.L106:
	tst	r0, #8
	beq	.L110
	tst	r3, #8
	bne	.L110
	ldr	r3, .L118+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L100
.L108:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L100
.L107:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L100
.L117:
	ldr	r3, .L118
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L100
.L119:
	.align	2
.L118:
	.word	goToStart
	.word	seed
	.word	.LANCHOR0
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	level2State
	.word	level3State
	.word	67109120
	.word	instructions.part.0
	.word	goToGame
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
	ldr	r3, .L125
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L125+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L126:
	.align	2
.L125:
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
	.global	state
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
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
