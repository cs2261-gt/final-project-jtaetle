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
	ldr	r3, .L16
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
	ldr	r2, .L16+4
	str	lr, [r3]
	str	ip, [r3, #24]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	strh	r0, [r2]	@ movhi
	ldr	r4, .L16+8
	ldr	r5, .L16+12
	add	r7, r3, #84
.L4:
	str	r6, [r9, #36]
	str	r6, [r9, #40]
	str	r8, [r9, #32]
.L13:
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
	bhi	.L13
	mov	r3, #0
	mov	r2, #3
	str	r3, [r9, #52]
	str	r3, [r9, #48]
	str	r2, [r9, #44]
	add	r9, r9, #28
	cmp	r9, r7
	bne	.L4
	mov	r6, #16
	mov	r8, #240
	ldr	r9, .L16+16
	ldr	r5, .L16+12
	add	r7, r9, #112
.L7:
	str	r6, [r9, #8]
	str	r6, [r9, #12]
	str	r8, [r9, #4]
.L14:
	mov	lr, pc
	bx	r4
	smull	r3, r2, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r9]
	bhi	.L14
	mov	r3, #0
	add	r9, r9, #28
	str	r3, [r9, #-4]
	str	r3, [r9, #-12]
	str	r3, [r9, #-8]
	cmp	r9, r7
	bne	.L7
	mov	r1, #95
	ldr	r2, .L16+20
	ldr	lr, .L16+24
	str	r1, [r2]
	ldr	ip, .L16+28
	ldr	r0, .L16+32
	ldr	r1, .L16+36
	ldr	r2, .L16+40
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	birds
	.word	hOff
	.word	rand
	.word	1374389535
	.word	lizard
	.word	timer
	.word	lTimer
	.word	matesGone
	.word	matesKissed
	.word	level2
	.word	level3
	.size	initGame, .-initGame
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r1, .L99
	ldr	r8, .L99+4
	ldrh	r3, [r1]
	ldr	r0, [r8]
	ldr	fp, .L99+8
	add	r3, r3, #1
	cmp	r0, #10
	strh	r3, [r1]	@ movhi
	sub	sp, sp, #36
	ldr	r3, [fp]
	beq	.L93
	cmp	r0, #20
	moveq	r0, #1
	ldreq	r1, .L99+12
	ldr	r6, .L99+16
	streq	r0, [r1]
	add	r3, r3, #1
.L21:
	ldr	r1, .L99+20
	ldrh	r1, [r1, #48]
	tst	r1, #64
	ldr	r5, .L99+24
	bne	.L22
	ldr	r1, [r5]
	cmp	r1, #0
	subgt	r1, r1, #1
	strgt	r1, [r5]
.L22:
	ldr	r1, .L99+20
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L23
	ldr	r1, [r5]
	cmp	r1, #119
	addle	r1, r1, #1
	strle	r1, [r5]
.L23:
	ldr	r1, [r5, #20]
	cmp	r1, #8
	addne	ip, r1, #1
	bne	.L25
	ldr	r1, [r5, #16]
	cmp	r1, #2
	moveq	r1, #0
	mov	ip, #1
	addne	r1, r1, #1
	str	r1, [r5, #16]
.L25:
	ldr	r10, .L99+28
	ldr	r0, [r10]
	add	r0, r0, #1
	cmp	r0, #100
	str	ip, [r5, #20]
	str	r3, [fp]
	str	r0, [r10]
	beq	.L94
.L27:
	ldr	r1, [r6]
	cmp	r1, #1
	beq	.L95
	ldr	r1, .L99+32
	cmp	r3, r1
	beq	.L96
.L33:
	mov	fp, #0
	ldr	r4, .L99+24
	ldr	r10, .L99+36
	ldr	r9, .L99+40
	add	r7, r4, #84
.L48:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L43
	ldr	r3, [r4, #32]
	ldr	r2, [r4, #48]
	sub	r3, r3, #1
	cmp	r2, #8
	str	r3, [r4, #32]
	bne	.L44
	ldr	r2, [r4, #44]
	cmp	r2, #5
	moveq	r2, #3
	addne	r2, r2, #1
	str	r2, [r4, #44]
	str	fp, [r4, #48]
.L44:
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
	bx	r10
	cmp	r0, #0
	ldrne	r3, [r8]
	addne	r3, r3, #1
	strne	r3, [r8]
	ldr	r3, [r4, #48]
	add	r3, r3, #1
	strne	fp, [r4, #52]
	str	r3, [r4, #48]
.L43:
	add	r4, r4, #28
	cmp	r4, r7
	bne	.L48
	mov	r8, #0
	ldr	r4, .L99+44
	ldr	r9, .L99+36
	ldr	r10, .L99+40
	add	r7, r4, #112
.L57:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L49
	ldr	r3, [r6]
	cmp	r3, #0
	ldr	r3, [r4, #4]
	beq	.L50
	cmp	r3, #1
	subgt	r3, r3, #2
	strle	r8, [r4, #24]
	strgt	r3, [r4, #4]
.L52:
	ldr	r2, [r4, #20]
	cmp	r2, #8
	bne	.L54
	ldr	r2, [r4, #16]
	cmp	r2, #2
	moveq	r2, #0
	addne	r2, r2, #1
	str	r2, [r4, #16]
	str	r8, [r4, #20]
.L54:
	ldr	r0, [r4, #12]
	ldr	r1, [r4, #8]
	ldr	r2, [r4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	movne	r3, #5
	strne	r3, [r10]
	ldr	r3, [r4, #20]
	add	r3, r3, #1
	strne	r8, [r4, #24]
	str	r3, [r4, #20]
.L49:
	add	r4, r4, #28
	cmp	r4, r7
	bne	.L57
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L50:
	cmp	r3, #0
	subne	r2, r3, #1
	movne	r3, r2
	streq	r3, [r4, #24]
	strne	r2, [r4, #4]
	b	.L52
.L96:
	ldr	r7, .L99+44
	mov	r9, #0
	mov	r3, r7
.L42:
	ldr	r0, [r3, #24]
	cmp	r0, #0
	beq	.L97
	add	r9, r9, #1
	cmp	r9, #4
	add	r3, r3, #28
	bne	.L42
.L36:
	mov	r3, #0
	str	r3, [fp]
	b	.L33
.L95:
	cmp	r3, #100
	bne	.L33
	ldr	r7, .L99+44
	mov	r9, #0
	mov	r3, r7
.L38:
	ldr	r0, [r3, #24]
	cmp	r0, #0
	beq	.L98
	add	r9, r9, #1
	cmp	r9, #4
	add	r3, r3, #28
	bne	.L38
	b	.L36
.L94:
	ldr	r0, [r5, #52]
	cmp	r0, #0
	beq	.L59
	ldr	r0, [r5, #80]
	cmp	r0, #0
	beq	.L60
	ldr	r0, [r5, #108]
	cmp	r0, #0
	moveq	r3, #3
	streq	r3, [sp, #20]
	beq	.L28
.L29:
	mov	r0, #0
	str	r0, [r10]
	b	.L27
.L93:
	mov	r1, #1
	ldr	r6, .L99+16
	cmp	r3, #100
	str	r1, [r6]
	movgt	r1, #50
	movgt	r3, #51
	strgt	r1, [fp]
	addle	r3, r3, r1
	b	.L21
.L60:
	mov	r3, #2
	str	r3, [sp, #20]
.L28:
	mov	r3, #240
	ldr	r2, [sp, #20]
	rsb	r2, r2, r2, lsl #3
	add	r7, r5, r2, lsl #2
	str	r3, [r7, #4]
	lsl	r2, r2, #2
	ldr	r4, .L99+48
	str	r2, [sp, #24]
	mov	lr, pc
	bx	r4
	ldr	r9, .L99+52
	smull	r3, ip, r9, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #6
	add	r3, r3, r3, lsl #2
	ldr	r2, [sp, #24]
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	str	r3, [r5, r2]
	ldr	r2, [sp, #20]
	cmp	r3, #120
	lsl	r3, r2, #3
	str	r3, [sp, #24]
	bls	.L31
.L30:
	mov	lr, pc
	bx	r4
	smull	r3, ip, r9, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r7]
	bhi	.L30
.L31:
	mov	lr, #1
	mov	ip, #3
	mov	r0, #0
	add	r2, sp, #20
	ldm	r2, {r2, r3}
	sub	r3, r3, r2
	add	r3, r5, r3, lsl #2
	str	lr, [r3, #24]
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	ldr	r3, [fp]
	b	.L29
.L97:
	mov	r3, #240
	rsb	r1, r9, r9, lsl #3
	add	r2, r7, r1, lsl #2
	str	r3, [r2, #4]
	lsl	r1, r1, #2
	ldr	r4, .L99+48
	str	r1, [sp, #20]
	str	r2, [sp, #28]
	mov	lr, pc
	bx	r4
	ldr	r10, .L99+52
	smull	r3, ip, r10, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #6
	add	r3, r3, r3, lsl #2
	ldr	r1, [sp, #20]
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	str	r3, [r7, r1]
	cmp	r3, #120
	lsl	r3, r9, #3
	str	r3, [sp, #24]
	bls	.L41
	ldr	r2, [sp, #28]
	str	r2, [sp, #20]
.L40:
	mov	lr, pc
	bx	r4
	smull	r3, ip, r10, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	ldr	r2, [sp, #20]
	cmp	r3, #120
	str	r3, [r2]
	bhi	.L40
.L41:
	mov	r3, #0
	mov	r0, #1
	ldr	r2, [sp, #24]
	sub	r1, r2, r9
	add	r7, r7, r1, lsl #2
	str	r0, [r7, #24]
	str	r3, [r7, #16]
	str	r3, [r7, #20]
	b	.L36
.L98:
	mov	r3, #240
	rsb	r1, r9, r9, lsl #3
	add	r2, r7, r1, lsl #2
	str	r3, [r2, #4]
	lsl	r1, r1, #2
	ldr	r4, .L99+48
	str	r1, [sp, #20]
	str	r2, [sp, #28]
	mov	lr, pc
	bx	r4
	ldr	r10, .L99+52
	smull	r3, ip, r10, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #6
	add	r3, r3, r3, lsl #2
	ldr	r1, [sp, #20]
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	str	r3, [r7, r1]
	cmp	r3, #120
	lsl	r3, r9, #3
	str	r3, [sp, #24]
	bls	.L41
	ldr	r2, [sp, #28]
	str	r2, [sp, #20]
.L35:
	mov	lr, pc
	bx	r4
	smull	r3, ip, r10, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	ldr	r2, [sp, #20]
	cmp	r3, #120
	str	r3, [r2]
	bhi	.L35
	b	.L41
.L59:
	mov	r3, #1
	str	r3, [sp, #20]
	b	.L28
.L100:
	.align	2
.L99:
	.word	hOff
	.word	matesKissed
	.word	lTimer
	.word	level3
	.word	level2
	.word	67109120
	.word	birds
	.word	timer
	.word	350
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
	ldr	r0, .L111
	push	{r4, r5, r6, lr}
	mov	r1, r0
	mov	r2, r0
	mov	r4, #512
	ldr	lr, .L111+4
	ldr	ip, .L111+8
	ldr	r3, [lr, #4]
	mov	r5, ip
	orr	r3, r3, ip
	ldr	ip, [lr, #16]
	strh	r3, [r0, #2]	@ movhi
	ldr	lr, [lr]
	ldr	r3, .L111+12
	lsl	ip, ip, #2
	strh	ip, [r0, #4]	@ movhi
	strh	lr, [r0]	@ movhi
	add	lr, r3, #112
.L104:
	ldr	r0, [r3, #24]
	cmp	r0, #0
	ldrne	r0, [r3, #16]
	ldrne	ip, [r3, #4]
	ldrne	r6, [r3]
	addne	r0, r0, #32
	lslne	r0, r0, #2
	orrne	ip, ip, r5
	add	r3, r3, #28
	strhne	r0, [r2, #36]	@ movhi
	strhne	ip, [r2, #34]	@ movhi
	strhne	r6, [r2, #32]	@ movhi
	strheq	r4, [r2, #32]	@ movhi
	cmp	r3, lr
	add	r2, r2, #8
	bne	.L104
	mov	r5, #512
	ldr	r3, .L111+4
	ldr	r4, .L111+8
	add	ip, r3, #84
.L107:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	ldrne	r0, [r3, #32]
	ldrne	r2, [r3, #44]
	ldrne	lr, [r3, #28]
	orrne	r0, r0, r4
	lslne	r2, r2, #2
	add	r3, r3, #28
	strhne	r0, [r1, #10]	@ movhi
	strhne	r2, [r1, #12]	@ movhi
	strhne	lr, [r1, #8]	@ movhi
	strheq	r5, [r1, #8]	@ movhi
	cmp	r3, ip
	add	r1, r1, #8
	bne	.L107
	ldr	r3, .L111+16
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldr	r1, .L111+20
	ldrh	r3, [r1]
	lsr	r3, r3, #2
	strh	r3, [r2, #20]	@ movhi
	ldrh	r3, [r1]
	lsr	r3, r3, #1
	strh	r3, [r2, #16]	@ movhi
	ldr	r4, .L111+24
	mov	r3, #32
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L111
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L112:
	.align	2
.L111:
	.word	shadowOAM
	.word	birds
	.word	-32768
	.word	lizard
	.word	waitForVBlank
	.word	hOff
	.word	DMANow
	.size	drawGame, .-drawGame
	.comm	lizard,112,4
	.comm	birds,112,4
	.comm	shadowOAM,1024,4
	.comm	matesKissed,4,4
	.comm	level3,4,4
	.comm	level2,4,4
	.comm	matesGone,4,4
	.comm	lTimer,4,4
	.comm	timer,4,4
	.comm	hOff,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
