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
	mov	r0, #6
	mov	r1, #95
	ldr	r2, .L15+20
	ldr	ip, .L15+24
	str	r3, [r2]
	ldr	r2, .L15+28
	str	r3, [r5, #24]
	str	r3, [r5, #20]
	str	r0, [r5, #16]
	str	r3, [ip]
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
	ldr	r2, .L59
	ldrh	r3, [r2]
	add	r3, r3, #1
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	strh	r3, [r2]	@ movhi
	ldr	r3, .L59+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r5, .L59+8
	sub	sp, sp, #20
	bne	.L18
	ldr	r3, [r5]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r5]
.L18:
	ldr	r3, .L59+4
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
	ldr	r4, .L59+12
	ldr	fp, .L59+16
	ldr	r2, [r4]
	ldr	r3, [fp]
	add	r2, r2, #1
	add	r3, r3, #1
	cmp	r2, #100
	str	r1, [r5, #20]
	str	r2, [r4]
	str	r3, [fp]
	beq	.L57
	cmp	r3, #250
	beq	.L58
.L28:
	mov	r9, #0
	ldr	r4, .L59+8
	ldr	r7, .L59+20
	ldr	r8, .L59+24
	add	r6, r4, #84
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
	str	r9, [r4, #48]
.L32:
	cmp	r3, #0
	ldreq	r2, [r8]
	addeq	r2, r2, #1
	streq	r2, [r8]
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
	bx	r7
	ldr	r3, [r4, #48]
	cmp	r0, #0
	add	r3, r3, #1
	strne	r9, [r4, #52]
	str	r3, [r4, #48]
.L31:
	add	r4, r4, #28
	cmp	r4, r6
	bne	.L36
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L57:
	ldr	r2, [r5, #52]
	cmp	r2, #0
	beq	.L38
	ldr	r2, [r5, #80]
	cmp	r2, #0
	beq	.L39
	ldr	r2, [r5, #108]
	cmp	r2, #0
	moveq	r9, #3
	beq	.L24
.L25:
	mov	r2, #0
	cmp	r3, #250
	str	r2, [r4]
	bne	.L28
.L58:
	mov	r3, #16
	mov	r2, #240
	ldr	r4, .L59+28
	ldr	r6, .L59+32
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	str	r2, [r4, #4]
	ldr	r7, .L59+36
	mov	lr, pc
	bx	r6
	b	.L56
.L29:
	mov	lr, pc
	bx	r6
.L56:
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r4]
	bhi	.L29
	mov	r3, #0
	mov	r2, #6
	str	r3, [r4, #24]
	str	r3, [r4, #20]
	str	r2, [r4, #16]
	b	.L28
.L39:
	mov	r9, #2
.L24:
	mov	r3, #240
	rsb	r10, r9, r9, lsl #3
	add	r7, r5, r10, lsl #2
	str	r3, [r7, #4]
	ldr	r6, .L59+32
	mov	lr, pc
	bx	r6
	ldr	r8, .L59+36
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
	bx	r6
	smull	r3, r2, r8, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r7]
	bhi	.L26
.L27:
	mov	ip, #1
	mov	r0, #3
	mov	r1, #0
	sub	r2, r10, r9
	add	r2, r5, r2, lsl #2
	ldr	r3, [fp]
	str	ip, [r2, #24]
	str	r0, [r2, #16]
	str	r1, [r2, #20]
	b	.L25
.L38:
	mov	r9, #1
	b	.L24
.L60:
	.align	2
.L59:
	.word	hOff
	.word	67109120
	.word	birds
	.word	timer
	.word	lTimer
	.word	collision
	.word	matesGone
	.word	lizard
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
	ldr	r0, .L67
	push	{r4, r5, r6, lr}
	ldr	r1, .L67+4
	ldr	r5, .L67+8
	mov	r3, r0
	mov	r4, r5
	mov	r2, r1
	mov	lr, #512
	ldr	ip, [r0, #4]
	orr	ip, ip, r5
	strh	ip, [r1, #2]	@ movhi
	ldr	ip, [r0]
	ldr	r0, [r0, #16]
	lsl	r0, r0, #2
	strh	r0, [r1, #4]	@ movhi
	strh	ip, [r1]	@ movhi
	add	ip, r3, #84
.L64:
	ldr	r1, [r3, #52]
	cmp	r1, #0
	ldrne	r0, [r3, #32]
	ldrne	r1, [r3, #44]
	ldrne	r5, [r3, #28]
	orrne	r0, r0, r4
	lslne	r1, r1, #2
	add	r3, r3, #28
	strhne	r0, [r2, #10]	@ movhi
	strhne	r1, [r2, #12]	@ movhi
	strhne	r5, [r2, #8]	@ movhi
	strheq	lr, [r2, #8]	@ movhi
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L64
	ldr	r3, .L67+12
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldr	r1, .L67+16
	ldrh	r3, [r1]
	lsr	r3, r3, #2
	strh	r3, [r2, #20]	@ movhi
	ldrh	r3, [r1]
	lsr	r3, r3, #1
	strh	r3, [r2, #16]	@ movhi
	ldr	r4, .L67+20
	mov	r3, #32
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L67+4
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L68:
	.align	2
.L67:
	.word	birds
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
