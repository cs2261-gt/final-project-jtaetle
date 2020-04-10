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
	mov	r2, #32
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L22
	mov	r4, #16
	mov	r1, #0
	mov	lr, #64
	mov	ip, #1
	mov	r0, #134
	mov	r9, r3
	mov	r8, #240
	mov	r6, r2
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	ldr	r2, .L22+4
	str	r4, [r3, #4]
	str	lr, [r3]
	str	ip, [r3, #24]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	strh	r0, [r2]	@ movhi
	ldr	r5, .L22+8
	ldr	r4, .L22+12
	add	r7, r3, #84
.L4:
	str	r6, [r9, #36]
	str	r6, [r9, #40]
	str	r8, [r9, #32]
.L18:
	mov	lr, pc
	bx	r5
	smull	r3, r2, r4, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r9, #28]
	bhi	.L18
	mov	r3, #0
	mov	r2, #3
	str	r3, [r9, #52]
	str	r3, [r9, #48]
	str	r2, [r9, #44]
	add	r9, r9, #28
	cmp	r9, r7
	bne	.L4
	mov	r6, #32
	mov	r8, #240
	ldr	r9, .L22+16
	ldr	r4, .L22+12
	add	r7, r9, #84
.L7:
	str	r6, [r9, #8]
	str	r6, [r9, #12]
	str	r8, [r9, #4]
.L19:
	mov	lr, pc
	bx	r5
	smull	r3, r2, r4, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r9]
	bhi	.L19
	mov	r3, #0
	add	r9, r9, #28
	str	r3, [r9, #-4]
	str	r3, [r9, #-12]
	str	r3, [r9, #-8]
	cmp	r9, r7
	bne	.L7
	mov	r9, #240
	mov	r7, #16
	ldr	r4, .L22+20
	ldr	r6, .L22+12
	add	r8, r4, #180
.L10:
	str	r9, [r4, #4]
.L20:
	mov	lr, pc
	bx	r5
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r4]
	bhi	.L20
	mov	r3, #0
	str	r7, [r4, #8]
	str	r7, [r4, #12]
	str	r3, [r4, #16]
	add	r4, r4, #20
	cmp	r4, r8
	bne	.L10
	mov	r0, #95
	ldr	r1, .L22+24
	ldr	r2, .L22+28
	str	r0, [r1]
	ldr	lr, .L22+32
	str	r3, [r2]
	ldr	ip, .L22+36
	ldr	r0, .L22+40
	ldr	r1, .L22+44
	ldr	r2, .L22+48
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	birds
	.word	hOff
	.word	rand
	.word	1374389535
	.word	lizard
	.word	fireball
	.word	timer
	.word	lTimer
	.word	fTimer
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, .L138
	ldr	r4, .L138+4
	ldrh	r3, [r2]
	ldr	r1, [r4]
	ldr	fp, .L138+8
	add	r3, r3, #1
	cmp	r1, #2
	strh	r3, [r2]	@ movhi
	sub	sp, sp, #28
	ldr	r3, [fp]
	beq	.L132
	cmp	r1, #4
	moveq	r1, #1
	ldreq	r2, .L138+12
	streq	r1, [r2]
	ldr	r2, .L138+16
	str	r2, [sp, #16]
	add	r3, r3, #1
.L27:
	ldr	r2, .L138+20
	ldrh	r2, [r2, #48]
	tst	r2, #64
	ldr	r5, .L138+24
	bne	.L28
	ldr	r2, [r5]
	cmp	r2, #0
	subgt	r2, r2, #1
	strgt	r2, [r5]
.L28:
	ldr	r2, .L138+20
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L29
	ldr	r2, [r5]
	cmp	r2, #119
	addle	r2, r2, #1
	strle	r2, [r5]
.L29:
	ldr	r2, .L138+28
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L30
	ldr	r2, .L138+32
	ldrh	r2, [r2]
	tst	r2, #1
	moveq	r1, #1
	ldreq	r2, .L138+36
	streq	r1, [r2]
.L30:
	ldr	r2, [r5, #20]
	cmp	r2, #8
	addne	r0, r2, #1
	bne	.L32
	ldr	r2, [r5, #16]
	cmp	r2, #2
	moveq	r2, #0
	mov	r0, #1
	addne	r2, r2, #1
	str	r2, [r5, #16]
.L32:
	ldr	r7, .L138+40
	ldr	r1, [r7]
	add	r1, r1, #1
	cmp	r1, #100
	str	r0, [r5, #20]
	str	r3, [fp]
	str	r1, [r7]
	beq	.L133
.L34:
	ldr	r2, [sp, #16]
	ldr	r1, [r2]
	cmp	r1, #1
	beq	.L134
	ldr	r2, .L138+44
	cmp	r3, r2
	beq	.L135
.L42:
	mov	r10, #0
	ldr	r6, .L138+24
	ldr	r9, .L138+48
	ldr	r8, .L138+52
	add	r7, r6, #84
.L59:
	ldr	r3, [r6, #52]
	cmp	r3, #0
	beq	.L54
	ldr	r3, [r6, #32]
	ldr	r2, [r6, #48]
	sub	r3, r3, #1
	cmp	r2, #8
	str	r3, [r6, #32]
	bne	.L55
	ldr	r2, [r6, #44]
	cmp	r2, #5
	moveq	r2, #3
	addne	r2, r2, #1
	str	r2, [r6, #44]
	str	r10, [r6, #48]
.L55:
	cmp	r3, #0
	ldreq	r2, [r8]
	addeq	r2, r2, #1
	streq	r2, [r8]
	ldr	r0, [r6, #40]
	ldr	r1, [r6, #36]
	ldr	r2, [r6, #28]
	streq	r3, [r6, #52]
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
	ldrne	r3, [r4]
	addne	r3, r3, #1
	strne	r3, [r4]
	ldr	r3, [r6, #48]
	add	r3, r3, #1
	strne	r10, [r6, #52]
	str	r3, [r6, #48]
.L54:
	add	r6, r6, #28
	cmp	r6, r7
	bne	.L59
	mov	r7, #0
	ldr	r4, .L138+56
	ldr	r8, .L138+48
	ldr	r10, .L138+12
	add	fp, r4, #84
.L61:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L70
	ldr	r3, [sp, #16]
	ldr	r3, [r3]
	cmp	r3, #0
	ldr	r3, [r4, #4]
	beq	.L63
	cmp	r3, #1
	subgt	r3, r3, #2
	strle	r7, [r4, #24]
	strgt	r3, [r4, #4]
.L65:
	ldr	r2, [r4, #20]
	cmp	r2, #8
	bne	.L67
	ldr	r2, [r4, #16]
	cmp	r2, #2
	moveq	r2, #0
	addne	r2, r2, #1
	str	r2, [r4, #16]
	str	r7, [r4, #20]
.L67:
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
	bx	r8
	cmp	r0, #0
	movne	r3, #5
	ldrne	r2, .L138+52
	strne	r3, [r2]
	ldr	r3, [r4, #20]
	ldr	r2, [r10]
	strne	r7, [r4, #24]
	add	r3, r3, #1
	cmp	r2, #0
	str	r3, [r4, #20]
	bne	.L136
.L70:
	add	r4, r4, #28
	cmp	r4, fp
	bne	.L61
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L63:
	cmp	r3, #0
	subne	r2, r3, #1
	movne	r3, r2
	streq	r3, [r4, #24]
	strne	r2, [r4, #4]
	b	.L65
.L135:
	ldr	r10, .L138+56
	ldr	r9, [r10, #24]
	cmp	r9, #0
	beq	.L51
	ldr	r3, [r10, #52]
	cmp	r3, #0
	beq	.L82
	ldr	r3, [r10, #80]
	cmp	r3, #0
	moveq	r9, #2
	beq	.L51
.L44:
	mov	r3, #0
	str	r3, [fp]
	b	.L42
.L136:
	ldr	r6, .L138+60
	add	r9, r6, #180
.L76:
	ldr	r3, [r6, #16]
	cmp	r3, #0
	beq	.L72
	ldr	r3, [r6, #4]
	ldr	r0, [r6, #12]
	ldr	r1, [r6, #8]
	ldr	r2, [r6]
	cmp	r3, #2
	subgt	r3, r3, #3
	strgt	r3, [r6, #4]
	strle	r7, [r6, #16]
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
	cmp	r0, #0
	movne	r2, #5
	ldrne	r3, .L138+52
	strne	r7, [r6, #16]
	strne	r2, [r3]
.L72:
	add	r6, r6, #20
	cmp	r6, r9
	bne	.L76
	b	.L70
.L132:
	mov	r2, #1
	ldr	r1, .L138+16
	cmp	r3, #100
	str	r2, [r1]
	movgt	r2, #50
	movgt	r3, #51
	str	r1, [sp, #16]
	strgt	r2, [fp]
	addle	r3, r3, r2
	b	.L27
.L134:
	cmp	r3, #100
	bne	.L42
	ldr	r10, .L138+56
	ldr	r9, [r10, #24]
	cmp	r9, #0
	beq	.L43
	ldr	r3, [r10, #52]
	cmp	r3, #0
	beq	.L80
	ldr	r3, [r10, #80]
	cmp	r3, #0
	bne	.L44
	mov	r9, #2
.L43:
	mov	r3, #240
	rsb	r2, r9, r9, lsl #3
	add	r7, r10, r2, lsl #2
	str	r3, [r7, #4]
	lsl	r2, r2, #2
	ldr	r6, .L138+64
	str	r2, [sp, #20]
	mov	lr, pc
	bx	r6
	ldr	r8, .L138+68
	smull	r3, r1, r8, r0
	asr	r3, r0, #31
	rsb	r3, r3, r1, asr #6
	add	r3, r3, r3, lsl #2
	ldr	r2, [sp, #20]
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	str	r3, [r10, r2]
	cmp	r3, #120
	lsl	r2, r9, #3
	str	r2, [sp, #20]
	bls	.L45
.L46:
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
	bhi	.L46
.L45:
	mov	ip, #0
	mov	r0, #1
	ldr	r1, .L138+12
	ldr	r2, [sp, #20]
	ldr	r1, [r1]
	cmp	r1, ip
	sub	r1, r2, r9
	add	r1, r10, r1, lsl #2
	str	r0, [r1, #24]
	str	ip, [r1, #16]
	str	ip, [r1, #20]
	beq	.L44
	ldr	r7, .L138+60
	mov	r1, ip
	mov	lr, ip
	mov	r0, r7
	ldr	r8, .L138+72
	ldr	r6, [r8]
.L50:
	ldr	r2, [r0, #16]
	cmp	r2, #0
	beq	.L137
	add	r1, r1, #1
	cmp	r1, #9
	mov	r6, #0
	mov	ip, #1
	add	r0, r0, #20
	bne	.L50
	str	lr, [r8]
	b	.L44
.L133:
	ldr	r1, [r5, #52]
	cmp	r1, #0
	beq	.L78
	ldr	r1, [r5, #80]
	cmp	r1, #0
	beq	.L79
	ldr	r1, [r5, #108]
	cmp	r1, #0
	moveq	r8, #3
	beq	.L35
.L36:
	mov	r1, #0
	str	r1, [r7]
	b	.L34
.L82:
	mov	r9, #1
.L51:
	mov	r3, #240
	rsb	r2, r9, r9, lsl #3
	add	r7, r10, r2, lsl #2
	str	r3, [r7, #4]
	lsl	r2, r2, #2
	ldr	r6, .L138+64
	str	r2, [sp, #20]
	mov	lr, pc
	bx	r6
	ldr	r8, .L138+68
	smull	r3, r1, r8, r0
	asr	r3, r0, #31
	rsb	r3, r3, r1, asr #6
	add	r3, r3, r3, lsl #2
	ldr	r2, [sp, #20]
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	str	r3, [r10, r2]
	cmp	r3, #120
	lsl	r3, r9, #3
	str	r3, [sp, #20]
	bls	.L53
.L52:
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
	bhi	.L52
.L53:
	mov	r3, #0
	mov	r1, #1
	ldr	r2, [sp, #20]
	sub	r2, r2, r9
	add	r10, r10, r2, lsl #2
	str	r1, [r10, #24]
	str	r3, [r10, #16]
	str	r3, [r10, #20]
	b	.L44
.L79:
	mov	r8, #2
.L35:
	mov	r0, #240
	ldr	r1, .L138+36
	ldr	ip, [r1]
	rsb	r1, r8, r8, lsl #3
	add	r9, r5, r1, lsl #2
	lsl	r2, r8, #3
	cmp	ip, #0
	str	r0, [r9, #4]
	str	r2, [sp, #20]
	lsl	r10, r1, #2
	beq	.L37
	sub	r1, r8, #1
	rsb	r1, r1, r1, lsl #3
	ldr	r1, [r5, r1, lsl #2]
	str	r1, [r5, r10]
.L38:
	mov	lr, #1
	mov	ip, #3
	mov	r0, #0
	ldr	r2, [sp, #20]
	sub	r1, r2, r8
	add	r1, r5, r1, lsl #2
	str	lr, [r1, #24]
	str	ip, [r1, #16]
	str	r0, [r1, #20]
	b	.L36
.L78:
	mov	r8, #1
	b	.L35
.L37:
	ldr	r6, .L138+64
	mov	lr, pc
	bx	r6
	ldr	r1, .L138+68
	smull	r3, ip, r1, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r5, r10]
	bls	.L39
	mov	r10, r1
.L40:
	mov	lr, pc
	bx	r6
	smull	r3, r2, r10, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r9]
	bhi	.L40
.L39:
	ldr	r3, [fp]
	b	.L38
.L80:
	mov	r9, r1
	b	.L43
.L137:
	mov	r0, #1
	ldr	r2, [sp, #20]
	sub	r2, r2, r9
	add	r10, r10, r2, lsl #2
	cmp	ip, #0
	add	r1, r1, r1, lsl #2
	ldr	ip, [r10, #4]
	add	r2, r7, r1, lsl #2
	add	r3, r3, #8
	strne	r6, [r8]
	str	r3, [r7, r1, lsl #2]
	str	ip, [r2, #4]
	str	r0, [r2, #16]
	b	.L44
.L139:
	.align	2
.L138:
	.word	hOff
	.word	matesKissed
	.word	lTimer
	.word	level3
	.word	level2
	.word	67109120
	.word	birds
	.word	oldButtons
	.word	buttons
	.word	isCheat
	.word	timer
	.word	350
	.word	collision
	.word	matesGone
	.word	lizard
	.word	fireball
	.word	rand
	.word	1374389535
	.word	fTimer
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
	ldr	ip, .L154
	push	{r4, r5, r6, lr}
	ldr	r0, .L154+4
	ldr	r6, .L154+8
	mov	r3, ip
	mov	r2, r0
	mov	r5, r6
	mov	r1, r0
	mov	r4, #512
	ldr	lr, [ip, #4]
	orr	lr, lr, r6
	strh	lr, [r0, #2]	@ movhi
	ldr	lr, [ip]
	ldr	ip, [ip, #16]
	lsl	ip, ip, #2
	strh	ip, [r0, #4]	@ movhi
	strh	lr, [r0]	@ movhi
	add	lr, r3, #84
.L143:
	ldr	r0, [r3, #52]
	cmp	r0, #0
	ldrne	ip, [r3, #32]
	ldrne	r0, [r3, #44]
	ldrne	r6, [r3, #28]
	orrne	ip, ip, r5
	lslne	r0, r0, #2
	add	r3, r3, #28
	strhne	ip, [r1, #10]	@ movhi
	strhne	r0, [r1, #12]	@ movhi
	strhne	r6, [r1, #8]	@ movhi
	strheq	r4, [r1, #8]	@ movhi
	cmp	r3, lr
	add	r1, r1, #8
	bne	.L143
	mov	r6, #512
	ldr	r3, .L154+12
	ldr	r1, .L154+4
	ldr	r5, .L154+8
	add	lr, r3, #84
.L146:
	ldr	r0, [r3, #24]
	cmp	r0, #0
	ldrne	r0, [r3, #16]
	ldrne	ip, [r3, #4]
	ldrne	r4, [r3]
	addne	r0, r0, #32
	lslne	r0, r0, #2
	orrne	ip, ip, r5
	add	r3, r3, #28
	strhne	r0, [r1, #36]	@ movhi
	strhne	ip, [r1, #34]	@ movhi
	strhne	r4, [r1, #32]	@ movhi
	strheq	r6, [r1, #32]	@ movhi
	cmp	r3, lr
	add	r1, r1, #8
	bne	.L146
	mov	r4, #512
	mov	lr, #204
	ldr	r3, .L154+16
	add	r0, r3, #180
.L149:
	ldr	r1, [r3, #16]
	cmp	r1, #0
	ldrne	r1, [r3, #4]
	ldrne	ip, [r3]
	orrne	r1, r1, #16384
	add	r3, r3, #20
	strhne	lr, [r2, #60]	@ movhi
	strhne	r1, [r2, #58]	@ movhi
	strhne	ip, [r2, #56]	@ movhi
	strheq	r4, [r2, #56]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L149
	ldr	r3, .L154+20
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldr	r1, .L154+24
	ldrh	r3, [r1]
	lsr	r3, r3, #2
	strh	r3, [r2, #20]	@ movhi
	ldrh	r3, [r1]
	lsr	r3, r3, #1
	strh	r3, [r2, #16]	@ movhi
	ldr	r4, .L154+28
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L154+4
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L155:
	.align	2
.L154:
	.word	birds
	.word	shadowOAM
	.word	-32768
	.word	lizard
	.word	fireball
	.word	waitForVBlank
	.word	hOff
	.word	DMANow
	.size	drawGame, .-drawGame
	.comm	fireball,180,4
	.comm	lizard,84,4
	.comm	birds,112,4
	.comm	shadowOAM,1024,4
	.comm	isCheat,4,4
	.comm	matesKissed,4,4
	.comm	level3,4,4
	.comm	level2,4,4
	.comm	activeLizard,4,4
	.comm	matesGone,4,4
	.comm	fTimer,4,4
	.comm	lTimer,4,4
	.comm	timer,4,4
	.comm	hOff,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
