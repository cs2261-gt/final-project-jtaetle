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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	addMates.part.0, %function
addMates.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r9, .L11
	ldr	r3, [r9, #52]
	cmp	r3, #0
	beq	.L6
	ldr	r3, [r9, #80]
	cmp	r3, #0
	beq	.L7
	ldr	r3, [r9, #108]
	cmp	r3, #0
	moveq	r7, #3
	beq	.L2
.L3:
	mov	r2, #0
	ldr	r3, .L11+4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3]
	bx	lr
.L7:
	mov	r7, #2
.L2:
	mov	r2, #240
	rsb	r3, r7, r7, lsl #3
	add	r4, r9, r3, lsl #2
	str	r2, [r4, #4]
	ldr	r6, .L11+8
	lsl	r8, r3, #2
	mov	lr, pc
	bx	r6
	ldr	r5, .L11+12
	smull	r3, r2, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r9, r8]
	lsl	r8, r7, #3
	bls	.L4
.L5:
	mov	lr, pc
	bx	r6
	smull	r3, r2, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r4]
	bhi	.L5
.L4:
	mov	r1, #1
	mov	r2, #3
	mov	r3, #0
	sub	r7, r8, r7
	add	r9, r9, r7, lsl #2
	str	r1, [r9, #24]
	str	r2, [r9, #16]
	str	r3, [r9, #20]
	b	.L3
.L6:
	mov	r7, #1
	b	.L2
.L12:
	.align	2
.L11:
	.word	birds
	.word	timer
	.word	rand
	.word	1374389535
	.size	addMates.part.0, .-addMates.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFireball.part.0, %function
updateFireball.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L25
	ldr	r5, .L25+4
	ldr	r8, .L25+8
	ldr	r7, .L25+12
	sub	sp, sp, #16
	add	r6, r4, #180
.L19:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L15
	ldr	r3, [r4, #4]
	cmp	r3, #2
	movle	r2, #0
	ldr	r0, [r4, #12]
	strle	r2, [r4, #16]
	ldr	r1, [r4, #8]
	ldr	r2, [r4]
	subgt	r3, r3, #3
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #8
	strgt	r3, [r4, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	movne	r2, #0
	ldrne	r3, [r7]
	addne	r3, r3, #1
	strne	r3, [r7]
	strne	r2, [r4, #16]
.L15:
	add	r4, r4, #20
	cmp	r4, r6
	bne	.L19
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	fireball
	.word	birds
	.word	collision
	.word	matesGone
	.size	updateFireball.part.0, .-updateFireball.part.0
	.align	2
	.global	initCasanova
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCasanova, %function
initCasanova:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #32
	mov	lr, #16
	mov	r2, #0
	mov	ip, #64
	mov	r0, #1
	ldr	r3, .L29
	stm	r3, {ip, lr}
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r0, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	ldr	lr, [sp], #4
	bx	lr
.L30:
	.align	2
.L29:
	.word	birds
	.size	initCasanova, .-initCasanova
	.align	2
	.global	updateCasanova
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCasanova, %function
updateCasanova:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L40
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r3, .L40+4
	bne	.L32
	ldr	r2, [r3]
	cmp	r2, #0
	subgt	r2, r2, #1
	strgt	r2, [r3]
.L32:
	ldr	r2, .L40
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L33
	ldr	r2, [r3]
	cmp	r2, #119
	addle	r2, r2, #1
	strle	r2, [r3]
.L33:
	ldr	r2, [r3, #20]
	cmp	r2, #8
	addne	r2, r2, #1
	bne	.L35
	ldr	r2, [r3, #16]
	cmp	r2, #2
	moveq	r1, #0
	addne	r1, r2, #1
	mov	r2, #1
	str	r1, [r3, #16]
.L35:
	str	r2, [r3, #20]
	bx	lr
.L41:
	.align	2
.L40:
	.word	67109120
	.word	birds
	.size	updateCasanova, .-updateCasanova
	.align	2
	.global	drawCasanova
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCasanova, %function
drawCasanova:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L43
	ldr	r3, [r0, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, [r0, #16]
	ldr	r2, .L43+4
	ldr	r0, [r0]
	lsl	r1, r1, #2
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L44:
	.align	2
.L43:
	.word	birds
	.word	shadowOAM
	.size	drawCasanova, .-drawCasanova
	.align	2
	.global	initMates
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMates, %function
initMates:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, #32
	mov	r8, #240
	ldr	r9, .L53
	ldr	r5, .L53+4
	ldr	r4, .L53+8
	add	r7, r9, #84
.L48:
	str	r6, [r9, #36]
	str	r6, [r9, #40]
	str	r8, [r9, #32]
.L52:
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
	bhi	.L52
	mov	r3, #0
	mov	r2, #3
	str	r3, [r9, #52]
	str	r3, [r9, #48]
	str	r2, [r9, #44]
	add	r9, r9, #28
	cmp	r9, r7
	bne	.L48
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L54:
	.align	2
.L53:
	.word	birds
	.word	rand
	.word	1374389535
	.size	initMates, .-initMates
	.align	2
	.global	addMates
	.syntax unified
	.arm
	.fpu softvfp
	.type	addMates, %function
addMates:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L57
	ldr	r3, [r3]
	cmp	r3, #100
	bxne	lr
	b	addMates.part.0
.L58:
	.align	2
.L57:
	.word	timer
	.size	addMates, .-addMates
	.align	2
	.global	updateMates
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMates, %function
updateMates:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L75
	mov	r4, r5
	ldr	r7, .L75+4
	ldr	r8, .L75+8
	ldr	fp, .L75+12
	ldr	r10, .L75+16
	ldr	r9, .L75+20
	sub	sp, sp, #20
	add	r6, r5, #84
.L68:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L60
	ldr	r3, [r4, #32]
	ldr	r2, [r4, #48]
	sub	r3, r3, #1
	cmp	r2, #8
	str	r3, [r4, #32]
	bne	.L61
	ldr	r2, [r4, #44]
	cmp	r2, #5
	moveq	r2, #3
	mov	r1, #0
	addne	r2, r2, #1
	str	r2, [r4, #44]
	str	r1, [r4, #48]
.L61:
	cmp	r3, #0
	ldreq	r1, .L75+24
	ldreq	r2, [r1]
	addeq	r2, r2, #1
	streq	r2, [r1]
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
	cmp	r0, #0
	beq	.L65
	ldr	r3, [r8]
	add	r3, r3, #1
	cmp	r3, #10
	mov	r2, #0
	str	r3, [r8]
	moveq	r3, #1
	str	r2, [r4, #52]
	streq	r3, [r10]
	streq	r3, [r9]
	beq	.L65
	cmp	r3, #20
	moveq	r3, #1
	ldreq	r2, .L75+28
	streq	r3, [fp]
	streq	r3, [r2]
.L65:
	ldr	r3, [r4, #48]
	add	r3, r3, #1
	str	r3, [r4, #48]
.L60:
	add	r4, r4, #28
	cmp	r4, r6
	bne	.L68
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L76:
	.align	2
.L75:
	.word	birds
	.word	collision
	.word	matesKissed
	.word	initLevel3Change
	.word	initLevel2Change
	.word	level2
	.word	matesGone
	.word	level3
	.size	updateMates, .-updateMates
	.align	2
	.global	drawMates
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMates, %function
drawMates:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #512
	ldr	r3, .L83
	ldr	r2, .L83+4
	ldr	r4, .L83+8
	add	ip, r3, #84
.L80:
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
	bne	.L80
	pop	{r4, r5, lr}
	bx	lr
.L84:
	.align	2
.L83:
	.word	birds
	.word	shadowOAM
	.word	-32768
	.size	drawMates, .-drawMates
	.align	2
	.global	initLizard
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLizard, %function
initLizard:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, #25
	mov	r8, #240
	ldr	r9, .L93
	ldr	r5, .L93+4
	ldr	r4, .L93+8
	add	r7, r9, #84
.L88:
	str	r6, [r9, #8]
	str	r6, [r9, #12]
	str	r8, [r9, #4]
.L92:
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
	bhi	.L92
	mov	r3, #0
	add	r9, r9, #28
	str	r3, [r9, #-4]
	str	r3, [r9, #-12]
	str	r3, [r9, #-8]
	cmp	r9, r7
	bne	.L88
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L94:
	.align	2
.L93:
	.word	lizard
	.word	rand
	.word	1374389535
	.size	initLizard, .-initLizard
	.align	2
	.global	addLizard
	.syntax unified
	.arm
	.fpu softvfp
	.type	addLizard, %function
addLizard:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L128
	ldr	r3, [r3]
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r8, .L128+4
	cmp	r3, #1
	ldr	r2, [r8]
	beq	.L125
	ldr	r3, .L128+8
	cmp	r2, r3
	beq	.L126
.L95:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L126:
	ldr	r9, .L128+12
	ldr	r10, [r9, #24]
	cmp	r10, #0
	beq	.L105
	ldr	r3, [r9, #52]
	cmp	r3, #0
	beq	.L110
	ldr	r3, [r9, #80]
	cmp	r3, #0
	moveq	r10, #2
	beq	.L105
.L99:
	mov	r3, #0
	str	r3, [r8]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L125:
	cmp	r2, #100
	bne	.L95
	ldr	r9, .L128+12
	ldr	r10, [r9, #24]
	cmp	r10, #0
	beq	.L98
	ldr	r2, [r9, #52]
	cmp	r2, #0
	beq	.L108
	ldr	r3, [r9, #80]
	cmp	r3, #0
	bne	.L99
	mov	r10, #2
.L98:
	mov	r2, #240
	rsb	r3, r10, r10, lsl #3
	add	r5, r9, r3, lsl #2
	str	r2, [r5, #4]
	ldr	r4, .L128+16
	lsl	r7, r3, #2
	mov	lr, pc
	bx	r4
	ldr	r6, .L128+20
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r9, r7]
	lsl	r7, r10, #3
	bls	.L100
.L101:
	mov	lr, pc
	bx	r4
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r5]
	bhi	.L101
.L100:
	mov	r2, #0
	mov	r0, #1
	ldr	r1, .L128+24
	ldr	r1, [r1]
	cmp	r1, r2
	sub	r1, r7, r10
	add	r1, r9, r1, lsl #2
	str	r0, [r1, #24]
	str	r2, [r1, #16]
	str	r2, [r1, #20]
	beq	.L99
	ldr	ip, .L128+28
	mov	r1, ip
.L104:
	ldr	r0, [r1, #16]
	cmp	r0, #0
	beq	.L127
	add	r2, r2, #1
	cmp	r2, #9
	add	r1, r1, #20
	bne	.L104
	b	.L99
.L110:
	mov	r10, #1
.L105:
	mov	r3, #240
	rsb	r7, r10, r10, lsl #3
	add	r5, r9, r7, lsl #2
	str	r3, [r5, #4]
	ldr	r4, .L128+16
	mov	lr, pc
	bx	r4
	ldr	r6, .L128+20
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	lsl	r7, r7, #2
	cmp	r3, #120
	str	r3, [r9, r7]
	lsl	r7, r10, #3
	bls	.L107
.L106:
	mov	lr, pc
	bx	r4
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r5]
	bhi	.L106
.L107:
	mov	r3, #0
	mov	r2, #1
	sub	r7, r7, r10
	add	r9, r9, r7, lsl #2
	str	r2, [r9, #24]
	str	r3, [r9, #16]
	str	r3, [r9, #20]
	b	.L99
.L108:
	mov	r10, r3
	b	.L98
.L127:
	mov	r0, #1
	sub	r7, r7, r10
	add	r9, r9, r7, lsl #2
	add	r2, r2, r2, lsl #2
	ldr	lr, [r9, #4]
	add	r1, ip, r2, lsl #2
	add	r3, r3, #8
	str	r3, [ip, r2, lsl #2]
	str	lr, [r1, #4]
	str	r0, [r1, #16]
	b	.L99
.L129:
	.align	2
.L128:
	.word	level2
	.word	lTimer
	.word	350
	.word	lizard
	.word	rand
	.word	1374389535
	.word	level3
	.word	fireball
	.size	addLizard, .-addLizard
	.align	2
	.global	updateLizard
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLizard, %function
updateLizard:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, #0
	ldr	r4, .L149
	ldr	r9, .L149+4
	ldr	r5, .L149+8
	ldr	r8, .L149+12
	ldr	r10, .L149+16
	sub	sp, sp, #16
	add	r6, r4, #84
.L139:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L131
	ldr	r3, [r9]
	cmp	r3, #0
	ldr	r3, [r4, #4]
	beq	.L132
	cmp	r3, #1
	subgt	r3, r3, #2
	strle	r7, [r4, #24]
	strgt	r3, [r4, #4]
.L134:
	ldr	r2, [r4, #20]
	cmp	r2, #8
	bne	.L136
	ldr	r2, [r4, #16]
	cmp	r2, #2
	moveq	r2, #0
	addne	r2, r2, #1
	str	r2, [r4, #16]
	str	r7, [r4, #20]
.L136:
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
	ldrne	r3, [r10]
	addne	r3, r3, #1
	strne	r3, [r10]
	ldr	r3, [r4, #20]
	add	r3, r3, #1
	strne	r7, [r4, #24]
	str	r3, [r4, #20]
.L131:
	add	r4, r4, #28
	cmp	r4, r6
	bne	.L139
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L132:
	cmp	r3, #0
	subne	r2, r3, #1
	movne	r3, r2
	streq	r3, [r4, #24]
	strne	r2, [r4, #4]
	b	.L134
.L150:
	.align	2
.L149:
	.word	lizard
	.word	level2
	.word	birds
	.word	collision
	.word	matesGone
	.size	updateLizard, .-updateLizard
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
	ldr	r3, .L170
	ldr	r3, [r3]
	push	{r4, lr}
	ldr	lr, .L170+4
	cmp	r3, #0
	ldr	r3, [lr]
	beq	.L169
	cmp	r3, #100
	movgt	r3, #51
	ble	.L169
.L153:
	ldr	r0, .L170+8
	ldr	ip, .L170+12
	ldr	r2, [r0]
	ldrh	r1, [ip]
	add	r2, r2, #1
	add	r1, r1, #1
	str	r3, [lr]
	strh	r1, [ip]	@ movhi
	str	r2, [r0]
	bl	updateCasanova
	ldr	r3, [r0]
	cmp	r3, #100
	bleq	addMates.part.0
.L154:
	bl	addLizard
	bl	updateMates
	bl	updateLizard
	ldr	r3, .L170+16
	ldr	r3, [r3]
	cmp	r3, #0
	blne	updateFireball.part.0
.L155:
	ldr	r3, .L170+20
	ldr	r1, [r3]
	rsb	r1, r1, #4
	cmp	r1, #3
	bgt	.L151
	mov	r0, #0
	ldr	r3, .L170+24
	add	r2, r1, r1, lsl #2
	sub	r1, r3, #80
	add	r1, r1, r2, lsl #2
.L158:
	ldr	r2, [r3, #96]
	cmp	r2, #0
	strne	r0, [r3, #96]
	sub	r3, r3, #20
	cmp	r3, r1
	bne	.L158
.L151:
	pop	{r4, lr}
	bx	lr
.L169:
	add	r3, r3, #1
	b	.L153
.L171:
	.align	2
.L170:
	.word	level2
	.word	lTimer
	.word	timer
	.word	hOff
	.word	level3
	.word	matesGone
	.word	heart
	.size	updateGame, .-updateGame
	.align	2
	.global	drawLizard
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLizard, %function
drawLizard:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #512
	ldr	r3, .L178
	ldr	r2, .L178+4
	ldr	r4, .L178+8
	add	ip, r3, #84
.L175:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	ldrne	r1, [r3, #16]
	ldrne	r0, [r3, #4]
	ldrne	lr, [r3]
	addne	r1, r1, #32
	lslne	r1, r1, #2
	orrne	r0, r0, r4
	add	r3, r3, #28
	strhne	r1, [r2, #36]	@ movhi
	strhne	r0, [r2, #34]	@ movhi
	strhne	lr, [r2, #32]	@ movhi
	strheq	r5, [r2, #32]	@ movhi
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L175
	pop	{r4, r5, lr}
	bx	lr
.L179:
	.align	2
.L178:
	.word	lizard
	.word	shadowOAM
	.word	-32768
	.size	drawLizard, .-drawLizard
	.align	2
	.global	initFireball
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFireball, %function
initFireball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, #240
	mov	r7, #16
	ldr	r4, .L188
	ldr	r6, .L188+4
	ldr	r5, .L188+8
	add	r8, r4, #180
.L183:
	str	r9, [r4, #4]
.L187:
	mov	lr, pc
	bx	r6
	smull	r3, r2, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r4]
	bhi	.L187
	mov	r3, #0
	str	r7, [r4, #8]
	str	r7, [r4, #12]
	str	r3, [r4, #16]
	add	r4, r4, #20
	cmp	r4, r8
	bne	.L183
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L189:
	.align	2
.L188:
	.word	fireball
	.word	rand
	.word	1374389535
	.size	initFireball, .-initFireball
	.align	2
	.global	initLevel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevel2, %function
initLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, lr}
	mov	r1, #32
	mov	lr, #16
	mov	ip, #64
	mov	r0, #1
	ldr	r3, .L192
	str	r2, [r3]
	ldr	r3, .L192+4
	str	r2, [r3]
	ldr	r3, .L192+8
	stm	r3, {ip, lr}
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r0, [r3, #24]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	bl	initMates
	bl	initLizard
	pop	{r4, lr}
	b	initFireball
.L193:
	.align	2
.L192:
	.word	initLevel2Change
	.word	levelChangeTimer
	.word	birds
	.size	initLevel2, .-initLevel2
	.align	2
	.global	initLevel3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevel3, %function
initLevel3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, lr}
	mov	r1, #32
	mov	lr, #16
	mov	ip, #64
	mov	r0, #1
	ldr	r3, .L196
	str	r2, [r3]
	ldr	r3, .L196+4
	str	r2, [r3]
	ldr	r3, .L196+8
	stm	r3, {ip, lr}
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r0, [r3, #24]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	bl	initMates
	bl	initLizard
	pop	{r4, lr}
	b	initFireball
.L197:
	.align	2
.L196:
	.word	initLevel3Change
	.word	levelChangeTimer
	.word	birds
	.size	initLevel3, .-initLevel3
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #0
	mov	r2, #32
	mov	r1, #64
	mov	r5, #16
	mov	r6, #1
	ldr	r3, .L202
	strh	r4, [r3]	@ movhi
	ldr	r3, .L202+4
	str	r1, [r3]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	str	r5, [r3, #4]
	str	r6, [r3, #24]
	bl	initMates
	bl	initLizard
	bl	initFireball
	mov	r2, r4
	mov	r1, r5
	mov	r0, r6
	mov	ip, #145
	ldr	r3, .L202+8
.L199:
	str	r2, [r3, #4]
	add	r2, r2, #16
	cmp	r2, #80
	str	ip, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r0, [r3, #16]
	add	r3, r3, #20
	bne	.L199
	mov	lr, #95
	mov	r3, #0
	ldr	r2, .L202+12
	ldr	ip, .L202+16
	str	lr, [r2]
	ldr	r0, .L202+20
	ldr	r1, .L202+24
	ldr	r2, .L202+28
	ldr	lr, .L202+32
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	ldr	ip, .L202+36
	ldr	r0, .L202+40
	ldr	r1, .L202+44
	ldr	r2, .L202+48
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L203:
	.align	2
.L202:
	.word	hOff
	.word	birds
	.word	heart
	.word	timer
	.word	lTimer
	.word	fTimer
	.word	levelChangeTimer
	.word	initLevel2Change
	.word	initLevel3Change
	.word	matesGone
	.word	matesKissed
	.word	level2
	.word	level3
	.size	initGame, .-initGame
	.align	2
	.global	updateFireball
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFireball, %function
updateFireball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L206
	ldr	r3, [r3]
	cmp	r3, #0
	bxeq	lr
	b	updateFireball.part.0
.L207:
	.align	2
.L206:
	.word	level3
	.size	updateFireball, .-updateFireball
	.align	2
	.global	drawFireball
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFireball, %function
drawFireball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #512
	mov	lr, #204
	ldr	r3, .L214
	ldr	r2, .L214+4
	add	r0, r3, #180
.L211:
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
	bne	.L211
	pop	{r4, lr}
	bx	lr
.L215:
	.align	2
.L214:
	.word	fireball
	.word	shadowOAM
	.size	drawFireball, .-drawFireball
	.align	2
	.global	initHeart
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHeart, %function
initHeart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	ip, #145
	mov	r1, #16
	mov	r0, #1
	ldr	r3, .L220
.L217:
	str	r2, [r3, #4]
	add	r2, r2, #16
	cmp	r2, #80
	str	ip, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r0, [r3, #16]
	add	r3, r3, #20
	bne	.L217
	bx	lr
.L221:
	.align	2
.L220:
	.word	heart
	.size	initHeart, .-initHeart
	.align	2
	.global	updateHeart
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHeart, %function
updateHeart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L230
	ldr	r1, [r3]
	rsb	r1, r1, #4
	cmp	r1, #3
	bxgt	lr
	mov	r0, #0
	ldr	r3, .L230+4
	add	r2, r1, r1, lsl #2
	sub	r1, r3, #80
	add	r1, r1, r2, lsl #2
.L225:
	ldr	r2, [r3, #96]
	cmp	r2, #0
	strne	r0, [r3, #96]
	sub	r3, r3, #20
	cmp	r3, r1
	bne	.L225
	bx	lr
.L231:
	.align	2
.L230:
	.word	matesGone
	.word	heart
	.size	updateHeart, .-updateHeart
	.align	2
	.global	drawHeart
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHeart, %function
drawHeart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #142
	mov	lr, #140
	ldr	r3, .L238
	ldr	r2, .L238+4
	add	ip, r3, #40
.L235:
	ldr	r0, [r2, #16]
	ldrh	r1, [r2, #4]
	cmp	r0, #0
	ldrh	r0, [r2]
	orr	r1, r1, #16384
	strh	r0, [r3, #120]	@ movhi
	strh	r1, [r3, #122]	@ movhi
	strhne	lr, [r3, #124]	@ movhi
	strheq	r4, [r3, #124]	@ movhi
	add	r3, r3, #8
	cmp	ip, r3
	add	r2, r2, #20
	bne	.L235
	pop	{r4, lr}
	bx	lr
.L239:
	.align	2
.L238:
	.word	shadowOAM
	.word	heart
	.size	drawHeart, .-drawHeart
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
	ldr	r0, .L250
	push	{r4, r5, r6, lr}
	ldr	r1, .L250+4
	ldr	r6, .L250+8
	mov	r3, r0
	mov	r4, r1
	mov	r5, r6
	mov	r2, r1
	mov	lr, #512
	ldr	ip, [r0, #4]
	orr	ip, ip, r6
	strh	ip, [r1, #2]	@ movhi
	ldr	ip, [r0]
	ldr	r0, [r0, #16]
	lsl	r0, r0, #2
	strh	r0, [r1, #4]	@ movhi
	strh	ip, [r1]	@ movhi
	add	ip, r3, #84
.L243:
	ldr	r1, [r3, #52]
	cmp	r1, #0
	ldrne	r0, [r3, #32]
	ldrne	r1, [r3, #44]
	ldrne	r6, [r3, #28]
	orrne	r0, r0, r5
	lslne	r1, r1, #2
	add	r3, r3, #28
	strhne	r0, [r2, #10]	@ movhi
	strhne	r1, [r2, #12]	@ movhi
	strhne	r6, [r2, #8]	@ movhi
	strheq	lr, [r2, #8]	@ movhi
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L243
	bl	drawLizard
	mov	lr, #512
	mov	ip, #204
	ldr	r3, .L250+12
	add	r1, r3, #180
.L246:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	ldmne	r3, {r0, r2}
	add	r3, r3, #20
	orrne	r2, r2, #16384
	strhne	ip, [r4, #60]	@ movhi
	strhne	r2, [r4, #58]	@ movhi
	strhne	r0, [r4, #56]	@ movhi
	strheq	lr, [r4, #56]	@ movhi
	cmp	r3, r1
	add	r4, r4, #8
	bne	.L246
	bl	drawHeart
	ldr	r3, .L250+16
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldr	r1, .L250+20
	ldrh	r3, [r1]
	lsr	r3, r3, #2
	strh	r3, [r2, #20]	@ movhi
	ldrh	r3, [r1]
	lsr	r3, r3, #1
	strh	r3, [r2, #16]	@ movhi
	ldr	r4, .L250+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L250+4
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L251:
	.align	2
.L250:
	.word	birds
	.word	shadowOAM
	.word	-32768
	.word	fireball
	.word	waitForVBlank
	.word	hOff
	.word	DMANow
	.size	drawGame, .-drawGame
	.comm	heart,100,4
	.comm	fireball,180,4
	.comm	lizard,84,4
	.comm	birds,112,4
	.comm	shadowOAM,1024,4
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
	.ident	"GCC: (devkitARM release 53) 9.1.0"
