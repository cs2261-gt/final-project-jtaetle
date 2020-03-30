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
	.file	"game.c"
	.text
	.align	2
	.global	initGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #16
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L15
	mov	r1, #0
	mov	lr, #64
	mov	ip, #1
	mov	r0, #134
	mov	r9, r3
	mov	r8, #240
	mov	r6, r2
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #4]
	ldr	r2, .L15+4
	str	lr, [r3]
	str	ip, [r3, #24]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	strh	r0, [r2]	@ movhi
	ldr	r4, .L15+8
	ldr	r5, .L15+12
	add	r7, r3, #84
.L4:
	str	r6, [r9, #36]
	str	r6, [r9, #40]
	str	r8, [r9, #32]
.L11:
	mov	lr, pc
	bx	r4
	smull	r3, r2, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r9, #28]
	bhi	.L11
	mov	r3, #0
	mov	r2, #3
	str	r3, [r9, #52]
	str	r3, [r9, #48]
	str	r2, [r9, #44]
	add	r9, r9, #28
	cmp	r9, r7
	bne	.L4
	mov	r3, #16
	mov	r2, #240
	ldr	r5, .L15+16
	ldr	r6, .L15+12
	str	r3, [r5, #8]
	str	r3, [r5, #12]
	str	r2, [r5, #4]
	mov	lr, pc
	bx	r4
	b	.L12
.L14:
	mov	lr, pc
	bx	r4
.L12:
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r5]
	bhi	.L14
	mov	r3, #0
	mov	r1, #95
	ldr	ip, .L15+20
	ldr	r0, .L15+24
	ldr	r2, .L15+28
	str	r3, [r5, #24]
	str	r3, [r5, #16]
	str	r3, [r5, #20]
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	birds
	.word	hOff
	.word	rand
	.word	1374389535
	.word	lizard
	.word	lTimer
	.word	matesGone
	.word	timer
	.size	initGame, .-initGame
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L74
	ldrh	r3, [r2]
	add	r3, r3, #1
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	strh	r3, [r2]	@ movhi
	ldr	r3, .L74+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r5, .L74+8
	sub	sp, sp, #20
	bne	.L18
	ldr	r3, [r5]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r5]
.L18:
	ldr	r3, .L74+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L19
	ldr	r3, [r5]
	cmp	r3, #119
	addle	r3, r3, #1
	strle	r3, [r5]
.L19:
	ldr	r3, [r5, #20]
	cmp	r3, #8
	addne	r1, r3, #1
	bne	.L21
	ldr	r3, [r5, #16]
	cmp	r3, #2
	moveq	r3, #0
	mov	r1, #1
	addne	r3, r3, #1
	str	r3, [r5, #16]
.L21:
	ldr	fp, .L74+12
	ldr	r4, .L74+16
	ldr	r2, [fp]
	ldr	r3, [r4]
	add	r2, r2, #1
	add	r3, r3, #1
	cmp	r2, #100
	str	r1, [r5, #20]
	str	r2, [fp]
	str	r3, [r4]
	beq	.L71
	ldr	r2, .L74+20
	cmp	r3, r2
	beq	.L67
.L73:
	ldr	r6, .L74+24
.L28:
	mov	r10, #0
	ldr	r4, .L74+8
	ldr	r8, .L74+28
	ldr	r9, .L74+32
	add	r7, r4, #84
.L36:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L31
	ldr	r3, [r4, #32]
	ldr	r2, [r4, #48]
	sub	r3, r3, #1
	cmp	r2, #8
	str	r3, [r4, #32]
	bne	.L32
	ldr	r2, [r4, #44]
	cmp	r2, #5
	moveq	r2, #3
	addne	r2, r2, #1
	str	r2, [r4, #44]
	str	r10, [r4, #48]
.L32:
	cmp	r3, #0
	ldreq	r2, [r9]
	addeq	r2, r2, #1
	streq	r2, [r9]
	ldr	r0, [r4, #40]
	ldr	r1, [r4, #36]
	ldr	r2, [r4, #28]
	streq	r3, [r4, #52]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r8
	ldr	r3, [r4, #48]
	cmp	r0, #0
	add	r3, r3, #1
	strne	r10, [r4, #52]
	str	r3, [r4, #48]
.L31:
	add	r4, r4, #28
	cmp	r4, r7
	bne	.L36
	ldr	r3, [r6, #24]
	cmp	r3, #0
	beq	.L17
	ldr	r3, [r6, #4]
	ldr	r2, [r6, #20]
	sub	r3, r3, #1
	cmp	r2, #8
	str	r3, [r6, #4]
	beq	.L72
.L38:
	ldr	r0, [r6, #12]
	ldr	r1, [r6, #8]
	ldr	r2, [r6]
	cmp	r3, #0
	streq	r3, [r6, #24]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	ldr	r4, .L74+28
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	movne	r2, #5
	movne	r1, #0
	ldrne	r3, .L74+32
	strne	r2, [r3]
	ldr	r3, [r6, #20]
	add	r3, r3, #1
	strne	r1, [r6, #24]
	str	r3, [r6, #20]
.L17:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L71:
	ldr	r2, [r5, #52]
	cmp	r2, #0
	beq	.L43
	ldr	r2, [r5, #80]
	cmp	r2, #0
	beq	.L44
	ldr	r2, [r5, #108]
	cmp	r2, #0
	moveq	r9, #3
	beq	.L24
.L25:
	mov	r2, #0
	str	r2, [fp]
	ldr	r2, .L74+20
	cmp	r3, r2
	bne	.L73
.L67:
	mov	r3, #16
	mov	r2, #240
	ldr	r6, .L74+24
	ldr	r7, .L74+36
	str	r3, [r6, #8]
	str	r3, [r6, #12]
	str	r2, [r6, #4]
	ldr	r8, .L74+40
	mov	lr, pc
	bx	r7
	b	.L70
.L29:
	mov	lr, pc
	bx	r7
.L70:
	smull	r3, r2, r8, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r6]
	bhi	.L29
	mov	r3, #0
	mov	r2, #1
	str	r3, [r6, #16]
	str	r2, [r6, #24]
	str	r3, [r6, #20]
	str	r3, [r4]
	b	.L28
.L72:
	ldr	r2, [r6, #16]
	cmp	r2, #2
	moveq	r2, #0
	mov	r1, #0
	addne	r2, r2, #1
	str	r2, [r6, #16]
	str	r1, [r6, #20]
	b	.L38
.L44:
	mov	r9, #2
.L24:
	mov	r3, #240
	rsb	r10, r9, r9, lsl #3
	add	r6, r5, r10, lsl #2
	str	r3, [r6, #4]
	ldr	r7, .L74+36
	mov	lr, pc
	bx	r7
	ldr	r8, .L74+40
	smull	r3, r2, r8, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	lsl	r10, r10, #2
	cmp	r3, #120
	str	r3, [r5, r10]
	lsl	r10, r9, #3
	bls	.L27
.L26:
	mov	lr, pc
	bx	r7
	smull	r3, r2, r8, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r6]
	bhi	.L26
.L27:
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0
	sub	r3, r10, r9
	add	r3, r5, r3, lsl #2
	str	r0, [r3, #24]
	str	r1, [r3, #16]
	str	r2, [r3, #20]
	ldr	r3, [r4]
	b	.L25
.L43:
	mov	r9, #1
	b	.L24
.L75:
	.align	2
.L74:
	.word	hOff
	.word	67109120
	.word	birds
	.word	timer
	.word	lTimer
	.word	350
	.word	lizard
	.word	collision
	.word	matesGone
	.word	rand
	.word	1374389535
	.size	updateGame, .-updateGame
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L84
	ldr	ip, .L84+4
	push	{r4, r5, r6, lr}
	ldr	r2, [r0, #16]
	ldr	r4, [ip, #24]
	ldr	r3, .L84+8
	lsl	r2, r2, #2
	cmp	r4, #0
	strh	r2, [r3, #4]	@ movhi
	moveq	r2, #512
	ldr	r1, [r0, #4]
	ldr	lr, .L84+12
	ldr	r0, [r0]
	orr	r1, r1, lr
	strh	r1, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strheq	r2, [r3, #32]	@ movhi
	beq	.L79
	ldr	r2, [ip, #16]
	ldr	r1, [ip, #4]
	ldr	r0, [ip]
	add	r2, r2, #32
	lsl	r2, r2, #2
	orr	lr, r1, lr
	strh	r2, [r3, #36]	@ movhi
	strh	lr, [r3, #34]	@ movhi
	strh	r0, [r3, #32]	@ movhi
.L79:
	mov	r5, #512
	ldr	r3, .L84
	ldr	r2, .L84+8
	ldr	r4, .L84+12
	add	ip, r3, #84
.L78:
	ldr	r1, [r3, #52]
	cmp	r1, #0
	ldrne	r0, [r3, #32]
	ldrne	r1, [r3, #44]
	ldrne	lr, [r3, #28]
	orrne	r0, r0, r4
	lslne	r1, r1, #2
	add	r3, r3, #28
	strhne	r0, [r2, #10]	@ movhi
	strhne	r1, [r2, #12]	@ movhi
	strhne	lr, [r2, #8]	@ movhi
	strheq	r5, [r2, #8]	@ movhi
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L78
	ldr	r3, .L84+16
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldr	r1, .L84+20
	ldrh	r3, [r1]
	lsr	r3, r3, #2
	strh	r3, [r2, #20]	@ movhi
	ldrh	r3, [r1]
	lsr	r3, r3, #1
	strh	r3, [r2, #16]	@ movhi
	ldr	r4, .L84+24
	mov	r3, #32
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L84+8
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L85:
	.align	2
.L84:
	.word	birds
	.word	lizard
	.word	shadowOAM
	.word	-32768
	.word	waitForVBlank
	.word	hOff
	.word	DMANow
	.size	drawGame, .-drawGame
	.comm	lizard,28,4
	.comm	birds,112,4
	.comm	shadowOAM,1024,4
	.comm	matesGone,4,4
	.comm	lTimer,4,4
	.comm	timer,4,4
	.comm	hOff,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
