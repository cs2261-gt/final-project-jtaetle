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
	ldr	r9, .L15
	ldr	r3, [r9, #52]
	cmp	r3, #0
	beq	.L8
	ldr	r3, [r9, #80]
	cmp	r3, #0
	beq	.L9
	ldr	r3, [r9, #108]
	cmp	r3, #0
	moveq	r4, #3
	beq	.L2
.L3:
	mov	r2, #0
	ldr	r3, .L15+4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3]
	bx	lr
.L9:
	mov	r4, #2
.L2:
	mov	r1, #240
	ldr	r3, .L15+8
	ldr	r2, [r3]
	rsb	r3, r4, r4, lsl #3
	cmp	r2, #0
	add	r2, r9, r3, lsl #2
	str	r1, [r2, #4]
	lsl	r5, r3, #2
	lsl	r8, r4, #3
	beq	.L14
	ldr	r3, [r9]
	str	r3, [r9, r5]
.L5:
	cmp	r3, #120
	bls	.L7
	sub	r5, r8, r4
	ldr	r6, .L15+12
	ldr	r7, .L15+16
	add	r5, r9, r5, lsl #2
.L6:
	mov	lr, pc
	bx	r6
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r5]
	bhi	.L6
.L7:
	mov	r1, #1
	mov	r2, #3
	mov	r3, #0
	sub	r4, r8, r4
	add	r9, r9, r4, lsl #2
	str	r1, [r9, #24]
	str	r2, [r9, #16]
	str	r3, [r9, #20]
	b	.L3
.L8:
	mov	r4, #1
	b	.L2
.L14:
	ldr	r6, .L15+12
	mov	lr, pc
	bx	r6
	ldr	r3, .L15+16
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	str	r3, [r9, r5]
	b	.L5
.L16:
	.align	2
.L15:
	.word	birds
	.word	timer
	.word	isCheat
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
	ldr	r4, .L29
	ldr	r5, .L29+4
	ldr	r8, .L29+8
	ldr	r7, .L29+12
	sub	sp, sp, #16
	add	r6, r4, #180
.L23:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L19
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
.L19:
	add	r4, r4, #20
	cmp	r4, r6
	bne	.L23
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L30:
	.align	2
.L29:
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
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #24
	mov	lr, #32
	mov	ip, #16
	mov	r0, #64
	mov	r1, #1
	ldr	r3, .L33
	str	r4, [r3, #8]
	str	lr, [r3, #12]
	stm	r3, {r0, ip}
	str	r1, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	pop	{r4, lr}
	bx	lr
.L34:
	.align	2
.L33:
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
	ldr	r3, .L44
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r3, .L44+4
	bne	.L36
	ldr	r2, [r3]
	cmp	r2, #0
	subgt	r2, r2, #1
	strgt	r2, [r3]
.L36:
	ldr	r2, .L44
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L37
	ldr	r2, [r3]
	cmp	r2, #119
	addle	r2, r2, #1
	strle	r2, [r3]
.L37:
	ldr	r2, [r3, #20]
	cmp	r2, #8
	addne	r2, r2, #1
	bne	.L39
	ldr	r2, [r3, #16]
	cmp	r2, #2
	moveq	r1, #0
	addne	r1, r2, #1
	mov	r2, #1
	str	r1, [r3, #16]
.L39:
	str	r2, [r3, #20]
	bx	lr
.L45:
	.align	2
.L44:
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
	ldr	r0, .L47
	ldr	r3, [r0, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, [r0, #16]
	ldr	r2, .L47+4
	ldr	r0, [r0]
	lsl	r1, r1, #2
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L48:
	.align	2
.L47:
	.word	birds
	.word	shadowOAM
	.size	drawCasanova, .-drawCasanova
	.align	2
	.global	drawCasanovaCheat
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCasanovaCheat, %function
drawCasanovaCheat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L50
	ldr	r2, [r0, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r3, [r0, #16]
	ldr	r1, .L50+4
	ldr	r0, [r0]
	add	r3, r3, #64
	lsl	r3, r3, #2
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L51:
	.align	2
.L50:
	.word	birds
	.word	shadowOAM
	.size	drawCasanovaCheat, .-drawCasanovaCheat
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
	mov	r8, #22
	mov	r7, #28
	ldr	r9, .L60
	ldr	r5, .L60+4
	ldr	r4, .L60+8
	add	r6, r9, #84
.L55:
	mov	r3, #240
	str	r8, [r9, #36]
	str	r7, [r9, #40]
	str	r3, [r9, #32]
.L59:
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
	bhi	.L59
	mov	r3, #0
	mov	r2, #3
	str	r3, [r9, #52]
	str	r3, [r9, #48]
	str	r2, [r9, #44]
	add	r9, r9, #28
	cmp	r9, r6
	bne	.L55
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L61:
	.align	2
.L60:
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
	ldr	r3, .L64
	ldr	r3, [r3]
	cmp	r3, #100
	bxne	lr
	b	addMates.part.0
.L65:
	.align	2
.L64:
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
	ldr	r5, .L87
	mov	r4, r5
	ldr	r8, .L87+4
	ldr	r7, .L87+8
	ldr	r9, .L87+12
	ldr	fp, .L87+16
	ldr	r10, .L87+20
	sub	sp, sp, #20
	add	r6, r5, #84
.L76:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L67
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	ldr	r2, [r8]
	str	r3, [r4, #32]
	cmp	r2, #0
	ldr	r1, [r5]
	ldr	r2, [r4, #48]
	strne	r1, [r4, #28]
	cmp	r2, #8
	bne	.L69
	ldr	r2, [r4, #44]
	cmp	r2, #5
	moveq	r2, #3
	mov	r0, #0
	addne	r2, r2, #1
	str	r2, [r4, #44]
	str	r0, [r4, #48]
.L69:
	cmp	r3, #0
	ldreq	r0, .L87+24
	ldreq	r2, [r0]
	addeq	r2, r2, #1
	streq	r2, [r0]
	streq	r3, [r4, #52]
	add	r0, r4, #36
	ldm	r0, {r0, ip}
	ldr	r2, [r4, #28]
	str	r3, [sp]
	str	r0, [sp, #8]
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	ldmib	r5, {r0, r2, r3}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L73
	mov	r2, #0
	ldr	r3, [r9]
	add	r3, r3, #1
	cmp	r3, #10
	str	r3, [r9]
	str	r2, [r4, #52]
	beq	.L86
	cmp	r3, #20
	moveq	r3, #1
	ldreq	r2, .L87+28
	streq	r3, [fp]
	streq	r3, [r2]
.L73:
	ldr	r3, [r4, #48]
	add	r3, r3, #1
	str	r3, [r4, #48]
.L67:
	add	r4, r4, #28
	cmp	r4, r6
	bne	.L76
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L86:
	mov	r3, #1
	ldr	r2, .L87+32
	str	r3, [r10]
	str	r3, [r2]
	ldr	r3, [r4, #48]
	add	r3, r3, #1
	str	r3, [r4, #48]
	b	.L67
.L88:
	.align	2
.L87:
	.word	birds
	.word	isCheat
	.word	collision
	.word	matesKissed
	.word	initLevel3Change
	.word	initLevel2Change
	.word	matesGone
	.word	level3
	.word	level2
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
	ldr	r3, .L95
	ldr	r2, .L95+4
	ldr	r4, .L95+8
	add	ip, r3, #84
.L92:
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
	bne	.L92
	pop	{r4, r5, lr}
	bx	lr
.L96:
	.align	2
.L95:
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
	mov	r8, #27
	mov	r7, #26
	ldr	r9, .L105
	ldr	r5, .L105+4
	ldr	r4, .L105+8
	add	r6, r9, #84
.L100:
	mov	r3, #240
	str	r8, [r9, #8]
	str	r7, [r9, #12]
	str	r3, [r9, #4]
.L104:
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
	bhi	.L104
	mov	r3, #0
	add	r9, r9, #28
	str	r3, [r9, #-4]
	str	r3, [r9, #-12]
	str	r3, [r9, #-8]
	cmp	r9, r6
	bne	.L100
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L106:
	.align	2
.L105:
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
	ldr	r3, .L140
	ldr	r3, [r3]
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r8, .L140+4
	cmp	r3, #1
	ldr	r2, [r8]
	beq	.L137
	ldr	r3, .L140+8
	cmp	r2, r3
	beq	.L138
.L107:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L138:
	ldr	r9, .L140+12
	ldr	r10, [r9, #24]
	cmp	r10, #0
	beq	.L117
	ldr	r3, [r9, #52]
	cmp	r3, #0
	beq	.L122
	ldr	r3, [r9, #80]
	cmp	r3, #0
	moveq	r10, #2
	beq	.L117
.L111:
	mov	r3, #0
	str	r3, [r8]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L137:
	cmp	r2, #100
	bne	.L107
	ldr	r9, .L140+12
	ldr	r10, [r9, #24]
	cmp	r10, #0
	beq	.L110
	ldr	r2, [r9, #52]
	cmp	r2, #0
	beq	.L120
	ldr	r3, [r9, #80]
	cmp	r3, #0
	bne	.L111
	mov	r10, #2
.L110:
	mov	r2, #240
	rsb	r3, r10, r10, lsl #3
	add	r5, r9, r3, lsl #2
	str	r2, [r5, #4]
	ldr	r4, .L140+16
	lsl	r7, r3, #2
	mov	lr, pc
	bx	r4
	ldr	r6, .L140+20
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r9, r7]
	lsl	r7, r10, #3
	bls	.L112
.L113:
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
	bhi	.L113
.L112:
	mov	r2, #0
	mov	r0, #1
	ldr	r1, .L140+24
	ldr	r1, [r1]
	cmp	r1, r2
	sub	r1, r7, r10
	add	r1, r9, r1, lsl #2
	str	r0, [r1, #24]
	str	r2, [r1, #16]
	str	r2, [r1, #20]
	beq	.L111
	ldr	ip, .L140+28
	mov	r1, ip
.L116:
	ldr	r0, [r1, #16]
	cmp	r0, #0
	beq	.L139
	add	r2, r2, #1
	cmp	r2, #9
	add	r1, r1, #20
	bne	.L116
	b	.L111
.L122:
	mov	r10, #1
.L117:
	mov	r3, #240
	rsb	r7, r10, r10, lsl #3
	add	r5, r9, r7, lsl #2
	str	r3, [r5, #4]
	ldr	r4, .L140+16
	mov	lr, pc
	bx	r4
	ldr	r6, .L140+20
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
	bls	.L119
.L118:
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
	bhi	.L118
.L119:
	mov	r3, #0
	mov	r2, #1
	sub	r7, r7, r10
	add	r9, r9, r7, lsl #2
	str	r2, [r9, #24]
	str	r3, [r9, #16]
	str	r3, [r9, #20]
	b	.L111
.L120:
	mov	r10, r3
	b	.L110
.L139:
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
	b	.L111
.L141:
	.align	2
.L140:
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
	ldr	r4, .L161
	ldr	r9, .L161+4
	ldr	r5, .L161+8
	ldr	r8, .L161+12
	ldr	r10, .L161+16
	sub	sp, sp, #16
	add	r6, r4, #84
.L151:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L143
	ldr	r3, [r9]
	cmp	r3, #0
	ldr	r3, [r4, #4]
	beq	.L144
	cmp	r3, #1
	subgt	r3, r3, #2
	strle	r7, [r4, #24]
	strgt	r3, [r4, #4]
.L146:
	ldr	r2, [r4, #20]
	cmp	r2, #8
	bne	.L148
	ldr	r2, [r4, #16]
	cmp	r2, #2
	moveq	r2, #0
	addne	r2, r2, #1
	str	r2, [r4, #16]
	str	r7, [r4, #20]
.L148:
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
.L143:
	add	r4, r4, #28
	cmp	r4, r6
	bne	.L151
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L144:
	cmp	r3, #0
	subne	r2, r3, #1
	movne	r3, r2
	streq	r3, [r4, #24]
	strne	r2, [r4, #4]
	b	.L146
.L162:
	.align	2
.L161:
	.word	lizard
	.word	level2
	.word	birds
	.word	collision
	.word	matesGone
	.size	updateLizard, .-updateLizard
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
	mov	ip, #512
	ldr	r2, .L172
	ldr	r3, .L172+4
	push	{r4, r5, lr}
	ldr	r4, [r2]
	ldr	r5, .L172+8
	ldr	r2, .L172+12
	add	r0, r3, #84
.L166:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	beq	.L164
	cmp	r4, #0
	bne	.L164
	ldr	r1, [r3, #16]
	add	r1, r1, #32
	lsl	r1, r1, #2
	ldr	lr, [r3, #4]
	strh	r1, [r2, #36]	@ movhi
	ldr	r1, [r3]
	orr	lr, lr, r5
	strh	lr, [r2, #34]	@ movhi
	strh	r1, [r2, #32]	@ movhi
.L165:
	add	r3, r3, #28
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L166
	pop	{r4, r5, lr}
	bx	lr
.L164:
	strh	ip, [r2, #32]	@ movhi
	b	.L165
.L173:
	.align	2
.L172:
	.word	isCheat
	.word	lizard
	.word	-32768
	.word	shadowOAM
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
	ldr	r4, .L182
	ldr	r6, .L182+4
	ldr	r5, .L182+8
	add	r8, r4, #180
.L177:
	str	r9, [r4, #4]
.L181:
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
	bhi	.L181
	mov	r3, #0
	str	r7, [r4, #8]
	str	r7, [r4, #12]
	str	r3, [r4, #16]
	add	r4, r4, #20
	cmp	r4, r8
	bne	.L177
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L183:
	.align	2
.L182:
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
	mov	ip, #16
	mov	lr, #32
	mov	r0, #64
	mov	r1, #1
	mov	r4, #24
	ldr	r3, .L186
	strh	r2, [r3]	@ movhi
	ldr	r3, .L186+4
	str	r2, [r3]
	ldr	r3, .L186+8
	str	r2, [r3]
	ldr	r3, .L186+12
	str	r4, [r3, #8]
	str	lr, [r3, #12]
	stm	r3, {r0, ip}
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r1, [r3, #24]
	bl	initMates
	bl	initLizard
	pop	{r4, lr}
	b	initFireball
.L187:
	.align	2
.L186:
	.word	hOff
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
	mov	ip, #16
	mov	lr, #32
	mov	r0, #64
	mov	r1, #1
	mov	r4, #24
	ldr	r3, .L190
	strh	r2, [r3]	@ movhi
	ldr	r3, .L190+4
	str	r2, [r3]
	ldr	r3, .L190+8
	str	r2, [r3]
	ldr	r3, .L190+12
	str	r4, [r3, #8]
	str	lr, [r3, #12]
	stm	r3, {r0, ip}
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r1, [r3, #24]
	bl	initMates
	bl	initLizard
	pop	{r4, lr}
	b	initFireball
.L191:
	.align	2
.L190:
	.word	hOff
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
	mov	r0, #24
	mov	r1, #32
	mov	r2, #64
	mov	r5, #16
	mov	r6, #1
	ldr	r3, .L196
	strh	r4, [r3]	@ movhi
	ldr	r3, .L196+4
	stm	r3, {r2, r5}
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	str	r6, [r3, #24]
	bl	initMates
	bl	initLizard
	bl	initFireball
	mov	r2, r4
	mov	r1, r5
	mov	r0, r6
	mov	ip, #145
	ldr	r3, .L196+8
.L193:
	str	r2, [r3, #4]
	add	r2, r2, #16
	cmp	r2, #80
	str	ip, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r0, [r3, #16]
	add	r3, r3, #20
	bne	.L193
	mov	r1, #95
	mov	r3, #0
	ldr	r2, .L196+12
	ldr	lr, .L196+16
	str	r1, [r2]
	ldr	ip, .L196+20
	ldr	r0, .L196+24
	ldr	r1, .L196+28
	ldr	r2, .L196+32
	str	r3, [lr]
	str	r3, [ip]
	ldr	lr, .L196+36
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	ldr	ip, .L196+40
	ldr	r0, .L196+44
	ldr	r1, .L196+48
	ldr	r2, .L196+52
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L197:
	.align	2
.L196:
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
	.word	isCheat
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
	ldr	r3, .L200
	ldr	r3, [r3]
	cmp	r3, #0
	bxeq	lr
	b	updateFireball.part.0
.L201:
	.align	2
.L200:
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
	ldr	r2, .L213
	ldr	r3, .L213+4
	push	{r4, r5, lr}
	mov	ip, #512
	ldr	lr, [r2]
	mov	r5, #204
	ldr	r2, .L213+8
	add	r0, r3, #180
	b	.L205
.L212:
	cmp	lr, #0
	bne	.L203
	ldr	r1, [r3, #4]
	ldr	r4, [r3]
	add	r3, r3, #20
	orr	r1, r1, #16384
	cmp	r3, r0
	strh	r5, [r2, #60]	@ movhi
	strh	r1, [r2, #58]	@ movhi
	strh	r4, [r2, #56]	@ movhi
	add	r2, r2, #8
	beq	.L211
.L205:
	ldr	r1, [r3, #16]
	cmp	r1, #0
	bne	.L212
.L203:
	add	r3, r3, #20
	cmp	r3, r0
	strh	ip, [r2, #56]	@ movhi
	add	r2, r2, #8
	bne	.L205
.L211:
	pop	{r4, r5, lr}
	bx	lr
.L214:
	.align	2
.L213:
	.word	isCheat
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
	ldr	r3, .L219
.L216:
	str	r2, [r3, #4]
	add	r2, r2, #16
	cmp	r2, #80
	str	ip, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r0, [r3, #16]
	add	r3, r3, #20
	bne	.L216
	bx	lr
.L220:
	.align	2
.L219:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r6, .L230
	ldr	r3, [r6]
	rsb	r3, r3, #4
	cmp	r3, #3
	bgt	.L221
	mov	r5, #4
	ldr	r4, .L230+4
	ldr	r9, .L230+8
	ldr	r8, .L230+12
	ldr	r7, .L230+16
	b	.L224
.L223:
	ldr	r3, [r6]
	rsb	r3, r3, #4
	cmp	r3, r5
	sub	r4, r4, #20
	bge	.L221
.L224:
	ldr	r3, [r4, #96]
	cmp	r3, #0
	sub	r5, r5, #1
	beq	.L223
	mov	r2, #0
	mov	r1, r9
	mov	r0, r8
	mov	lr, pc
	bx	r7
	mov	r3, #0
	str	r3, [r4, #96]
	b	.L223
.L221:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L231:
	.align	2
.L230:
	.word	matesGone
	.word	heart
	.word	2941
	.word	missedMate
	.word	playSoundB
	.size	updateHeart, .-updateHeart
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
	ldr	r3, .L255
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L233
	ldr	r3, .L255+4
	ldr	r2, [r3]
	cmp	r2, #100
	movgt	r2, #50
	strgt	r2, [r3]
.L233:
	ldr	r3, .L255+8
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L250
	ldr	r4, .L255+12
.L234:
	ldr	r0, .L255+16
	ldr	r1, .L255+20
	ldr	r3, [r0]
	ldrh	r2, [r1]
	add	r3, r3, #1
	add	r2, r2, #1
	str	r3, [r0]
	strh	r2, [r1]	@ movhi
	bl	updateCasanova
	ldr	r3, [r0]
	cmp	r3, #100
	bleq	addMates.part.0
.L236:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L253
.L237:
	bl	updateMates
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L254
.L239:
	pop	{r4, lr}
	b	updateHeart
.L250:
	ldr	r3, .L255+24
	ldrh	r3, [r3]
	ands	r3, r3, #1
	ldr	r4, .L255+12
	bne	.L234
	ldr	r2, [r4]
	cmp	r2, #0
	moveq	r3, #1
	str	r3, [r4]
	b	.L234
.L254:
	bl	updateLizard
	ldr	r3, .L255+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L239
	bl	updateFireball.part.0
	pop	{r4, lr}
	b	updateHeart
.L253:
	ldr	r2, .L255+4
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	bl	addLizard
	b	.L237
.L256:
	.align	2
.L255:
	.word	level2
	.word	lTimer
	.word	oldButtons
	.word	isCheat
	.word	timer
	.word	hOff
	.word	buttons
	.word	level3
	.size	updateGame, .-updateGame
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
	ldr	r3, .L263
	ldr	r2, .L263+4
	add	ip, r3, #40
.L260:
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
	bne	.L260
	pop	{r4, lr}
	bx	lr
.L264:
	.align	2
.L263:
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
	push	{r4, r5, r6, lr}
	mov	r5, #512
	ldr	r2, .L274
	ldr	r3, .L274+4
	ldr	r2, [r2]
	ldrh	r1, [r3, #4]
	ldrh	r0, [r3]
	ldr	r3, [r3, #16]
	cmp	r2, #0
	addne	r3, r3, #64
	ldr	r2, .L274+8
	lsl	r3, r3, #2
	strh	r3, [r2, #4]	@ movhi
	orr	r1, r1, #32768
	ldr	r3, .L274+4
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	ldr	r4, .L274+12
	ldr	r2, .L274+8
	add	ip, r3, #84
.L267:
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
	cmp	ip, r3
	add	r2, r2, #8
	bne	.L267
	bl	drawLizard
	bl	drawFireball
	bl	drawHeart
	ldr	r3, .L274+16
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldr	r1, .L274+20
	ldrh	r3, [r1]
	lsr	r3, r3, #2
	strh	r3, [r2, #20]	@ movhi
	ldrh	r3, [r1]
	lsr	r3, r3, #1
	strh	r3, [r2, #16]	@ movhi
	ldr	r4, .L274+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L274+8
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L275:
	.align	2
.L274:
	.word	isCheat
	.word	birds
	.word	shadowOAM
	.word	-32768
	.word	waitForVBlank
	.word	hOff
	.word	DMANow
	.size	drawGame, .-drawGame
	.comm	heart,100,4
	.comm	fireball,180,4
	.comm	lizard,84,4
	.comm	birds,112,4
	.comm	shadowOAM,1024,4
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
	.ident	"GCC: (devkitARM release 53) 9.1.0"
