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
	str	lr, [sp, #-4]!
	mov	lr, #324
	ldr	r3, .L40
	lsl	r2, r0, #16
	ldr	ip, [r3]
	lsl	r1, r1, #16
	ldr	r3, .L40+4
	lsr	r1, r1, #16
	lsr	r2, r2, #16
	orr	r0, r0, #16384
	strh	r0, [r3, #82]	@ movhi
	strh	r1, [r3, #80]	@ movhi
	add	r0, r2, #16
	strh	r1, [r3, #88]	@ movhi
	strh	r1, [r3, #96]	@ movhi
	add	ip, ip, #128
	ldr	r1, .L40+8
	add	r2, r2, #28
	lsl	ip, ip, #1
	orr	r0, r0, #16384
	orr	r2, r2, #16384
	strh	lr, [r3, #84]	@ movhi
	strh	r0, [r3, #90]	@ movhi
	strh	r2, [r3, #98]	@ movhi
	strh	r1, [r3, #92]	@ movhi
	strh	ip, [r3, #100]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L41:
	.align	2
.L40:
	.word	level
	.word	shadowOAM
	.word	326
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
	ldr	r5, .L113
	mov	r4, r5
	ldr	r9, .L113+4
	ldr	r8, .L113+8
	ldr	r10, .L113+12
	ldr	r6, .L113+16
	ldr	fp, .L113+20
	sub	sp, sp, #20
	add	r7, r5, #96
.L97:
	ldr	r3, [r4, #60]
	cmp	r3, #0
	beq	.L78
	ldr	r2, [r4, #36]
	ldr	r1, [r9]
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
	beq	.L87
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
	bx	r8
	cmp	r0, #0
	bne	.L109
.L89:
	ldr	r3, [r4, #52]
	add	r3, r3, #1
	str	r3, [r4, #52]
.L78:
	add	r4, r4, #32
	cmp	r4, r7
	bne	.L97
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L87:
	ldr	r2, [r6, r3, lsl #4]
	cmp	r2, #0
	lsl	r2, r3, #4
	beq	.L110
	add	r3, r3, #1
	cmp	r3, #5
	bne	.L87
.L86:
	mov	r2, #0
	ldr	r1, .L113+24
	ldr	r3, .L113+28
	ldr	r0, .L113+32
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r2, .L113+36
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #60]
	ldr	r2, [r4, #36]
	b	.L82
.L109:
	mov	r1, #0
	mov	r3, r1
	ldr	r2, [r10]
	add	r2, r2, #1
	str	r2, [r10]
	str	r1, [r4, #60]
.L94:
	ldr	r1, [r6, r3, lsl #4]
	cmp	r1, #0
	lsl	r1, r3, #4
	beq	.L111
	add	r3, r3, #1
	cmp	r3, #5
	bne	.L94
.L93:
	cmp	r2, #10
	beq	.L112
	cmp	r2, #20
	moveq	r3, #1
	ldreq	r2, .L113+40
	streq	r3, [fp]
	streq	r3, [r2]
	b	.L89
.L112:
	mov	r3, #1
	ldr	r1, .L113+44
	ldr	r2, .L113+48
	str	r3, [r1]
	str	r3, [r2]
	b	.L89
.L111:
	ldr	r0, [r4, #32]
	cmp	r0, #15
	addle	r0, r0, #5
	ble	.L92
	cmp	r0, #144
	subgt	r0, r0, #5
.L92:
	ldr	lr, .L113+52
	str	r0, [lr, r3, lsl #4]
	mov	r3, #0
	add	r1, lr, r1
	str	r3, [r1, #8]
	mov	r3, #1
	ldr	ip, [r4, #36]
	add	ip, ip, #5
	str	ip, [r1, #4]
	str	r3, [r1, #12]
	b	.L93
.L110:
	ldr	r1, [r4, #32]
	cmp	r1, #15
	addle	r1, r1, #5
	ble	.L85
	cmp	r1, #144
	subgt	r1, r1, #5
.L85:
	ldr	r0, .L113+52
	mov	lr, #5
	mov	ip, #0
	str	r1, [r0, r3, lsl #4]
	mov	r3, #1
	add	r2, r0, r2
	str	lr, [r2, #4]
	str	ip, [r2, #8]
	str	r3, [r2, #12]
	b	.L86
.L114:
	.align	2
.L113:
	.word	birds
	.word	isCheat
	.word	collision
	.word	matesKissed
	.word	lostLife+12
	.word	level3
	.word	5490
	.word	playSoundB
	.word	missedMate
	.word	matesGone
	.word	initLevel3Change
	.word	initLevel2Change
	.word	level2
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
	ldr	r3, .L121
	ldr	r2, .L121+4
	ldr	r4, .L121+8
	add	ip, r3, #24
.L118:
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
	bne	.L118
	pop	{r4, r5, lr}
	bx	lr
.L122:
	.align	2
.L121:
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
	ldr	r9, .L131
	ldr	r5, .L131+4
	ldr	r4, .L131+8
	add	r6, r9, #96
.L126:
	mov	r3, #240
	str	r8, [r9, #8]
	str	r7, [r9, #12]
	str	r3, [r9, #4]
.L130:
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
	bhi	.L130
	mov	r3, #0
	add	r9, r9, #32
	str	r3, [r9, #-4]
	str	r3, [r9, #-16]
	str	r3, [r9, #-12]
	cmp	r9, r6
	bne	.L126
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L132:
	.align	2
.L131:
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
	ldr	r3, .L166
	ldr	r3, [r3]
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L166+4
	cmp	r3, #1
	ldr	r2, [r4]
	beq	.L163
	ldr	r3, .L166+8
	cmp	r2, r3
	beq	.L164
.L133:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L164:
	ldr	r8, .L166+12
	ldr	r9, [r8, #28]
	cmp	r9, #0
	beq	.L143
	ldr	r3, [r8, #60]
	cmp	r3, #0
	beq	.L148
	ldr	r3, [r8, #92]
	cmp	r3, #0
	moveq	r9, #2
	beq	.L143
.L137:
	mov	r3, #0
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L163:
	cmp	r2, #100
	bne	.L133
	ldr	r8, .L166+12
	ldr	r9, [r8, #28]
	cmp	r9, #0
	beq	.L136
	ldr	r2, [r8, #60]
	cmp	r2, #0
	beq	.L146
	ldr	r3, [r8, #92]
	cmp	r3, #0
	bne	.L137
	mov	r9, #2
.L136:
	mov	r2, #240
	add	r3, r8, r9, lsl #5
	str	r2, [r3, #4]
	ldr	r5, .L166+16
	mov	lr, pc
	bx	r5
	ldr	r6, .L166+20
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
.L139:
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
	bhi	.L139
.L138:
	mov	r1, #0
	mov	r0, #1
	ldr	r2, .L166+24
	ldr	r2, [r2]
	cmp	r2, r1
	add	r2, r8, r7
	str	r0, [r2, #28]
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	beq	.L137
	ldr	r2, .L166+28
	ldr	r2, [r2]
	cmp	r2, r1
	bne	.L137
	ldr	ip, .L166+32
	mov	r1, ip
.L142:
	ldr	r0, [r1, #16]
	cmp	r0, #0
	beq	.L165
	add	r2, r2, #1
	cmp	r2, #9
	add	r1, r1, #20
	bne	.L142
	b	.L137
.L148:
	mov	r9, #1
.L143:
	mov	r2, #240
	add	r3, r8, r9, lsl #5
	str	r2, [r3, #4]
	ldr	r5, .L166+16
	mov	lr, pc
	bx	r5
	ldr	r6, .L166+20
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #3
	cmp	r3, #120
	str	r3, [r8, r9, lsl #5]
	lsl	r7, r9, #5
	bls	.L145
.L144:
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
	bhi	.L144
.L145:
	mov	r3, #0
	mov	r2, #1
	add	r7, r8, r7
	str	r2, [r7, #28]
	str	r3, [r7, #16]
	str	r3, [r7, #20]
	b	.L137
.L146:
	mov	r9, r3
	b	.L136
.L165:
	mov	r0, #1
	add	r7, r8, r7
	add	r2, r2, r2, lsl #2
	ldr	lr, [r7, #4]
	add	r1, ip, r2, lsl #2
	add	r3, r3, #8
	str	r3, [ip, r2, lsl #2]
	str	lr, [r1, #4]
	str	r0, [r1, #16]
	b	.L137
.L167:
	.align	2
.L166:
	.word	level2
	.word	lTimer
	.word	325
	.word	lizard
	.word	rand
	.word	1374389535
	.word	level3
	.word	isCheat
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L195
	ldr	r9, .L195+4
	ldr	r5, .L195+8
	ldr	r8, .L195+12
	ldr	r7, .L195+16
	ldr	fp, .L195+20
	ldr	r10, .L195+24
	sub	sp, sp, #20
	add	r6, r4, #96
.L182:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L169
	ldr	r3, [r9]
	cmp	r3, #0
	ldr	r3, [r4, #4]
	beq	.L170
	cmp	r3, #1
	movle	r2, #0
	subgt	r3, r3, #2
	strle	r2, [r4, #28]
	strgt	r3, [r4, #4]
.L172:
	ldr	r2, [r4, #20]
	cmp	r2, #8
	bne	.L174
	ldr	r2, [r4, #16]
	cmp	r2, #2
	moveq	r2, #0
	mov	r1, #0
	addne	r2, r2, #1
	str	r2, [r4, #16]
	str	r1, [r4, #20]
.L174:
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
	bne	.L193
.L176:
	ldr	r3, [r4, #20]
	add	r3, r3, #1
	str	r3, [r4, #20]
.L169:
	add	r4, r4, #32
	cmp	r4, r6
	bne	.L182
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L170:
	cmp	r3, #0
	subne	r2, r3, #1
	movne	r3, r2
	streq	r3, [r4, #28]
	strne	r2, [r4, #4]
	b	.L172
.L193:
	mov	r3, #0
.L181:
	ldr	r2, [r7, r3, lsl #4]
	cmp	r2, #0
	lsl	r2, r3, #4
	beq	.L194
	add	r3, r3, #1
	cmp	r3, #5
	bne	.L181
.L180:
	mov	r2, #0
	ldr	r1, .L195+28
	mov	r0, fp
	mov	lr, pc
	bx	r10
	mov	r1, #0
	ldr	r2, .L195+32
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #28]
	b	.L176
.L194:
	ldr	r1, [r4]
	cmp	r1, #15
	addle	r1, r1, #5
	ble	.L179
	cmp	r1, #144
	subgt	r1, r1, #5
.L179:
	ldr	ip, .L195+36
	mov	lr, #0
	str	r1, [ip, r3, lsl #4]
	mov	r3, #1
	ldr	r0, [r4, #4]
	add	r2, ip, r2
	add	r0, r0, #5
	str	r0, [r2, #4]
	str	lr, [r2, #8]
	str	r3, [r2, #12]
	b	.L180
.L196:
	.align	2
.L195:
	.word	lizard
	.word	level2
	.word	birds
	.word	collision
	.word	lostLife+12
	.word	missedMate
	.word	playSoundB
	.word	5490
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
	push	{r4, r5, lr}
	mov	r5, #512
	ldr	r3, .L203
	ldr	r2, .L203+4
	ldr	r4, .L203+8
	add	ip, r3, #24
.L200:
	ldr	r1, [r2, #28]
	cmp	r1, #0
	ldrne	r1, [r2, #16]
	ldrne	r0, [r2, #4]
	ldrne	lr, [r2]
	addne	r1, r1, #35
	lslne	r1, r1, #2
	orrne	r0, r0, r4
	strhne	r1, [r3, #140]	@ movhi
	strhne	r0, [r3, #138]	@ movhi
	strhne	lr, [r3, #136]	@ movhi
	strheq	r5, [r3, #136]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	add	r2, r2, #32
	bne	.L200
	pop	{r4, r5, lr}
	bx	lr
.L204:
	.align	2
.L203:
	.word	shadowOAM
	.word	lizard
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
	ldr	r4, .L213
	ldr	r6, .L213+4
	ldr	r5, .L213+8
	add	r8, r4, #180
.L208:
	str	r9, [r4, #4]
.L212:
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
	bhi	.L212
	mov	r3, #0
	str	r7, [r4, #8]
	str	r7, [r4, #12]
	str	r3, [r4, #16]
	add	r4, r4, #20
	cmp	r4, r8
	bne	.L208
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L214:
	.align	2
.L213:
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
	mov	r1, #1
	push	{r4, r5, r6, lr}
	mov	r4, #0
	mov	lr, #32
	mov	ip, #16
	mov	r0, #64
	mov	r5, #24
	ldr	r2, .L219
	ldr	r3, [r2]
	add	r3, r3, r1
	str	r3, [r2]
	ldr	r3, .L219+4
	strh	r4, [r3]	@ movhi
	ldr	r3, .L219+8
	str	r4, [r3]
	ldr	r3, .L219+12
	str	r4, [r3]
	ldr	r3, .L219+16
	str	r4, [r3]
	ldr	r3, .L219+20
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
	ldr	r3, .L219+24
	add	r1, r3, #80
.L216:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	add	r3, r3, #16
	cmp	r3, r1
	bne	.L216
	pop	{r4, r5, r6, lr}
	bx	lr
.L220:
	.align	2
.L219:
	.word	level
	.word	hOff0
	.word	gamehOff0
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
	ldr	r2, .L225
	ldr	r3, [r2]
	add	r3, r3, r1
	str	r3, [r2]
	ldr	r3, .L225+4
	strh	r4, [r3]	@ movhi
	ldr	r3, .L225+8
	str	r4, [r3]
	ldr	r3, .L225+12
	str	r4, [r3]
	ldr	r3, .L225+16
	str	r4, [r3]
	ldr	r3, .L225+20
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
	ldr	r3, .L225+24
	add	r1, r3, #80
.L222:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	add	r3, r3, #16
	cmp	r3, r1
	bne	.L222
	pop	{r4, r5, r6, lr}
	bx	lr
.L226:
	.align	2
.L225:
	.word	level
	.word	hOff0
	.word	gamehOff0
	.word	initLevel3Change
	.word	levelChangeTimer
	.word	birds
	.word	lostLife
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
	mov	r0, #24
	mov	r1, #32
	mov	r2, #64
	mov	r4, #0
	mov	r5, #16
	mov	r6, #1
	ldr	r3, .L233
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
	ldr	r3, .L233+4
.L228:
	str	r2, [r3, #4]
	add	r2, r2, #16
	cmp	r2, #80
	str	ip, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r0, [r3, #16]
	add	r3, r3, #20
	bne	.L228
	mov	r1, #0
	ldr	lr, .L233+8
	ldr	ip, .L233+12
	ldr	r0, .L233+16
	ldr	r3, .L233+20
	mov	r2, r1
	str	r1, [lr]
	str	r1, [ip]
	str	r1, [r0]
	add	r1, r3, #80
.L229:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	add	r3, r3, #16
	cmp	r3, r1
	bne	.L229
	mov	ip, #95
	mov	r1, #1
	mov	lr, #16
	ldr	r0, .L233+24
	ldr	r3, .L233+28
	str	ip, [r0]
	str	r1, [r3]
	ldr	ip, .L233+32
	ldr	r0, .L233+36
	ldr	r1, .L233+40
	ldr	r3, .L233+44
	str	lr, [ip]
	str	r2, [r0]
	str	r2, [r1]
	str	r2, [r3]
	ldr	lr, .L233+48
	ldr	ip, .L233+52
	ldr	r0, .L233+56
	ldr	r1, .L233+60
	ldr	r3, .L233+64
	str	r2, [lr]
	str	r2, [ip]
	ldr	lr, .L233+68
	str	r2, [r0]
	str	r2, [r1]
	str	r2, [r3]
	ldr	ip, .L233+72
	ldr	r0, .L233+76
	ldr	r1, .L233+80
	ldr	r3, .L233+84
	str	r2, [lr]
	str	r2, [ip]
	str	r2, [r0]
	str	r2, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L234:
	.align	2
.L233:
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
	.word	gamehOff0
	.size	initGame, .-initGame
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
	ldr	ip, .L245
	mov	r3, #0
	mov	r2, ip
	b	.L238
.L236:
	add	r3, r3, #1
	cmp	r3, #9
	add	r2, r2, #20
	bxeq	lr
.L238:
	ldr	r1, [r2, #16]
	cmp	r1, #0
	bne	.L236
	str	lr, [sp, #-4]!
	mov	lr, #1
	ldr	r2, .L245+4
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
.L246:
	.align	2
.L245:
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
	ldr	r4, .L267
	ldr	r5, .L267+4
	ldr	r8, .L267+8
	ldr	r7, .L267+12
	ldr	r10, .L267+16
	ldr	fp, .L267+20
	ldr	r9, .L267+24
	sub	sp, sp, #20
	add	r6, r4, #180
	b	.L258
.L249:
	add	r4, r4, #20
	cmp	r4, r6
	beq	.L265
.L258:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L249
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
	beq	.L249
	mov	r3, #0
.L257:
	ldr	r2, [r7, r3, lsl #4]
	cmp	r2, #0
	lsl	r2, r3, #4
	beq	.L266
	add	r3, r3, #1
	cmp	r3, #5
	bne	.L257
.L256:
	mov	r2, #0
	mov	r0, r10
	ldr	r1, .L267+28
	mov	lr, pc
	bx	fp
	mov	r2, #0
	ldr	r3, [r9]
	str	r2, [r4, #16]
	add	r4, r4, #20
	add	r3, r3, #1
	cmp	r4, r6
	str	r3, [r9]
	bne	.L258
.L265:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L266:
	ldr	r1, [r4]
	cmp	r1, #15
	addle	r1, r1, #5
	ble	.L255
	cmp	r1, #144
	subgt	r1, r1, #5
.L255:
	ldr	ip, .L267+32
	mov	lr, #0
	str	r1, [ip, r3, lsl #4]
	mov	r3, #1
	ldr	r0, [r4, #4]
	add	r2, ip, r2
	add	r0, r0, #5
	str	r0, [r2, #4]
	str	lr, [r2, #8]
	str	r3, [r2, #12]
	b	.L256
.L268:
	.align	2
.L267:
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
	ldr	r2, .L280
	ldr	r3, .L280+4
	push	{r4, r5, lr}
	mov	ip, #512
	ldr	lr, [r2]
	mov	r5, #340
	ldr	r2, .L280+8
	add	r0, r3, #180
	b	.L272
.L279:
	cmp	lr, #0
	bne	.L270
	ldr	r1, [r3, #4]
	ldr	r4, [r3]
	add	r3, r3, #20
	orr	r1, r1, #16384
	cmp	r3, r0
	strh	r5, [r2, #164]	@ movhi
	strh	r1, [r2, #162]	@ movhi
	strh	r4, [r2, #160]	@ movhi
	add	r2, r2, #8
	beq	.L278
.L272:
	ldr	r1, [r3, #16]
	cmp	r1, #0
	bne	.L279
.L270:
	add	r3, r3, #20
	cmp	r3, r0
	strh	ip, [r2, #160]	@ movhi
	add	r2, r2, #8
	bne	.L272
.L278:
	pop	{r4, r5, lr}
	bx	lr
.L281:
	.align	2
.L280:
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
	ldr	r3, .L286
.L283:
	str	r2, [r3, #4]
	add	r2, r2, #16
	cmp	r2, #80
	str	ip, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r0, [r3, #16]
	add	r3, r3, #20
	bne	.L283
	bx	lr
.L287:
	.align	2
.L286:
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
	ldr	r3, .L296
	ldr	r1, [r3]
	rsb	r1, r1, #4
	cmp	r1, #3
	bxgt	lr
	mov	r0, #0
	ldr	r3, .L296+4
	add	r2, r1, r1, lsl #2
	sub	r1, r3, #80
	add	r1, r1, r2, lsl #2
.L291:
	ldr	r2, [r3, #96]
	cmp	r2, #0
	strne	r0, [r3, #96]
	sub	r3, r3, #20
	cmp	r3, r1
	bne	.L291
	bx	lr
.L297:
	.align	2
.L296:
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
	ldr	r3, .L304
	ldr	r2, .L304+4
	ldr	lr, .L304+8
	add	ip, r3, #40
.L301:
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
	bne	.L301
	pop	{r4, lr}
	bx	lr
.L305:
	.align	2
.L304:
	.word	shadowOAM
	.word	heart
	.word	278
	.size	drawHeart, .-drawHeart
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
	ldr	r3, .L310
	add	r1, r3, #80
.L307:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	add	r3, r3, #16
	cmp	r3, r1
	bne	.L307
	bx	lr
.L311:
	.align	2
.L310:
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
	ldr	ip, .L325
	ldr	r2, [ip, r3, lsl #4]
	cmp	r2, #0
	lsl	r2, r3, #4
	beq	.L324
.L313:
	add	r3, r3, #1
	cmp	r3, #5
	bxeq	lr
	ldr	r2, [ip, r3, lsl #4]
	cmp	r2, #0
	lsl	r2, r3, #4
	bne	.L313
.L324:
	cmp	r1, #15
	push	{r4, lr}
	addle	r1, r1, #5
	ble	.L315
	cmp	r1, #144
	subgt	r1, r1, #5
.L315:
	mov	r4, #0
	mov	lr, #1
	ldr	ip, .L325+4
	add	r0, r0, #5
	add	r2, ip, r2
	str	r4, [r2, #8]
	str	lr, [r2, #12]
	str	r0, [r2, #4]
	str	r1, [ip, r3, lsl #4]
	pop	{r4, lr}
	bx	lr
.L326:
	.align	2
.L325:
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
	ldr	r3, .L334
	ldr	r2, .L334+4
	ldr	r4, .L334+8
	add	r0, r3, #80
.L331:
	ldr	r1, [r3, #12]
	cmp	r1, #0
	strheq	lr, [r2, #232]	@ movhi
	beq	.L330
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
.L330:
	add	r3, r3, #16
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L331
	pop	{r4, r5, lr}
	bx	lr
.L335:
	.align	2
.L334:
	.word	lostLife
	.word	shadowOAM
	.word	278
	.size	drawLostLife, .-drawLostLife
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
	ldr	r0, .L337
	ldr	r1, .L337+4
	ldr	r2, .L337+8
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	bx	lr
.L338:
	.align	2
.L337:
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
	ldr	r3, .L346
	ldr	ip, .L346+4
	ldr	r2, [r3]
	smull	r1, r3, ip, r2
	asr	r1, r2, #31
	rsb	r3, r1, r3, asr #2
	ldr	r0, .L346+8
	add	r3, r3, r3, lsl #2
	sub	r3, r2, r3, lsl #1
	cmp	r2, #9
	str	r3, [r0]
	bxle	lr
	cmp	r2, #99
	ble	.L341
	mvn	r0, #99
	push	{r4, lr}
	ldr	lr, .L346+12
	smull	r4, lr, r2, lr
	rsb	r1, r1, lr, asr #5
	mla	r2, r0, r1, r2
	sub	r3, r2, r3
	smull	r2, ip, r3, ip
	ldr	r0, .L346+16
	ldr	r2, .L346+20
	asr	r3, r3, #31
	rsb	r3, r3, ip, asr #2
	str	r3, [r0]
	str	r1, [r2]
	pop	{r4, lr}
	bx	lr
.L341:
	ldr	r1, .L346+24
	sub	r3, r2, r3
	umull	r2, r3, r1, r3
	ldr	r2, .L346+16
	lsr	r3, r3, #3
	str	r3, [r2]
	bx	lr
.L347:
	.align	2
.L346:
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
	ldr	r3, .L371
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, r5, r6, lr}
	ldr	r5, .L371+4
	beq	.L349
	ldr	r3, [r5]
	cmp	r3, #100
	movgt	r3, #50
	strgt	r3, [r5]
.L349:
	ldr	r3, .L371+8
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L367
	ldr	r4, .L371+12
.L350:
	ldr	ip, .L371+16
	ldrh	r3, [ip]
	ldr	r0, .L371+20
	ldr	r1, .L371+24
	add	r3, r3, #1
	ldrh	r2, [r1]
	strh	r3, [ip]	@ movhi
	ldr	r3, [r0]
	add	r2, r2, #1
	add	r3, r3, #1
	str	r3, [r0]
	strh	r2, [r1]	@ movhi
	bl	updateCasanova
	ldr	r3, [r0]
	cmp	r3, #100
	bleq	addMates.part.0
.L352:
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	bl	addLizard
	bl	updateMates
	bl	updateLizard
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L370
.L353:
	ldr	r3, .L371+28
	ldr	r1, [r3]
	rsb	r1, r1, #4
	cmp	r1, #3
	bgt	.L354
	mov	r0, #0
	ldr	r3, .L371+32
	add	r2, r1, r1, lsl #2
	sub	r1, r3, #80
	add	r1, r1, r2, lsl #2
.L356:
	ldr	r2, [r3, #96]
	cmp	r2, #0
	strne	r0, [r3, #96]
	sub	r3, r3, #20
	cmp	r3, r1
	bne	.L356
.L354:
	bl	updateScore
	pop	{r4, r5, r6, lr}
	b	alphaBlending
.L367:
	ldr	r3, .L371+36
	ldrh	r3, [r3]
	ands	r3, r3, #1
	ldr	r4, .L371+12
	bne	.L350
	ldr	r2, [r4]
	cmp	r2, #0
	moveq	r3, #1
	str	r3, [r4]
	b	.L350
.L370:
	bl	updateFireball
	b	.L353
.L372:
	.align	2
.L371:
	.word	level2
	.word	lTimer
	.word	oldButtons
	.word	isCheat
	.word	hOff0
	.word	timer
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
	ldr	r3, .L378
	lsl	lr, r0, #16
	ldr	r6, [r3]
	ldr	r2, .L378+4
	ldr	r3, .L378+8
	lsr	lr, lr, #16
	orr	r0, r0, #16384
	ldr	r2, [r2]
	strh	r0, [r3, #2]	@ movhi
	add	r0, lr, #16
	orr	r0, r0, #16384
	add	ip, lr, #30
	strh	r0, [r3, #10]	@ movhi
	lsl	r1, r1, #16
	ldr	r0, .L378+12
	add	r2, r2, #128
	orr	ip, ip, #16384
	lsr	r1, r1, #16
	lsl	ip, ip, #16
	lsl	r2, r2, #17
	cmp	r6, #9
	strh	r1, [r3]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	strh	r0, [r3, #12]	@ movhi
	lsr	ip, ip, #16
	lsr	r2, r2, #16
	ble	.L374
	ldr	r0, .L378+16
	ldr	r5, [r0]
	add	r4, lr, #35
	add	r5, r5, #128
	orr	r4, r4, #16384
	lsl	r5, r5, #17
	lsl	r4, r4, #16
	cmp	r6, #99
	lsr	r5, r5, #16
	lsr	r4, r4, #16
	ble	.L375
	ldr	r0, .L378+20
	ldr	r6, [r0]
	add	r0, lr, #40
	add	lr, r6, #128
	lsl	lr, lr, #1
	orr	r0, r0, #16384
	strh	r4, [r3, #26]	@ movhi
	strh	r5, [r3, #28]	@ movhi
	strh	lr, [r3, #36]	@ movhi
	strh	r0, [r3, #18]	@ movhi
	strh	r1, [r3, #32]	@ movhi
	strh	ip, [r3, #34]	@ movhi
	strh	r1, [r3, #24]	@ movhi
	strh	r1, [r3, #16]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L374:
	strh	r1, [r3, #16]	@ movhi
	strh	ip, [r3, #18]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L375:
	strh	r5, [r3, #28]	@ movhi
	strh	r4, [r3, #18]	@ movhi
	strh	r1, [r3, #24]	@ movhi
	strh	ip, [r3, #26]	@ movhi
	strh	r1, [r3, #16]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L379:
	.align	2
.L378:
	.word	matesKissed
	.word	ones
	.word	shadowOAM
	.word	322
	.word	tens
	.word	hundreds
	.size	drawScore, .-drawScore
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
	ldr	r2, .L385
	ldr	r3, .L385+4
	ldr	r1, [r2]
	ldrh	r2, [r3, #4]
	cmp	r1, #0
	ldrh	r1, [r3]
	ldr	r3, [r3, #16]
	push	{r4, lr}
	addne	r3, r3, #32
	ldr	r4, .L385+8
	orr	r2, r2, #32768
	lsl	r3, r3, #2
	strh	r3, [r4, #108]	@ movhi
	strh	r2, [r4, #106]	@ movhi
	strh	r1, [r4, #104]	@ movhi
	bl	drawMates
	bl	drawLizard
	bl	drawFireball
	bl	drawHeart
	mov	r1, #0
	mov	r0, #2
	bl	drawScore
	mov	r2, #0
	mov	lr, #324
	ldr	r3, .L385+12
	ldr	r3, [r3]
	add	r3, r3, #128
	lsl	r3, r3, #1
	ldr	ip, .L385+16
	ldr	r0, .L385+20
	strh	r3, [r4, #100]	@ movhi
	ldr	r1, .L385+24
	ldr	r3, .L385+28
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
	ldr	r3, .L385+32
	ldrh	r1, [r3]
	ldr	r4, .L385+36
	strh	r1, [r2, #84]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L385+8
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L386:
	.align	2
.L385:
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
	.comm	alphaDown,4,4
	.comm	alphaUp,4,4
	.comm	alphaBlendTimer,4,4
	.comm	blackWeight,4,4
	.comm	isCheat,4,4
	.comm	matesKissed,4,4
	.comm	levelChangeTimer,4,4
	.comm	level,4,4
	.comm	level3,4,4
	.comm	level2,4,4
	.comm	initLevel3Change,4,4
	.comm	initLevel2Change,4,4
	.comm	matesGone,4,4
	.comm	lTimer,4,4
	.comm	timer,4,4
	.comm	gamehOff0,4,4
	.comm	hOff1,2,2
	.comm	hOff0,2,2
	.comm	vOff1,2,2
	.comm	vOff0,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
