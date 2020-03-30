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
	mov	r3, #3216
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
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	ldr	r3, .L12+28
	mov	r2, #100663296
	ldr	r1, .L12+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L12+36
	ldr	r1, .L12+40
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L12+44
	ldr	r1, .L12+48
	mov	lr, pc
	bx	r4
	ldr	r2, .L12+52
	mov	r3, #16384
	mov	r0, #3
	ldr	r1, .L12+56
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+60
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L12+64
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
	.word	6304
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
	mov	r3, #1200
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
	mov	r2, #2
	ldr	r3, .L23+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L24:
	.align	2
.L23:
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
	ldr	r3, .L30
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L30+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToGame
.L31:
	.align	2
.L30:
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
	ldr	r4, .L34
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L34+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L34+8
	ldr	r1, .L34+12
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L34+16
	mov	r0, #3
	ldr	r1, .L34+20
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L34+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L35:
	.align	2
.L34:
	.word	DMANow
	.word	instructionsPal
	.word	6416
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
	ldr	r2, .L48
	ldr	r4, .L48+4
	ldr	r0, [r2]
	ldrh	r3, [r4]
	add	r0, r0, #1
	tst	r3, #8
	str	r0, [r2]
	beq	.L37
	ldr	r2, .L48+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L46
.L37:
	tst	r3, #1
	beq	.L36
	ldr	r3, .L48+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L47
.L36:
	pop	{r4, lr}
	bx	lr
.L47:
	pop	{r4, lr}
	b	goToInstructions
.L46:
	ldr	r3, .L48+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L48+16
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L37
.L49:
	.align	2
.L48:
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
	ldr	r3, .L52
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	instructions.part.0
.L53:
	.align	2
.L52:
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
	ldr	r4, .L56
	strh	r0, [r3, #16]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #16
	mov	r2, #83886080
	ldr	r1, .L56+4
	mov	lr, pc
	bx	r4
	mov	r3, #1712
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L56+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L56+12
	ldr	r1, .L56+16
	mov	r3, #4096
	mov	lr, pc
	bx	r4
	ldr	r3, .L56+20
	mov	lr, pc
	bx	r3
	mov	r3, #32
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L56+24
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L56+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L57:
	.align	2
.L56:
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
	ldr	r3, .L67
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L59
	ldr	r3, .L67+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L65
.L59:
	ldr	r3, .L67+16
	ldr	r3, [r3]
	cmp	r3, #5
	beq	.L66
	pop	{r4, lr}
	bx	lr
.L66:
	pop	{r4, lr}
	b	goToLose
.L65:
	bl	goToPause
	b	.L59
.L68:
	.align	2
.L67:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	matesGone
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
	ldr	r8, .L87
	strh	r2, [r3, #8]	@ movhi
	strh	r1, [r3]	@ movhi
	mov	lr, pc
	bx	r8
	mov	r2, #0
	ldr	r3, .L87+4
	ldr	r4, .L87+8
	ldr	r10, .L87+12
	str	r2, [r3]
	ldrh	r0, [r10]
	ldr	r2, [r4]
	ldr	r9, .L87+16
	ldr	r6, .L87+20
	ldr	r5, .L87+24
	ldr	r7, .L87+28
	ldr	fp, .L87+32
.L71:
	strh	r0, [r9]	@ movhi
	ldrh	r3, [fp, #48]
	strh	r3, [r10]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L79
.L73:
	.word	.L77
	.word	.L76
	.word	.L75
	.word	.L74
	.word	.L72
.L72:
	tst	r0, #8
	beq	.L79
	tst	r3, #8
	beq	.L86
.L79:
	mov	r0, r3
	b	.L71
.L74:
	tst	r0, #8
	beq	.L79
	mov	lr, pc
	bx	r7
	ldr	r2, [r4]
	ldrh	r0, [r10]
	b	.L71
.L75:
	tst	r0, #8
	beq	.L79
	tst	r3, #8
	bne	.L79
	ldr	r3, .L87+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r4]
	ldrh	r0, [r10]
	b	.L71
.L77:
	mov	lr, pc
	bx	r6
	ldr	r2, [r4]
	ldrh	r0, [r10]
	b	.L71
.L76:
	mov	lr, pc
	bx	r5
	ldr	r2, [r4]
	ldrh	r0, [r10]
	b	.L71
.L86:
	mov	lr, pc
	bx	r8
	ldr	r2, [r4]
	ldrh	r0, [r10]
	b	.L71
.L88:
	.align	2
.L87:
	.word	goToStart
	.word	seed
	.word	.LANCHOR0
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	instructions.part.0
	.word	67109120
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
	ldr	r3, .L94
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L94+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L95:
	.align	2
.L94:
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
	.global	state
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	matesGone,4,4
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