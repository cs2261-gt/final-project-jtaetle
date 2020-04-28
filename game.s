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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r8, .L15
	ldr	r3, [r8, #60]
	cmp	r3, #0
	beq	.L8
	ldr	r3, [r8, #92]
	cmp	r3, #0
	beq	.L9
	ldr	r3, [r8, #124]
	cmp	r3, #0
	moveq	r4, #3
	beq	.L2
.L3:
	mov	r2, #0
	ldr	r3, .L15+4
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L9:
	mov	r4, #2
.L2:
	mov	r2, #240
	ldr	r3, .L15+8
	ldr	r1, [r3]
	add	r3, r8, r4, lsl #5
	cmp	r1, #0
	str	r2, [r3, #4]
	lsl	r7, r4, #5
	beq	.L14
	ldr	r3, [r8]
	str	r3, [r8, r4, lsl #5]
.L5:
	cmp	r3, #120
	bls	.L7
	ldr	r5, .L15+12
	ldr	r6, .L15+16
.L6:
	mov	lr, pc
	bx	r5
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r8, r4, lsl #5]
	bhi	.L6
.L7:
	mov	r3, #0
	mov	r1, #1
	mov	r2, #3
	add	r7, r8, r7
	str	r1, [r7, #28]
	str	r2, [r7, #16]
	str	r3, [r7, #20]
	str	r3, [r7, #24]
	b	.L3
.L8:
	mov	r4, #1
	b	.L2
.L14:
	ldr	r5, .L15+12
	mov	lr, pc
	bx	r5
	ldr	r3, .L15+16
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	str	r3, [r8, r4, lsl #5]
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
	.global	alphaBlending
	.syntax unified
	.arm
	.fpu softvfp
	.type	alphaBlending, %function
alphaBlending:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L36
	ldr	r3, [r3]
	cmp	r3, #3
	bgt	.L18
	ldr	r2, .L36+4
	ldr	r3, [r2]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r2]
	bx	lr
.L18:
	ldr	r2, .L36+8
	ldr	r3, [r2]
	cmp	r3, #1
	beq	.L20
	add	r3, r3, #1
	str	r3, [r2]
	bx	lr
.L20:
	ldr	r0, .L36+4
	ldr	r1, [r0]
	cmp	r1, #0
	push	{r4, lr}
	bne	.L22
	ldr	lr, .L36+12
	ldr	ip, .L36+16
	str	r3, [lr]
	str	r1, [ip]
.L23:
	add	r1, r1, #1
	str	r1, [r0]
.L21:
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L22:
	cmp	r1, #16
	beq	.L35
	ldr	ip, .L36+12
	ldr	ip, [ip]
	cmp	ip, #0
	bne	.L23
	ldr	ip, .L36+16
	ldr	ip, [ip]
	cmp	ip, #0
	beq	.L21
.L25:
	sub	r1, r1, #1
	str	r1, [r0]
	b	.L21
.L35:
	mov	r4, #0
	ldr	lr, .L36+12
	ldr	ip, .L36+16
	str	r4, [lr]
	str	r3, [ip]
	b	.L25
.L37:
	.align	2
.L36:
	.word	matesGone
	.word	blackWeight
	.word	alphaBlendTimer
	.word	alphaUp
	.word	alphaDown
	.size	alphaBlending, .-alphaBlending
	.align	2
	.global	drawLevel
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLevel, %function
drawLevel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r1, #0
	mov	lr, #324
	ldr	r3, .L40
	ldr	r2, [r3]
	ldr	r3, .L40+4
	add	r2, r2, #128
	lsl	r2, r2, #1
	ldr	r4, .L40+8
	ldr	ip, .L40+12
	strh	r2, [r3, #100]	@ movhi
	ldr	r0, .L40+16
	ldr	r2, .L40+20
	strh	r4, [r3, #82]	@ movhi
	strh	lr, [r3, #84]	@ movhi
	strh	ip, [r3, #90]	@ movhi
	strh	r0, [r3, #92]	@ movhi
	strh	r2, [r3, #98]	@ movhi
	strh	r1, [r3, #80]	@ movhi
	strh	r1, [r3, #88]	@ movhi
	strh	r1, [r3, #96]	@ movhi
	pop	{r4, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	level
	.word	shadowOAM
	.word	16584
	.word	16600
	.word	326
	.word	16612
	.size	drawLevel, .-drawLevel
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
	ldr	r3, .L44
	str	r4, [r3, #8]
	str	lr, [r3, #12]
	stm	r3, {r0, ip}
	str	r1, [r3, #28]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	pop	{r4, lr}
	bx	lr
.L45:
	.align	2
.L44:
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
	ldr	r3, .L55
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r3, .L55+4
	bne	.L47
	ldr	r2, [r3]
	cmp	r2, #0
	subgt	r2, r2, #1
	strgt	r2, [r3]
.L47:
	ldr	r2, .L55
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L48
	ldr	r2, [r3]
	cmp	r2, #119
	addle	r2, r2, #1
	strle	r2, [r3]
.L48:
	ldr	r2, [r3, #20]
	cmp	r2, #8
	addne	r2, r2, #1
	bne	.L50
	ldr	r2, [r3, #16]
	cmp	r2, #2
	moveq	r1, #0
	addne	r1, r2, #1
	mov	r2, #1
	str	r1, [r3, #16]
.L50:
	str	r2, [r3, #20]
	bx	lr
.L56:
	.align	2
.L55:
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
	ldr	r0, .L58
	ldr	r3, [r0, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, [r0, #16]
	ldr	r2, .L58+4
	ldr	r0, [r0]
	lsl	r1, r1, #2
	strh	r3, [r2, #106]	@ movhi
	strh	r0, [r2, #104]	@ movhi
	strh	r1, [r2, #108]	@ movhi
	bx	lr
.L59:
	.align	2
.L58:
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
	ldr	r0, .L61
	ldr	r2, [r0, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r3, [r0, #16]
	ldr	r1, .L61+4
	ldr	r0, [r0]
	add	r3, r3, #32
	lsl	r3, r3, #2
	strh	r2, [r1, #106]	@ movhi
	strh	r0, [r1, #104]	@ movhi
	strh	r3, [r1, #108]	@ movhi
	bx	lr
.L62:
	.align	2
.L61:
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
	mov	r8, #24
	mov	r7, #32
	ldr	r9, .L71
	ldr	r5, .L71+4
	ldr	r4, .L71+8
	add	r6, r9, #96
.L66:
	mov	r3, #240
	str	r8, [r9, #40]
	str	r7, [r9, #44]
	str	r3, [r9, #36]
.L70:
	mov	lr, pc
	bx	r5
	smull	r3, r2, r4, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r9, #32]
	bhi	.L70
	mov	r3, #0
	mov	r2, #3
	str	r3, [r9, #60]
	str	r3, [r9, #52]
	str	r3, [r9, #56]
	str	r2, [r9, #48]
	add	r9, r9, #32
	cmp	r9, r6
	bne	.L66
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L72:
	.align	2
.L71:
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
	ldr	r3, .L75
	ldr	r3, [r3]
	cmp	r3, #100
	bxne	lr
	b	addMates.part.0
.L76:
	.align	2
.L75:
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
	ldr	r5, .L106
	mov	r4, r5
	ldr	r8, .L106+4
	ldr	r7, .L106+8
	ldr	r9, .L106+12
	ldr	fp, .L106+16
	ldr	r10, .L106+20
	sub	sp, sp, #20
	add	r6, r5, #96
.L92:
	ldr	r3, [r4, #60]
	cmp	r3, #0
	beq	.L78
	ldr	r2, [r4, #36]
	ldr	r1, [r8]
	sub	r3, r2, #1
	str	r3, [r4, #36]
	cmp	r1, #0
	ldrne	r1, [r5]
	strne	r1, [r4, #32]
	ldr	r1, [r4, #52]
	cmp	r1, #8
	mov	r2, r3
	bne	.L80
	ldr	r1, [r4, #48]
	cmp	r1, #5
	moveq	r1, #3
	mov	r0, #0
	addne	r1, r1, #1
	str	r1, [r4, #48]
	str	r0, [r4, #52]
.L80:
	cmp	r3, #0
	beq	.L103
.L82:
	ldr	r0, [r4, #44]
	ldr	r1, [r4, #40]
	ldr	r3, [r4, #32]
	str	r2, [sp]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp, #4]
	add	r2, r5, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L89
	mov	r2, #0
	ldr	r3, [r9]
	add	r3, r3, #1
	cmp	r3, #10
	str	r3, [r9]
	str	r2, [r4, #60]
	beq	.L104
	cmp	r3, #20
	moveq	r3, #1
	ldreq	r2, .L106+24
	streq	r3, [fp]
	streq	r3, [r2]
.L89:
	ldr	r3, [r4, #52]
	add	r3, r3, #1
	str	r3, [r4, #52]
.L78:
	add	r4, r4, #32
	cmp	r4, r6
	bne	.L92
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L104:
	mov	r3, #1
	ldr	r2, .L106+28
	str	r3, [r10]
	str	r3, [r2]
	ldr	r3, [r4, #52]
	add	r3, r3, #1
	str	r3, [r4, #52]
	b	.L78
.L103:
	ldr	r1, .L106+32
.L87:
	ldr	r2, [r1, r3, lsl #4]
	cmp	r2, #0
	lsl	r2, r3, #4
	beq	.L105
	add	r3, r3, #1
	cmp	r3, #5
	bne	.L87
.L86:
	mov	r2, #0
	ldr	r1, .L106+36
	ldr	r3, .L106+40
	ldr	r0, .L106+44
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r2, .L106+48
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #60]
	ldr	r2, [r4, #36]
	b	.L82
.L105:
	ldr	r1, [r4, #32]
	cmp	r1, #15
	addle	r1, r1, #5
	ble	.L85
	cmp	r1, #144
	subgt	r1, r1, #5
.L85:
	ldr	r0, .L106+52
	mov	lr, #5
	mov	ip, #0
	str	r1, [r0, r3, lsl #4]
	mov	r3, #1
	add	r2, r0, r2
	str	lr, [r2, #4]
	str	ip, [r2, #8]
	str	r3, [r2, #12]
	b	.L86
.L107:
	.align	2
.L106:
	.word	birds
	.word	isCheat
	.word	collision
	.word	matesKissed
	.word	level3
	.word	initLevel2Change
	.word	initLevel3Change
	.word	level2
	.word	lostLife+12
	.word	5490
	.word	playSoundB
	.word	missedMate
	.word	matesGone
	.word	lostLife
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
	ldr	r3, .L114
	ldr	r2, .L114+4
	ldr	r4, .L114+8
	add	ip, r3, #24
.L111:
	ldr	r1, [r2, #60]
	cmp	r1, #0
	ldrne	r0, [r2, #36]
	ldrne	r1, [r2, #48]
	ldrne	lr, [r2, #32]
	orrne	r0, r0, r4
	lslne	r1, r1, #2
	strhne	r0, [r3, #114]	@ movhi
	strhne	r1, [r3, #116]	@ movhi
	strhne	lr, [r3, #112]	@ movhi
	strheq	r5, [r3, #112]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	add	r2, r2, #32
	bne	.L111
	pop	{r4, r5, lr}
	bx	lr
.L115:
	.align	2
.L114:
	.word	shadowOAM
	.word	birds
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
	ldr	r9, .L124
	ldr	r5, .L124+4
	ldr	r4, .L124+8
	add	r6, r9, #96
.L119:
	mov	r3, #240
	str	r8, [r9, #8]
	str	r7, [r9, #12]
	str	r3, [r9, #4]
.L123:
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
	bhi	.L123
	mov	r3, #0
	add	r9, r9, #32
	str	r3, [r9, #-4]
	str	r3, [r9, #-16]
	str	r3, [r9, #-12]
	cmp	r9, r6
	bne	.L119
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L125:
	.align	2
.L124:
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
	ldr	r3, .L159
	ldr	r3, [r3]
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L159+4
	cmp	r3, #1
	ldr	r2, [r4]
	beq	.L156
	ldr	r3, .L159+8
	cmp	r2, r3
	beq	.L157
.L126:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L157:
	ldr	r8, .L159+12
	ldr	r9, [r8, #28]
	cmp	r9, #0
	beq	.L136
	ldr	r3, [r8, #60]
	cmp	r3, #0
	beq	.L141
	ldr	r3, [r8, #92]
	cmp	r3, #0
	moveq	r9, #2
	beq	.L136
.L130:
	mov	r3, #0
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L156:
	cmp	r2, #100
	bne	.L126
	ldr	r8, .L159+12
	ldr	r9, [r8, #28]
	cmp	r9, #0
	beq	.L129
	ldr	r2, [r8, #60]
	cmp	r2, #0
	beq	.L139
	ldr	r3, [r8, #92]
	cmp	r3, #0
	bne	.L130
	mov	r9, #2
.L129:
	mov	r2, #240
	add	r3, r8, r9, lsl #5
	str	r2, [r3, #4]
	ldr	r5, .L159+16
	mov	lr, pc
	bx	r5
	ldr	r6, .L159+20
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r8, r9, lsl #5]
	lsl	r7, r9, #5
	bls	.L131
.L132:
	mov	lr, pc
	bx	r5
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r8, r9, lsl #5]
	bhi	.L132
.L131:
	mov	r2, #0
	mov	r0, #1
	ldr	r1, .L159+24
	ldr	r1, [r1]
	cmp	r1, r2
	add	r1, r8, r7
	str	r0, [r1, #28]
	str	r2, [r1, #16]
	str	r2, [r1, #20]
	beq	.L130
	ldr	ip, .L159+28
	mov	r1, ip
.L135:
	ldr	r0, [r1, #16]
	cmp	r0, #0
	beq	.L158
	add	r2, r2, #1
	cmp	r2, #9
	add	r1, r1, #20
	bne	.L135
	b	.L130
.L141:
	mov	r9, #1
.L136:
	mov	r2, #240
	add	r3, r8, r9, lsl #5
	str	r2, [r3, #4]
	ldr	r5, .L159+16
	mov	lr, pc
	bx	r5
	ldr	r6, .L159+20
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r8, r9, lsl #5]
	lsl	r7, r9, #5
	bls	.L138
.L137:
	mov	lr, pc
	bx	r5
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r8, r9, lsl #5]
	bhi	.L137
.L138:
	mov	r3, #0
	mov	r2, #1
	add	r7, r8, r7
	str	r2, [r7, #28]
	str	r3, [r7, #16]
	str	r3, [r7, #20]
	b	.L130
.L139:
	mov	r9, r3
	b	.L129
.L158:
	mov	r0, #1
	add	r7, r8, r7
	add	r2, r2, r2, lsl #2
	ldr	lr, [r7, #4]
	add	r1, ip, r2, lsl #2
	add	r3, r3, #8
	str	r3, [ip, r2, lsl #2]
	str	lr, [r1, #4]
	str	r0, [r1, #16]
	b	.L130
.L160:
	.align	2
.L159:
	.word	level2
	.word	lTimer
	.word	350
	.word	lizard
	.word	rand
	.word	1374389535
	.word	level3
	.word	fireball
	.size	addLizard, .-addLizard
	.global	__aeabi_i2d
	.global	__aeabi_dsub
	.global	__aeabi_d2iz
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L188+8
	ldr	r9, .L188+12
	ldr	r5, .L188+16
	ldr	r8, .L188+20
	ldr	r7, .L188+24
	ldr	r10, .L188+28
	sub	sp, sp, #20
	add	r6, r4, #96
.L175:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L162
	ldr	r3, [r9]
	cmp	r3, #0
	ldr	r0, [r4, #4]
	beq	.L163
	cmp	r0, #1
	movle	r3, #0
	subgt	r0, r0, #2
	strle	r3, [r4, #28]
	strgt	r0, [r4, #4]
.L165:
	ldr	r3, [r4, #20]
	cmp	r3, #8
	bne	.L167
	ldr	r3, [r4, #16]
	cmp	r3, #2
	moveq	r3, #0
	mov	r2, #0
	addne	r3, r3, #1
	str	r3, [r4, #16]
	str	r2, [r4, #20]
.L167:
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #8]
	ldr	r3, [r4]
	str	r0, [sp]
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	add	r2, r5, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L186
.L169:
	ldr	r3, [r4, #20]
	add	r3, r3, #1
	str	r3, [r4, #20]
.L162:
	add	r4, r4, #32
	cmp	r4, r6
	bne	.L175
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L163:
	cmp	r0, #0
	streq	r0, [r4, #28]
	beq	.L165
	ldr	r3, .L188+32
	mov	lr, pc
	bx	r3
	ldr	fp, .L188+36
	adr	r3, .L188
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	fp
	ldr	r3, .L188+40
	mov	lr, pc
	bx	r3
	str	r0, [r4, #4]
	b	.L165
.L186:
	mov	r3, #0
.L174:
	ldr	r2, [r7, r3, lsl #4]
	cmp	r2, #0
	lsl	r2, r3, #4
	beq	.L187
	add	r3, r3, #1
	cmp	r3, #5
	bne	.L174
.L173:
	mov	r2, #0
	ldr	r1, .L188+44
	ldr	r3, .L188+48
	mov	r0, r10
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r2, .L188+52
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #28]
	b	.L169
.L187:
	ldr	r1, [r4]
	cmp	r1, #15
	addle	r1, r1, #5
	ble	.L172
	cmp	r1, #144
	subgt	r1, r1, #5
.L172:
	mov	fp, #0
	mov	lr, #1
	ldr	ip, .L188+56
	ldr	r0, [r4, #4]
	add	r2, ip, r2
	add	r0, r0, #5
	str	r0, [r2, #4]
	str	r1, [ip, r3, lsl #4]
	str	fp, [r2, #8]
	str	lr, [r2, #12]
	b	.L173
.L189:
	.align	3
.L188:
	.word	3683363953
	.word	1072693352
	.word	lizard
	.word	level2
	.word	birds
	.word	collision
	.word	lostLife+12
	.word	missedMate
	.word	__aeabi_i2d
	.word	__aeabi_dsub
	.word	__aeabi_d2iz
	.word	5490
	.word	playSoundB
	.word	matesGone
	.word	lostLife
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
	ldr	r2, .L199
	ldr	r3, .L199+4
	push	{r4, r5, lr}
	ldr	r4, [r2]
	ldr	r5, .L199+8
	ldr	r2, .L199+12
	add	r0, r3, #24
.L193:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	beq	.L191
	cmp	r4, #0
	bne	.L191
	ldr	r1, [r2, #16]
	add	r1, r1, #35
	lsl	r1, r1, #2
	ldr	lr, [r2, #4]
	strh	r1, [r3, #140]	@ movhi
	ldr	r1, [r2]
	orr	lr, lr, r5
	strh	lr, [r3, #138]	@ movhi
	strh	r1, [r3, #136]	@ movhi
.L192:
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #32
	bne	.L193
	pop	{r4, r5, lr}
	bx	lr
.L191:
	strh	ip, [r3, #136]	@ movhi
	b	.L192
.L200:
	.align	2
.L199:
	.word	isCheat
	.word	shadowOAM
	.word	-32768
	.word	lizard
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
	ldr	r4, .L209
	ldr	r6, .L209+4
	ldr	r5, .L209+8
	add	r8, r4, #180
.L204:
	str	r9, [r4, #4]
.L208:
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
	bhi	.L208
	mov	r3, #0
	str	r7, [r4, #8]
	str	r7, [r4, #12]
	str	r3, [r4, #16]
	add	r4, r4, #20
	cmp	r4, r8
	bne	.L204
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L210:
	.align	2
.L209:
	.word	fireball
	.word	rand
	.word	1374389535
	.size	initFireball, .-initFireball
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
	mov	r0, #24
	mov	r1, #32
	mov	r2, #64
	mov	r4, #0
	mov	r5, #16
	mov	r6, #1
	ldr	r3, .L217
	stm	r3, {r2, r5}
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	r6, [r3, #28]
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	bl	initMates
	bl	initLizard
	bl	initFireball
	mov	r2, r4
	mov	r1, r5
	mov	r0, r6
	mov	ip, #145
	ldr	r3, .L217+4
.L212:
	str	r2, [r3, #4]
	add	r2, r2, #16
	cmp	r2, #80
	str	ip, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r0, [r3, #16]
	add	r3, r3, #20
	bne	.L212
	mov	r1, #0
	ldr	lr, .L217+8
	ldr	ip, .L217+12
	ldr	r0, .L217+16
	ldr	r3, .L217+20
	mov	r2, r1
	str	r1, [lr]
	str	r1, [ip]
	str	r1, [r0]
	add	r1, r3, #80
.L213:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	add	r3, r3, #16
	cmp	r3, r1
	bne	.L213
	mov	r0, #95
	mov	lr, #1
	mov	ip, #16
	ldr	r1, .L217+24
	ldr	r3, .L217+28
	str	r0, [r1]
	str	lr, [r3]
	ldr	r0, .L217+32
	ldr	r1, .L217+36
	ldr	r3, .L217+40
	str	ip, [r0]
	str	r2, [r1]
	str	r2, [r3]
	ldr	lr, .L217+44
	ldr	ip, .L217+48
	ldr	r0, .L217+52
	ldr	r1, .L217+56
	ldr	r3, .L217+60
	str	r2, [lr]
	str	r2, [ip]
	ldr	lr, .L217+64
	str	r2, [r0]
	str	r2, [r1]
	str	r2, [r3]
	ldr	ip, .L217+68
	ldr	r0, .L217+72
	ldr	r1, .L217+76
	ldr	r3, .L217+80
	str	r2, [lr]
	str	r2, [ip]
	str	r2, [r0]
	str	r2, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L218:
	.align	2
.L217:
	.word	birds
	.word	heart
	.word	ones
	.word	tens
	.word	hundreds
	.word	lostLife
	.word	timer
	.word	level
	.word	blackWeight
	.word	lTimer
	.word	levelChangeTimer
	.word	alphaBlendTimer
	.word	initLevel2Change
	.word	initLevel3Change
	.word	matesGone
	.word	matesKissed
	.word	level2
	.word	level3
	.word	isCheat
	.word	alphaUp
	.word	alphaDown
	.size	initGame, .-initGame
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
	mov	r1, #1
	push	{r4, r5, r6, lr}
	mov	r4, #0
	mov	lr, #32
	mov	ip, #16
	mov	r0, #64
	mov	r5, #24
	ldr	r2, .L223
	ldr	r3, [r2]
	add	r3, r3, r1
	str	r3, [r2]
	ldr	r3, .L223+4
	strh	r4, [r3]	@ movhi
	ldr	r3, .L223+8
	str	r4, [r3]
	ldr	r3, .L223+12
	str	r4, [r3]
	ldr	r3, .L223+16
	str	r1, [r3, #28]
	stm	r3, {r0, ip}
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	str	r5, [r3, #8]
	str	lr, [r3, #12]
	bl	initMates
	bl	initLizard
	bl	initFireball
	mov	r2, r4
	ldr	r3, .L223+20
	add	r1, r3, #80
.L220:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	add	r3, r3, #16
	cmp	r3, r1
	bne	.L220
	pop	{r4, r5, r6, lr}
	bx	lr
.L224:
	.align	2
.L223:
	.word	level
	.word	hOff0
	.word	initLevel2Change
	.word	levelChangeTimer
	.word	birds
	.word	lostLife
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
	mov	r1, #1
	push	{r4, r5, r6, lr}
	mov	r4, #0
	mov	lr, #32
	mov	ip, #16
	mov	r0, #64
	mov	r5, #24
	ldr	r2, .L229
	ldr	r3, [r2]
	add	r3, r3, r1
	str	r3, [r2]
	ldr	r3, .L229+4
	strh	r4, [r3]	@ movhi
	ldr	r3, .L229+8
	str	r4, [r3]
	ldr	r3, .L229+12
	str	r4, [r3]
	ldr	r3, .L229+16
	str	r1, [r3, #28]
	stm	r3, {r0, ip}
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	str	r5, [r3, #8]
	str	lr, [r3, #12]
	bl	initMates
	bl	initLizard
	bl	initFireball
	mov	r2, r4
	ldr	r3, .L229+20
	add	r1, r3, #80
.L226:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	add	r3, r3, #16
	cmp	r3, r1
	bne	.L226
	pop	{r4, r5, r6, lr}
	bx	lr
.L230:
	.align	2
.L229:
	.word	level
	.word	hOff0
	.word	initLevel3Change
	.word	levelChangeTimer
	.word	birds
	.word	lostLife
	.size	initLevel3, .-initLevel3
	.align	2
	.global	addFireball
	.syntax unified
	.arm
	.fpu softvfp
	.type	addFireball, %function
addFireball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L241
	mov	r3, #0
	mov	r2, ip
	b	.L234
.L232:
	add	r3, r3, #1
	cmp	r3, #9
	add	r2, r2, #20
	bxeq	lr
.L234:
	ldr	r1, [r2, #16]
	cmp	r1, #0
	bne	.L232
	str	lr, [sp, #-4]!
	mov	lr, #1
	ldr	r2, .L241+4
	ldr	r1, [r2, r0, lsl #5]
	add	r0, r2, r0, lsl #5
	add	r3, r3, r3, lsl #2
	ldr	r0, [r0, #4]
	add	r2, r1, #8
	add	r1, ip, r3, lsl #2
	str	lr, [r1, #16]
	str	r2, [ip, r3, lsl #2]
	str	r0, [r1, #4]
	ldr	lr, [sp], #4
	bx	lr
.L242:
	.align	2
.L241:
	.word	fireball
	.word	lizard
	.size	addFireball, .-addFireball
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L263
	ldr	r5, .L263+4
	ldr	r8, .L263+8
	ldr	r7, .L263+12
	ldr	r10, .L263+16
	ldr	fp, .L263+20
	ldr	r9, .L263+24
	sub	sp, sp, #20
	add	r6, r4, #180
	b	.L254
.L245:
	add	r4, r4, #20
	cmp	r4, r6
	beq	.L261
.L254:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L245
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
	beq	.L245
	mov	r3, #0
.L253:
	ldr	r2, [r7, r3, lsl #4]
	cmp	r2, #0
	lsl	r2, r3, #4
	beq	.L262
	add	r3, r3, #1
	cmp	r3, #5
	bne	.L253
.L252:
	mov	r2, #0
	mov	r0, r10
	ldr	r1, .L263+28
	mov	lr, pc
	bx	fp
	mov	r2, #0
	ldr	r3, [r9]
	str	r2, [r4, #16]
	add	r4, r4, #20
	add	r3, r3, #1
	cmp	r4, r6
	str	r3, [r9]
	bne	.L254
.L261:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L262:
	ldr	r1, [r4]
	cmp	r1, #15
	addle	r1, r1, #5
	ble	.L251
	cmp	r1, #144
	subgt	r1, r1, #5
.L251:
	ldr	ip, .L263+32
	mov	lr, #0
	str	r1, [ip, r3, lsl #4]
	mov	r3, #1
	ldr	r0, [r4, #4]
	add	r2, ip, r2
	add	r0, r0, #5
	str	r0, [r2, #4]
	str	lr, [r2, #8]
	str	r3, [r2, #12]
	b	.L252
.L264:
	.align	2
.L263:
	.word	fireball
	.word	birds
	.word	collision
	.word	lostLife+12
	.word	missedMate
	.word	playSoundB
	.word	matesGone
	.word	5490
	.word	lostLife
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
	ldr	r2, .L276
	ldr	r3, .L276+4
	push	{r4, r5, lr}
	mov	ip, #512
	ldr	lr, [r2]
	mov	r5, #340
	ldr	r2, .L276+8
	add	r0, r3, #180
	b	.L268
.L275:
	cmp	lr, #0
	bne	.L266
	ldr	r1, [r3, #4]
	ldr	r4, [r3]
	add	r3, r3, #20
	orr	r1, r1, #16384
	cmp	r3, r0
	strh	r5, [r2, #164]	@ movhi
	strh	r1, [r2, #162]	@ movhi
	strh	r4, [r2, #160]	@ movhi
	add	r2, r2, #8
	beq	.L274
.L268:
	ldr	r1, [r3, #16]
	cmp	r1, #0
	bne	.L275
.L266:
	add	r3, r3, #20
	cmp	r3, r0
	strh	ip, [r2, #160]	@ movhi
	add	r2, r2, #8
	bne	.L268
.L274:
	pop	{r4, r5, lr}
	bx	lr
.L277:
	.align	2
.L276:
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
	ldr	r3, .L282
.L279:
	str	r2, [r3, #4]
	add	r2, r2, #16
	cmp	r2, #80
	str	ip, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r0, [r3, #16]
	add	r3, r3, #20
	bne	.L279
	bx	lr
.L283:
	.align	2
.L282:
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
	ldr	r3, .L292
	ldr	r1, [r3]
	rsb	r1, r1, #4
	cmp	r1, #3
	bxgt	lr
	mov	r0, #0
	ldr	r3, .L292+4
	add	r2, r1, r1, lsl #2
	sub	r1, r3, #80
	add	r1, r1, r2, lsl #2
.L287:
	ldr	r2, [r3, #96]
	cmp	r2, #0
	strne	r0, [r3, #96]
	sub	r3, r3, #20
	cmp	r3, r1
	bne	.L287
	bx	lr
.L293:
	.align	2
.L292:
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
	mov	r4, #276
	ldr	r3, .L300
	ldr	r2, .L300+4
	ldr	lr, .L300+8
	add	ip, r3, #40
.L297:
	ldr	r0, [r2, #16]
	ldrh	r1, [r2, #4]
	cmp	r0, #0
	ldrh	r0, [r2]
	orr	r1, r1, #16384
	strh	r0, [r3, #40]	@ movhi
	strh	r1, [r3, #42]	@ movhi
	strhne	r4, [r3, #44]	@ movhi
	strheq	lr, [r3, #44]	@ movhi
	add	r3, r3, #8
	cmp	ip, r3
	add	r2, r2, #20
	bne	.L297
	pop	{r4, lr}
	bx	lr
.L301:
	.align	2
.L300:
	.word	shadowOAM
	.word	heart
	.word	278
	.size	drawHeart, .-drawHeart
	.align	2
	.global	initScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	initScore, %function
initScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r0, .L303
	ldr	r1, .L303+4
	ldr	r2, .L303+8
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	bx	lr
.L304:
	.align	2
.L303:
	.word	ones
	.word	tens
	.word	hundreds
	.size	initScore, .-initScore
	.align	2
	.global	updateScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateScore, %function
updateScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L312
	ldr	ip, .L312+4
	ldr	r2, [r3]
	smull	r1, r3, ip, r2
	asr	r1, r2, #31
	rsb	r3, r1, r3, asr #2
	ldr	r0, .L312+8
	add	r3, r3, r3, lsl #2
	sub	r3, r2, r3, lsl #1
	cmp	r2, #9
	str	r3, [r0]
	bxle	lr
	cmp	r2, #99
	ble	.L307
	mvn	r0, #99
	push	{r4, lr}
	ldr	lr, .L312+12
	smull	r4, lr, r2, lr
	rsb	r1, r1, lr, asr #5
	mla	r2, r0, r1, r2
	sub	r3, r2, r3
	smull	r2, ip, r3, ip
	ldr	r0, .L312+16
	ldr	r2, .L312+20
	asr	r3, r3, #31
	rsb	r3, r3, ip, asr #2
	str	r3, [r0]
	str	r1, [r2]
	pop	{r4, lr}
	bx	lr
.L307:
	ldr	r1, .L312+24
	sub	r3, r2, r3
	umull	r2, r3, r1, r3
	ldr	r2, .L312+16
	lsr	r3, r3, #3
	str	r3, [r2]
	bx	lr
.L313:
	.align	2
.L312:
	.word	matesKissed
	.word	1717986919
	.word	ones
	.word	1374389535
	.word	tens
	.word	hundreds
	.word	-858993459
	.size	updateScore, .-updateScore
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
	ldr	r3, .L339
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L315
	ldr	r3, .L339+4
	ldr	r2, [r3]
	cmp	r2, #100
	movgt	r2, #50
	strgt	r2, [r3]
.L315:
	ldr	r3, .L339+8
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L334
	ldr	r4, .L339+12
.L316:
	ldr	r0, .L339+16
	ldr	lr, .L339+20
	ldr	ip, .L339+24
	ldrh	r1, [lr]
	ldrh	r2, [ip]
	ldr	r3, [r0]
	add	r1, r1, #1
	add	r3, r3, #1
	add	r2, r2, #1
	str	r3, [r0]
	strh	r1, [lr]	@ movhi
	strh	r2, [ip]	@ movhi
	bl	updateCasanova
	ldr	r3, [r0]
	cmp	r3, #100
	bleq	addMates.part.0
.L318:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L337
.L319:
	bl	updateMates
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L338
.L320:
	ldr	r3, .L339+28
	ldr	r1, [r3]
	rsb	r1, r1, #4
	cmp	r1, #3
	bgt	.L321
	mov	r0, #0
	ldr	r3, .L339+32
	add	r2, r1, r1, lsl #2
	sub	r1, r3, #80
	add	r1, r1, r2, lsl #2
.L323:
	ldr	r2, [r3, #96]
	cmp	r2, #0
	strne	r0, [r3, #96]
	sub	r3, r3, #20
	cmp	r3, r1
	bne	.L323
.L321:
	bl	updateScore
	pop	{r4, lr}
	b	alphaBlending
.L334:
	ldr	r3, .L339+36
	ldrh	r3, [r3]
	ands	r3, r3, #1
	ldr	r4, .L339+12
	bne	.L316
	ldr	r2, [r4]
	cmp	r2, #0
	moveq	r3, #1
	str	r3, [r4]
	b	.L316
.L338:
	bl	updateLizard
	bl	updateFireball
	b	.L320
.L337:
	ldr	r2, .L339+4
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	bl	addLizard
	b	.L319
.L340:
	.align	2
.L339:
	.word	level2
	.word	lTimer
	.word	oldButtons
	.word	isCheat
	.word	timer
	.word	hOff0
	.word	hOff1
	.word	matesGone
	.word	heart
	.word	buttons
	.size	updateGame, .-updateGame
	.align	2
	.global	drawScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScore, %function
drawScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #320
	ldr	r3, .L346
	lsl	lr, r1, #16
	ldr	r6, [r3]
	ldr	r2, .L346+4
	ldr	r3, .L346+8
	lsr	lr, lr, #16
	orr	r1, r1, #16384
	ldr	r2, [r2]
	strh	r1, [r3, #2]	@ movhi
	add	r1, lr, #16
	orr	r1, r1, #16384
	add	ip, lr, #30
	strh	r1, [r3, #10]	@ movhi
	lsl	r0, r0, #16
	ldr	r1, .L346+12
	add	r2, r2, #128
	orr	ip, ip, #16384
	lsr	r0, r0, #16
	lsl	ip, ip, #16
	lsl	r2, r2, #17
	cmp	r6, #9
	strh	r0, [r3]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	lsr	ip, ip, #16
	lsr	r2, r2, #16
	ble	.L342
	ldr	r1, .L346+16
	ldr	r5, [r1]
	add	r4, lr, #35
	add	r5, r5, #128
	orr	r4, r4, #16384
	lsl	r5, r5, #17
	lsl	r4, r4, #16
	cmp	r6, #99
	lsr	r5, r5, #16
	lsr	r4, r4, #16
	ble	.L343
	ldr	r1, .L346+20
	ldr	r6, [r1]
	add	r1, lr, #40
	add	lr, r6, #128
	lsl	lr, lr, #1
	orr	r1, r1, #16384
	strh	r4, [r3, #26]	@ movhi
	strh	r5, [r3, #28]	@ movhi
	strh	lr, [r3, #36]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	strh	r0, [r3, #32]	@ movhi
	strh	ip, [r3, #34]	@ movhi
	strh	r0, [r3, #24]	@ movhi
	strh	r0, [r3, #16]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L342:
	strh	r0, [r3, #16]	@ movhi
	strh	ip, [r3, #18]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L343:
	strh	r5, [r3, #28]	@ movhi
	strh	r4, [r3, #18]	@ movhi
	strh	r0, [r3, #24]	@ movhi
	strh	ip, [r3, #26]	@ movhi
	strh	r0, [r3, #16]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L347:
	.align	2
.L346:
	.word	matesKissed
	.word	ones
	.word	shadowOAM
	.word	322
	.word	tens
	.word	hundreds
	.size	drawScore, .-drawScore
	.align	2
	.global	initLostLife
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLostLife, %function
initLostLife:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L352
	add	r1, r3, #80
.L349:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	add	r3, r3, #16
	cmp	r3, r1
	bne	.L349
	bx	lr
.L353:
	.align	2
.L352:
	.word	lostLife
	.size	initLostLife, .-initLostLife
	.align	2
	.global	addLostLife
	.syntax unified
	.arm
	.fpu softvfp
	.type	addLostLife, %function
addLostLife:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	ldr	ip, .L367
	ldr	r2, [ip, r3, lsl #4]
	cmp	r2, #0
	lsl	r2, r3, #4
	beq	.L366
.L355:
	add	r3, r3, #1
	cmp	r3, #5
	bxeq	lr
	ldr	r2, [ip, r3, lsl #4]
	cmp	r2, #0
	lsl	r2, r3, #4
	bne	.L355
.L366:
	cmp	r1, #15
	push	{r4, lr}
	addle	r1, r1, #5
	ble	.L357
	cmp	r1, #144
	subgt	r1, r1, #5
.L357:
	mov	r4, #0
	mov	lr, #1
	ldr	ip, .L367+4
	add	r0, r0, #5
	add	r2, ip, r2
	str	r4, [r2, #8]
	str	lr, [r2, #12]
	str	r0, [r2, #4]
	str	r1, [ip, r3, lsl #4]
	pop	{r4, lr}
	bx	lr
.L368:
	.align	2
.L367:
	.word	lostLife+12
	.word	lostLife
	.size	addLostLife, .-addLostLife
	.align	2
	.global	drawLostLife
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLostLife, %function
drawLostLife:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	lr, #512
	mov	r5, #0
	ldr	r3, .L376
	ldr	r2, .L376+4
	ldr	r4, .L376+8
	add	r0, r3, #80
.L373:
	ldr	r1, [r3, #12]
	cmp	r1, #0
	strheq	lr, [r2, #232]	@ movhi
	beq	.L372
	ldr	r1, [r3, #8]
	cmp	r1, #49
	ldrle	ip, [r3, #4]
	add	r1, r1, #1
	strle	r1, [r3, #8]
	ldrle	r1, [r3]
	orrle	ip, ip, #16384
	strhle	r4, [r2, #236]	@ movhi
	strhle	ip, [r2, #234]	@ movhi
	strhle	r1, [r2, #232]	@ movhi
	strgt	r5, [r3, #12]
.L372:
	add	r3, r3, #16
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L373
	pop	{r4, r5, lr}
	bx	lr
.L377:
	.align	2
.L376:
	.word	lostLife
	.word	shadowOAM
	.word	278
	.size	drawLostLife, .-drawLostLife
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
	ldr	r2, .L383
	ldr	r3, .L383+4
	ldr	r1, [r2]
	ldrh	r2, [r3, #4]
	cmp	r1, #0
	ldrh	r1, [r3]
	ldr	r3, [r3, #16]
	push	{r4, lr}
	addne	r3, r3, #32
	ldr	r4, .L383+8
	orr	r2, r2, #32768
	lsl	r3, r3, #2
	strh	r3, [r4, #108]	@ movhi
	strh	r2, [r4, #106]	@ movhi
	strh	r1, [r4, #104]	@ movhi
	bl	drawMates
	bl	drawLizard
	bl	drawFireball
	bl	drawHeart
	mov	r1, #2
	mov	r0, #0
	bl	drawScore
	mov	r2, #0
	mov	lr, #324
	ldr	r3, .L383+12
	ldr	r3, [r3]
	add	r3, r3, #128
	lsl	r3, r3, #1
	ldr	ip, .L383+16
	ldr	r0, .L383+20
	strh	r3, [r4, #100]	@ movhi
	ldr	r1, .L383+24
	ldr	r3, .L383+28
	strh	lr, [r4, #84]	@ movhi
	strh	r2, [r4, #80]	@ movhi
	strh	r2, [r4, #88]	@ movhi
	strh	r2, [r4, #96]	@ movhi
	strh	ip, [r4, #82]	@ movhi
	strh	r0, [r4, #90]	@ movhi
	strh	r1, [r4, #92]	@ movhi
	strh	r3, [r4, #98]	@ movhi
	bl	drawLostLife
	mov	r2, #67108864
	ldr	r3, .L383+32
	ldrh	r1, [r3]
	ldr	r4, .L383+36
	strh	r1, [r2, #84]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L383+8
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L384:
	.align	2
.L383:
	.word	isCheat
	.word	birds
	.word	shadowOAM
	.word	level
	.word	16584
	.word	16600
	.word	326
	.word	16612
	.word	blackWeight
	.word	DMANow
	.size	drawGame, .-drawGame
	.comm	lostLife,80,4
	.comm	heart,100,4
	.comm	fireball,180,4
	.comm	lizard,96,4
	.comm	birds,128,4
	.comm	shadowOAM,1024,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	hundreds,4,4
	.comm	tens,4,4
	.comm	ones,4,4
	.comm	blackWeight,4,4
	.comm	isCheat,4,4
	.comm	matesKissed,4,4
	.comm	lCol,4,4
	.comm	lRow,4,4
	.comm	levelChangeTimer,4,4
	.comm	level,4,4
	.comm	level3,4,4
	.comm	level2,4,4
	.comm	initLevel3Change,4,4
	.comm	initLevel2Change,4,4
	.comm	alphaDown,4,4
	.comm	alphaUp,4,4
	.comm	alphaBlendTimer,4,4
	.comm	matesGone,4,4
	.comm	lTimer,4,4
	.comm	timer,4,4
	.comm	hOff1,2,2
	.comm	hOff0,2,2
	.comm	vOff1,2,2
	.comm	vOff0,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
