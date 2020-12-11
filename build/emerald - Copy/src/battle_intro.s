@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section ewram_data,"aw"
	.align	1, 0
	.type	 sBgCnt,object
	.size	 sBgCnt,2
sBgCnt:
	.short	0x0
	.section .rodata
	.align	2, 0
	.type	 sBattleIntroSlideFuncs,object
sBattleIntroSlideFuncs:
	.word	BattleIntroSlide1
	.word	BattleIntroSlide1
	.word	BattleIntroSlide2
	.word	BattleIntroSlide2
	.word	BattleIntroSlide2
	.word	BattleIntroSlide1
	.word	BattleIntroSlide1
	.word	BattleIntroSlide1
	.word	BattleIntroSlide3
	.word	BattleIntroSlide3
	.size	 sBattleIntroSlideFuncs,40
.text
	.align	2, 0
	.globl	SetAnimBgAttribute
	.type	 SetAnimBgAttribute,function
	.thumb_func
SetAnimBgAttribute:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #0x18
	lsr	r6, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r5, r1, #0x18
	lsl	r2, r2, #0x18
	lsr	r4, r2, #0x18
	cmp	r6, #0x3
	bls	.LCB16
	b	.L3	@long jump
.LCB16:
	ldr	r0, .L16
	add	r0, r6, r0
	ldrb	r0, [r0]
	bl	GetGpuReg
	ldr	r1, .L16+0x4
	strh	r0, [r1]
	cmp	r5, #0x6
	bhi	.L4	@cond_branch
	lsl	r0, r5, #0x2
	ldr	r1, .L16+0x8
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L17:
	.align	2, 0
.L16:
	.word	gUnknown_0859741A
	.word	sBgCnt
	.word	.L12
	.align	2, 0
	.align	2, 0
.L12:
	.word	.L5
	.word	.L6
	.word	.L7
	.word	.L8
	.word	.L9
	.word	.L10
	.word	.L11
.L5:
	ldr	r2, .L18
	lsl	r3, r4, #0x6
	ldrb	r1, [r2, #0x1]
	mov	r0, #0x3f
	and	r0, r0, r1
	orr	r0, r0, r3
	strb	r0, [r2, #0x1]
	b	.L4
.L19:
	.align	2, 0
.L18:
	.word	sBgCnt
.L6:
	ldr	r3, .L20
	mov	r0, #0x1
	add	r1, r4, #0
	and	r1, r1, r0
	lsl	r1, r1, #0x5
	ldrb	r2, [r3, #0x1]
	mov	r0, #0x21
	neg	r0, r0
	b	.L14
.L21:
	.align	2, 0
.L20:
	.word	sBgCnt
.L7:
	ldr	r3, .L22
	mov	r0, #0x1
	add	r1, r4, #0
	and	r1, r1, r0
	lsl	r1, r1, #0x6
	ldrb	r2, [r3]
	mov	r0, #0x41
	neg	r0, r0
	b	.L15
.L23:
	.align	2, 0
.L22:
	.word	sBgCnt
.L8:
	ldr	r3, .L24
	mov	r0, #0x3
	add	r1, r4, #0
	and	r1, r1, r0
	lsl	r1, r1, #0x2
	ldrb	r2, [r3]
	mov	r0, #0xd
	neg	r0, r0
	b	.L15
.L25:
	.align	2, 0
.L24:
	.word	sBgCnt
.L9:
	ldr	r3, .L26
	mov	r0, #0x3
	add	r1, r4, #0
	and	r1, r1, r0
	ldrb	r2, [r3]
	mov	r0, #0x4
	neg	r0, r0
.L15:
	and	r0, r0, r2
	orr	r0, r0, r1
	strb	r0, [r3]
	b	.L4
.L27:
	.align	2, 0
.L26:
	.word	sBgCnt
.L10:
	ldr	r2, .L28
	lsl	r3, r4, #0x7
	ldrb	r1, [r2]
	mov	r0, #0x7f
	and	r0, r0, r1
	orr	r0, r0, r3
	strb	r0, [r2]
	b	.L4
.L29:
	.align	2, 0
.L28:
	.word	sBgCnt
.L11:
	ldr	r3, .L30
	mov	r0, #0x1f
	add	r1, r4, #0
	and	r1, r1, r0
	ldrb	r2, [r3, #0x1]
	mov	r0, #0x20
	neg	r0, r0
.L14:
	and	r0, r0, r2
	orr	r0, r0, r1
	strb	r0, [r3, #0x1]
.L4:
	ldr	r0, .L30+0x4
	add	r0, r6, r0
	ldrb	r0, [r0]
	ldr	r1, .L30
	ldrh	r1, [r1]
	bl	SetGpuReg
.L3:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L31:
	.align	2, 0
.L30:
	.word	sBgCnt
	.word	gUnknown_0859741A
.Lfe1:
	.size	 SetAnimBgAttribute,.Lfe1-SetAnimBgAttribute
	.align	2, 0
	.globl	GetAnimBgAttribute
	.type	 GetAnimBgAttribute,function
	.thumb_func
GetAnimBgAttribute:
	push	{r4, lr}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r4, r1, #0x18
	cmp	r2, #0x3
	bhi	.L33	@cond_branch
	ldr	r0, .L45
	add	r0, r2, r0
	ldrb	r0, [r0]
	bl	GetGpuReg
	mov	r1, sp
	strh	r0, [r1]
	cmp	r4, #0x6
	bhi	.L33	@cond_branch
	lsl	r0, r4, #0x2
	ldr	r1, .L45+0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L46:
	.align	2, 0
.L45:
	.word	gUnknown_0859741E
	.word	.L42
	.align	2, 0
	.align	2, 0
.L42:
	.word	.L35
	.word	.L36
	.word	.L37
	.word	.L38
	.word	.L39
	.word	.L40
	.word	.L41
.L35:
	ldr	r0, [sp]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x1e
	b	.L44
.L36:
	ldr	r0, [sp]
	lsl	r0, r0, #0x12
	lsr	r0, r0, #0x1f
	b	.L44
.L37:
	ldr	r0, [sp]
	lsl	r0, r0, #0x19
	lsr	r0, r0, #0x1f
	b	.L44
.L38:
	ldr	r0, [sp]
	lsl	r0, r0, #0x1c
	lsr	r0, r0, #0x1e
	b	.L44
.L39:
	ldr	r0, [sp]
	lsl	r0, r0, #0x1e
	lsr	r0, r0, #0x1e
	b	.L44
.L40:
	ldr	r0, [sp]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x1f
	b	.L44
.L41:
	ldr	r0, [sp]
	lsl	r0, r0, #0x13
	lsr	r0, r0, #0x1b
	b	.L44
.L33:
	mov	r0, #0x0
.L44:
	add	sp, sp, #0x4
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe2:
	.size	 GetAnimBgAttribute,.Lfe2-GetAnimBgAttribute
	.align	2, 0
	.globl	HandleIntroSlide
	.type	 HandleIntroSlide,function
	.thumb_func
HandleIntroSlide:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	ldr	r2, .L57
	ldr	r0, [r2]
	mov	r1, #0x80
	lsl	r1, r1, #0xf
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L48	@cond_branch
	ldr	r0, .L57+0x4
	ldrh	r0, [r0]
	ldr	r1, .L57+0x8
	cmp	r0, r1
	beq	.L48	@cond_branch
	cmp	r0, r1
	bhi	.L48	@cond_branch
	ldr	r0, .L57+0xc
	b	.L56
.L58:
	.align	2, 0
.L57:
	.word	gBattleTypeFlags
	.word	gPartnerTrainerId
	.word	0xc03
	.word	BattleIntroSlidePartner
.L48:
	ldr	r2, [r2]
	mov	r0, #0x2
	and	r0, r0, r2
	cmp	r0, #0
	beq	.L50	@cond_branch
	ldr	r0, .L59
	b	.L56
.L60:
	.align	2, 0
.L59:
	.word	BattleIntroSlideLink
.L50:
	ldr	r0, .L61
	and	r0, r0, r2
	cmp	r0, #0
	beq	.L52	@cond_branch
	ldr	r0, .L61+0x4
	b	.L56
.L62:
	.align	2, 0
.L61:
	.word	0x3f0100
	.word	BattleIntroSlide3
.L52:
	mov	r0, #0x80
	lsl	r0, r0, #0x5
	and	r2, r2, r0
	cmp	r2, #0
	beq	.L54	@cond_branch
	ldr	r0, .L63
	ldrb	r0, [r0]
	cmp	r0, #0x2
	beq	.L54	@cond_branch
	mov	r4, #0x3
	ldr	r0, .L63+0x4
	b	.L56
.L64:
	.align	2, 0
.L63:
	.word	gGameVersion
	.word	BattleIntroSlide2
.L54:
	ldr	r1, .L65
	lsl	r0, r4, #0x2
	add	r0, r0, r1
	ldr	r0, [r0]
.L56:
	mov	r1, #0x0
	bl	CreateTask
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	ldr	r0, .L65+0x4
	lsl	r1, r2, #0x2
	add	r1, r1, r2
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	mov	r0, #0x0
	strh	r0, [r1, #0x8]
	strh	r4, [r1, #0xa]
	strh	r0, [r1, #0xc]
	strh	r0, [r1, #0xe]
	strh	r0, [r1, #0x10]
	strh	r0, [r1, #0x12]
	strh	r0, [r1, #0x14]
	pop	{r4}
	pop	{r0}
	bx	r0
.L66:
	.align	2, 0
.L65:
	.word	sBattleIntroSlideFuncs
	.word	gTasks
.Lfe3:
	.size	 HandleIntroSlide,.Lfe3-HandleIntroSlide
	.align	2, 0
	.globl	sub_811828C
	.type	 sub_811828C,function
	.thumb_func
sub_811828C:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	DestroyTask
	ldr	r0, .L68
	mov	r1, #0x0
	strh	r1, [r0]
	ldr	r0, .L68+0x4
	strh	r1, [r0]
	ldr	r0, .L68+0x8
	strh	r1, [r0]
	ldr	r0, .L68+0xc
	strh	r1, [r0]
	mov	r0, #0x50
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x52
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x54
	mov	r1, #0x0
	bl	SetGpuReg
	ldr	r4, .L68+0x10
	mov	r0, #0x48
	add	r1, r4, #0
	bl	SetGpuReg
	mov	r0, #0x4a
	add	r1, r4, #0
	bl	SetGpuReg
	pop	{r4}
	pop	{r0}
	bx	r0
.L69:
	.align	2, 0
.L68:
	.word	gBattle_BG1_X
	.word	gBattle_BG1_Y
	.word	gBattle_BG2_X
	.word	gBattle_BG2_Y
	.word	0x3f3f
.Lfe4:
	.size	 sub_811828C,.Lfe4-sub_811828C
	.align	2, 0
	.type	 BattleIntroSlide1,function
	.thumb_func
BattleIntroSlide1:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	ldr	r1, .L105
	ldrh	r0, [r1]
	add	r0, r0, #0x6
	strh	r0, [r1]
	ldr	r1, .L105+0x4
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	mov	r2, #0x8
	ldrsh	r0, [r0, r2]
	mov	r8, r1
	cmp	r0, #0x4
	bls	.LCB525
	b	.L71	@long jump
.LCB525:
	lsl	r0, r0, #0x2
	ldr	r1, .L105+0x8
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L106:
	.align	2, 0
.L105:
	.word	gBattle_BG1_X
	.word	gTasks
	.word	.L100
	.align	2, 0
	.align	2, 0
.L100:
	.word	.L72
	.word	.L75
	.word	.L77
	.word	.L79
	.word	.L99
.L72:
	ldr	r0, .L107
	ldr	r0, [r0]
	mov	r1, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L73	@cond_branch
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r8
	mov	r1, #0x10
	b	.L103
.L108:
	.align	2, 0
.L107:
	.word	gBattleTypeFlags
.L73:
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r8
	mov	r1, #0x1
.L103:
	strh	r1, [r0, #0xc]
	ldrh	r1, [r0, #0x8]
	add	r1, r1, #0x1
	strh	r1, [r0, #0x8]
	b	.L71
.L75:
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	mov	r3, r8
	add	r1, r0, r3
	ldrh	r0, [r1, #0xc]
	sub	r0, r0, #0x1
	strh	r0, [r1, #0xc]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	beq	.LCB595
	b	.L71	@long jump
.LCB595:
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	mov	r0, #0x48
	mov	r1, #0x3f
	bl	SetGpuReg
	b	.L71
.L77:
	ldr	r1, .L109
	ldrh	r0, [r1]
	sub	r0, r0, #0xff
	strh	r0, [r1]
	mov	r1, #0xff
	lsl	r1, r1, #0x8
	and	r0, r0, r1
	mov	r1, #0xc0
	lsl	r1, r1, #0x6
	cmp	r0, r1
	beq	.LCB621
	b	.L71	@long jump
.LCB621:
	lsl	r1, r4, #0x2
	add	r1, r1, r4
	lsl	r1, r1, #0x3
	add	r1, r1, r8
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	mov	r0, #0xf0
	strh	r0, [r1, #0xc]
	mov	r0, #0x20
	strh	r0, [r1, #0xe]
	ldr	r2, .L109+0x4
	ldrh	r1, [r2]
	ldr	r0, .L109+0x8
	and	r0, r0, r1
	strh	r0, [r2]
	b	.L71
.L110:
	.align	2, 0
.L109:
	.word	gBattle_WIN0V
	.word	gIntroSlideFlags
	.word	0xfffe
.L79:
	lsl	r0, r4, #0x2
	add	r1, r0, r4
	lsl	r1, r1, #0x3
	mov	r5, r8
	add	r2, r1, r5
	ldrh	r3, [r2, #0xe]
	mov	r5, #0xe
	ldrsh	r1, [r2, r5]
	mov	ip, r0
	cmp	r1, #0
	beq	.L80	@cond_branch
	sub	r0, r3, #0x1
	strh	r0, [r2, #0xe]
	b	.L81
.L80:
	mov	r1, #0xa
	ldrsh	r0, [r2, r1]
	cmp	r0, #0x1
	bne	.L82	@cond_branch
	ldr	r2, .L111
	ldrh	r1, [r2]
	ldr	r0, .L111+0x4
	cmp	r1, r0
	beq	.L81	@cond_branch
	sub	r0, r1, #0x2
	b	.L104
.L112:
	.align	2, 0
.L111:
	.word	gBattle_BG1_Y
	.word	0xffb0
.L82:
	ldr	r2, .L113
	ldrh	r1, [r2]
	ldr	r0, .L113+0x4
	cmp	r1, r0
	beq	.L81	@cond_branch
	sub	r0, r1, #0x1
.L104:
	strh	r0, [r2]
.L81:
	ldr	r2, .L113+0x8
	ldrh	r1, [r2]
	mov	r0, #0xff
	lsl	r0, r0, #0x8
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L86	@cond_branch
	ldr	r3, .L113+0xc
	add	r0, r1, r3
	strh	r0, [r2]
.L86:
	mov	r5, ip
	add	r0, r5, r4
	lsl	r0, r0, #0x3
	mov	r2, r8
	add	r1, r0, r2
	ldrh	r2, [r1, #0xc]
	mov	r3, #0xc
	ldrsh	r0, [r1, r3]
	cmp	r0, #0
	beq	.L87	@cond_branch
	sub	r0, r2, #0x2
	strh	r0, [r1, #0xc]
.L87:
	mov	r3, #0x0
	ldr	r5, .L113+0x10
	mov	r9, r5
	ldr	r7, .L113+0x14
	mov	r6, r9
	add	r5, r1, #0
.L91:
	lsl	r2, r3, #0x1
	ldrb	r1, [r6, #0x14]
	lsl	r0, r1, #0x4
	sub	r0, r0, r1
	lsl	r0, r0, #0x7
	add	r2, r2, r0
	add	r2, r2, r7
	ldrh	r0, [r5, #0xc]
	strh	r0, [r2]
	add	r3, r3, #0x1
	cmp	r3, #0x4f
	ble	.L91	@cond_branch
	cmp	r3, #0x9f
	bgt	.L102	@cond_branch
	ldr	r7, .L113+0x14
	ldr	r6, .L113+0x10
	ldr	r1, .L113+0x18
	mov	r2, ip
	add	r0, r2, r4
	lsl	r0, r0, #0x3
	add	r5, r0, r1
.L96:
	lsl	r2, r3, #0x1
	ldrb	r1, [r6, #0x14]
	lsl	r0, r1, #0x4
	sub	r0, r0, r1
	lsl	r0, r0, #0x7
	add	r2, r2, r0
	add	r2, r2, r7
	ldrh	r0, [r5, #0xc]
	neg	r0, r0
	strh	r0, [r2]
	add	r3, r3, #0x1
	cmp	r3, #0x9f
	ble	.L96	@cond_branch
.L102:
	mov	r3, ip
	add	r0, r3, r4
	lsl	r0, r0, #0x3
	mov	r5, r8
	add	r1, r0, r5
	mov	r0, #0xc
	ldrsh	r2, [r1, r0]
	cmp	r2, #0
	bne	.L71	@cond_branch
	mov	r0, #0x3
	mov	r3, r9
	strb	r0, [r3, #0x15]
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	str	r2, [sp]
	ldr	r1, .L113+0x1c
	ldr	r2, .L113+0x20
	mov	r0, sp
	bl	CpuSet
	mov	r0, #0x1
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r0, #0x2
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r1, #0x9c
	lsl	r1, r1, #0x8
	mov	r0, #0xa
	bl	SetGpuReg
	mov	r1, #0xbc
	lsl	r1, r1, #0x7
	mov	r0, #0xc
	bl	SetGpuReg
	b	.L71
.L114:
	.align	2, 0
.L113:
	.word	gBattle_BG1_Y
	.word	0xffc8
	.word	gBattle_WIN0V
	.word	-0x3fc
	.word	gScanlineEffect
	.word	gScanlineEffectRegBuffers
	.word	gTasks
	.word	0x600e000
	.word	0x5000200
.L99:
	add	r0, r4, #0
	bl	sub_811828C
.L71:
	add	sp, sp, #0x4
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe5:
	.size	 BattleIntroSlide1,.Lfe5-BattleIntroSlide1
	.align	2, 0
	.type	 BattleIntroSlide2,function
	.thumb_func
BattleIntroSlide2:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	ldr	r1, .L162
	lsl	r0, r5, #0x2
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	mov	r2, #0xa
	ldrsh	r0, [r0, r2]
	add	r2, r1, #0
	cmp	r0, #0x3
	beq	.L119	@cond_branch
	cmp	r0, #0x3
	bgt	.L122	@cond_branch
	cmp	r0, #0x2
	beq	.L118	@cond_branch
	b	.L116
.L163:
	.align	2, 0
.L162:
	.word	gTasks
.L122:
	cmp	r0, #0x4
	bne	.L116	@cond_branch
.L118:
	ldr	r1, .L164
	ldrh	r0, [r1]
	add	r0, r0, #0x8
	b	.L159
.L165:
	.align	2, 0
.L164:
	.word	gBattle_BG1_X
.L119:
	ldr	r1, .L166
	ldrh	r0, [r1]
	add	r0, r0, #0x6
.L159:
	strh	r0, [r1]
.L116:
	lsl	r0, r5, #0x2
	add	r1, r0, r5
	lsl	r1, r1, #0x3
	add	r4, r1, r2
	mov	r3, #0xa
	ldrsh	r1, [r4, r3]
	add	r6, r0, #0
	cmp	r1, #0x4
	bne	.L123	@cond_branch
	ldr	r7, .L166+0x4
	ldrh	r0, [r4, #0x14]
	bl	Cos2
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0
	bge	.L124	@cond_branch
	ldr	r1, .L166+0x8
	add	r0, r0, r1
.L124:
	asr	r0, r0, #0x9
	sub	r0, r0, #0x8
	strh	r0, [r7]
	ldrh	r1, [r4, #0x14]
	mov	r2, #0x14
	ldrsh	r0, [r4, r2]
	cmp	r0, #0xb3
	bgt	.L125	@cond_branch
	add	r0, r1, #0x4
	b	.L160
.L167:
	.align	2, 0
.L166:
	.word	gBattle_BG1_X
	.word	gBattle_BG1_Y
	.word	0x1ff
.L125:
	add	r0, r1, #0x6
.L160:
	strh	r0, [r4, #0x14]
	ldr	r2, .L168
	add	r0, r6, r5
	lsl	r0, r0, #0x3
	add	r3, r0, r2
	mov	r0, #0x14
	ldrsh	r1, [r3, r0]
	mov	r0, #0xb4
	lsl	r0, r0, #0x1
	cmp	r1, r0
	bne	.L123	@cond_branch
	mov	r0, #0x0
	strh	r0, [r3, #0x14]
.L123:
	add	r0, r6, r5
	lsl	r0, r0, #0x3
	add	r0, r0, r2
	mov	r1, #0x8
	ldrsh	r0, [r0, r1]
	cmp	r0, #0x4
	bls	.LCB1003
	b	.L128	@long jump
.LCB1003:
	lsl	r0, r0, #0x2
	ldr	r1, .L168+0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L169:
	.align	2, 0
.L168:
	.word	gTasks
	.word	.L155
	.align	2, 0
	.align	2, 0
.L155:
	.word	.L129
	.word	.L132
	.word	.L134
	.word	.L136
	.word	.L154
.L129:
	ldr	r1, .L170
	add	r0, r6, r5
	lsl	r0, r0, #0x3
	add	r2, r0, r1
	mov	r3, #0x10
	strh	r3, [r2, #0x10]
	ldr	r0, .L170+0x4
	ldr	r0, [r0]
	mov	r1, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L130	@cond_branch
	strh	r3, [r2, #0xc]
	b	.L161
.L171:
	.align	2, 0
.L170:
	.word	gTasks
	.word	gBattleTypeFlags
.L130:
	mov	r0, #0x1
	strh	r0, [r2, #0xc]
.L161:
	ldrh	r0, [r2, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r2, #0x8]
	b	.L128
.L132:
	ldr	r0, .L172
	add	r1, r6, r5
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldrh	r0, [r1, #0xc]
	sub	r0, r0, #0x1
	strh	r0, [r1, #0xc]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	beq	.LCB1069
	b	.L128	@long jump
.LCB1069:
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	mov	r0, #0x48
	mov	r1, #0x3f
	bl	SetGpuReg
	b	.L128
.L173:
	.align	2, 0
.L172:
	.word	gTasks
.L134:
	ldr	r1, .L174
	ldrh	r0, [r1]
	sub	r0, r0, #0xff
	strh	r0, [r1]
	mov	r1, #0xff
	lsl	r1, r1, #0x8
	and	r0, r0, r1
	mov	r1, #0xc0
	lsl	r1, r1, #0x6
	cmp	r0, r1
	beq	.LCB1101
	b	.L128	@long jump
.LCB1101:
	ldr	r0, .L174+0x4
	add	r1, r6, r5
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	mov	r0, #0xf0
	strh	r0, [r1, #0xc]
	mov	r0, #0x20
	strh	r0, [r1, #0xe]
	mov	r0, #0x1
	strh	r0, [r1, #0x12]
	ldr	r2, .L174+0x8
	ldrh	r1, [r2]
	ldr	r0, .L174+0xc
	and	r0, r0, r1
	strh	r0, [r2]
	b	.L128
.L175:
	.align	2, 0
.L174:
	.word	gBattle_WIN0V
	.word	gTasks
	.word	gIntroSlideFlags
	.word	0xfffe
.L136:
	ldr	r0, .L176
	add	r1, r6, r5
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldrh	r2, [r1, #0xe]
	mov	r3, #0xe
	ldrsh	r0, [r1, r3]
	cmp	r0, #0
	beq	.L137	@cond_branch
	sub	r0, r2, #0x1
	strh	r0, [r1, #0xe]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L139	@cond_branch
	ldr	r1, .L176+0x4
	mov	r0, #0x50
	bl	SetGpuReg
	mov	r0, #0x52
	mov	r1, #0xf
	bl	SetGpuReg
	mov	r0, #0x54
	mov	r1, #0x0
	bl	SetGpuReg
	b	.L139
.L177:
	.align	2, 0
.L176:
	.word	gTasks
	.word	0x1842
.L137:
	ldrh	r2, [r1, #0x10]
	mov	r0, #0x1f
	and	r0, r0, r2
	cmp	r0, #0
	beq	.L139	@cond_branch
	ldrh	r0, [r1, #0x12]
	sub	r0, r0, #0x1
	strh	r0, [r1, #0x12]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L139	@cond_branch
	add	r0, r2, #0
	add	r0, r0, #0xff
	strh	r0, [r1, #0x10]
	mov	r0, #0x4
	strh	r0, [r1, #0x12]
.L139:
	ldr	r2, .L178
	ldrh	r1, [r2]
	mov	r0, #0xff
	lsl	r0, r0, #0x8
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L141	@cond_branch
	ldr	r3, .L178+0x4
	add	r0, r1, r3
	strh	r0, [r2]
.L141:
	ldr	r0, .L178+0x8
	add	r1, r6, r5
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldrh	r2, [r1, #0xc]
	mov	r3, #0xc
	ldrsh	r0, [r1, r3]
	cmp	r0, #0
	beq	.L142	@cond_branch
	sub	r0, r2, #0x2
	strh	r0, [r1, #0xc]
.L142:
	mov	r3, #0x0
	ldr	r0, .L178+0xc
	mov	r8, r0
	ldr	r2, .L178+0x10
	mov	ip, r2
	mov	r7, r8
	add	r4, r1, #0
.L146:
	lsl	r2, r3, #0x1
	ldrb	r1, [r7, #0x14]
	lsl	r0, r1, #0x4
	sub	r0, r0, r1
	lsl	r0, r0, #0x7
	add	r2, r2, r0
	add	r2, r2, ip
	ldrh	r0, [r4, #0xc]
	strh	r0, [r2]
	add	r3, r3, #0x1
	cmp	r3, #0x4f
	ble	.L146	@cond_branch
	cmp	r3, #0x9f
	bgt	.L158	@cond_branch
	ldr	r0, .L178+0x10
	mov	ip, r0
	ldr	r7, .L178+0xc
	ldr	r1, .L178+0x8
	add	r0, r6, r5
	lsl	r0, r0, #0x3
	add	r4, r0, r1
.L151:
	lsl	r2, r3, #0x1
	ldrb	r1, [r7, #0x14]
	lsl	r0, r1, #0x4
	sub	r0, r0, r1
	lsl	r0, r0, #0x7
	add	r2, r2, r0
	add	r2, r2, ip
	ldrh	r0, [r4, #0xc]
	neg	r0, r0
	strh	r0, [r2]
	add	r3, r3, #0x1
	cmp	r3, #0x9f
	ble	.L151	@cond_branch
.L158:
	ldr	r1, .L178+0x8
	add	r0, r6, r5
	lsl	r0, r0, #0x3
	add	r1, r0, r1
	mov	r3, #0xc
	ldrsh	r2, [r1, r3]
	cmp	r2, #0
	bne	.L128	@cond_branch
	mov	r0, #0x3
	mov	r3, r8
	strb	r0, [r3, #0x15]
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	str	r2, [sp]
	ldr	r1, .L178+0x14
	ldr	r2, .L178+0x18
	mov	r0, sp
	bl	CpuSet
	mov	r0, #0x1
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r0, #0x2
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r1, #0x9c
	lsl	r1, r1, #0x8
	mov	r0, #0xa
	bl	SetGpuReg
	mov	r1, #0xbc
	lsl	r1, r1, #0x7
	mov	r0, #0xc
	bl	SetGpuReg
	b	.L128
.L179:
	.align	2, 0
.L178:
	.word	gBattle_WIN0V
	.word	-0x3fc
	.word	gTasks
	.word	gScanlineEffect
	.word	gScanlineEffectRegBuffers
	.word	0x600e000
	.word	0x5000200
.L154:
	add	r0, r5, #0
	bl	sub_811828C
.L128:
	ldr	r0, .L180
	add	r1, r6, r5
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	mov	r2, #0x8
	ldrsh	r0, [r1, r2]
	cmp	r0, #0x4
	beq	.L157	@cond_branch
	ldrh	r1, [r1, #0x10]
	mov	r0, #0x52
	bl	SetGpuReg
.L157:
	add	sp, sp, #0x4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L181:
	.align	2, 0
.L180:
	.word	gTasks
.Lfe6:
	.size	 BattleIntroSlide2,.Lfe6-BattleIntroSlide2
	.align	2, 0
	.type	 BattleIntroSlide3,function
	.thumb_func
BattleIntroSlide3:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	ldr	r1, .L214
	ldrh	r0, [r1]
	add	r0, r0, #0x8
	strh	r0, [r1]
	ldr	r1, .L214+0x4
	lsl	r0, r5, #0x2
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	mov	r2, #0x8
	ldrsh	r0, [r0, r2]
	add	r4, r1, #0
	cmp	r0, #0x4
	bls	.LCB1398
	b	.L183	@long jump
.LCB1398:
	lsl	r0, r0, #0x2
	ldr	r1, .L214+0x8
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L215:
	.align	2, 0
.L214:
	.word	gBattle_BG1_X
	.word	gTasks
	.word	.L209
	.align	2, 0
	.align	2, 0
.L209:
	.word	.L184
	.word	.L187
	.word	.L189
	.word	.L191
	.word	.L208
.L184:
	ldr	r1, .L216
	mov	r0, #0x50
	bl	SetGpuReg
	ldr	r4, .L216+0x4
	mov	r0, #0x52
	add	r1, r4, #0
	bl	SetGpuReg
	mov	r0, #0x54
	mov	r1, #0x0
	bl	SetGpuReg
	ldr	r1, .L216+0x8
	lsl	r0, r5, #0x2
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	add	r2, r0, r1
	strh	r4, [r2, #0x10]
	ldr	r0, .L216+0xc
	ldr	r0, [r0]
	ldr	r1, .L216+0x10
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L185	@cond_branch
	mov	r0, #0x10
	b	.L213
.L217:
	.align	2, 0
.L216:
	.word	0x1842
	.word	0x808
	.word	gTasks
	.word	gBattleTypeFlags
	.word	0x2000002
.L185:
	mov	r0, #0x1
.L213:
	strh	r0, [r2, #0xc]
	ldrh	r0, [r2, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r2, #0x8]
	b	.L183
.L187:
	ldr	r0, .L218
	lsl	r1, r5, #0x2
	add	r1, r1, r5
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldrh	r0, [r1, #0xc]
	sub	r0, r0, #0x1
	strh	r0, [r1, #0xc]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	beq	.LCB1478
	b	.L183	@long jump
.LCB1478:
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	mov	r0, #0x48
	mov	r1, #0x3f
	bl	SetGpuReg
	b	.L183
.L219:
	.align	2, 0
.L218:
	.word	gTasks
.L189:
	ldr	r1, .L220
	ldrh	r0, [r1]
	sub	r0, r0, #0xff
	strh	r0, [r1]
	mov	r1, #0xff
	lsl	r1, r1, #0x8
	and	r0, r0, r1
	mov	r1, #0xc0
	lsl	r1, r1, #0x6
	cmp	r0, r1
	beq	.LCB1510
	b	.L183	@long jump
.LCB1510:
	ldr	r0, .L220+0x4
	lsl	r1, r5, #0x2
	add	r1, r1, r5
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	mov	r0, #0xf0
	strh	r0, [r1, #0xc]
	mov	r0, #0x20
	strh	r0, [r1, #0xe]
	mov	r0, #0x1
	strh	r0, [r1, #0x12]
	ldr	r2, .L220+0x8
	ldrh	r1, [r2]
	ldr	r0, .L220+0xc
	and	r0, r0, r1
	strh	r0, [r2]
	b	.L183
.L221:
	.align	2, 0
.L220:
	.word	gBattle_WIN0V
	.word	gTasks
	.word	gIntroSlideFlags
	.word	0xfffe
.L191:
	lsl	r0, r5, #0x2
	add	r1, r0, r5
	lsl	r1, r1, #0x3
	add	r2, r1, r4
	ldrh	r3, [r2, #0xe]
	mov	r6, #0xe
	ldrsh	r1, [r2, r6]
	mov	ip, r0
	cmp	r1, #0
	beq	.L192	@cond_branch
	sub	r0, r3, #0x1
	strh	r0, [r2, #0xe]
	b	.L193
.L192:
	ldrh	r1, [r2, #0x10]
	mov	r0, #0xf
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L193	@cond_branch
	ldrh	r0, [r2, #0x12]
	sub	r0, r0, #0x1
	strh	r0, [r2, #0x12]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L193	@cond_branch
	add	r0, r1, #0
	add	r0, r0, #0xff
	strh	r0, [r2, #0x10]
	mov	r0, #0x6
	strh	r0, [r2, #0x12]
.L193:
	ldr	r2, .L222
	ldrh	r1, [r2]
	mov	r0, #0xff
	lsl	r0, r0, #0x8
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L195	@cond_branch
	ldr	r3, .L222+0x4
	add	r0, r1, r3
	strh	r0, [r2]
.L195:
	mov	r6, ip
	add	r0, r6, r5
	lsl	r0, r0, #0x3
	add	r1, r0, r4
	ldrh	r2, [r1, #0xc]
	mov	r3, #0xc
	ldrsh	r0, [r1, r3]
	cmp	r0, #0
	beq	.L196	@cond_branch
	sub	r0, r2, #0x2
	strh	r0, [r1, #0xc]
.L196:
	mov	r3, #0x0
	ldr	r6, .L222+0x8
	mov	r8, r6
	ldr	r7, .L222+0xc
	add	r4, r1, #0
.L200:
	lsl	r2, r3, #0x1
	ldrb	r1, [r6, #0x14]
	lsl	r0, r1, #0x4
	sub	r0, r0, r1
	lsl	r0, r0, #0x7
	add	r2, r2, r0
	add	r2, r2, r7
	ldrh	r0, [r4, #0xc]
	strh	r0, [r2]
	add	r3, r3, #0x1
	cmp	r3, #0x4f
	ble	.L200	@cond_branch
	cmp	r3, #0x9f
	bgt	.L212	@cond_branch
	ldr	r7, .L222+0xc
	ldr	r6, .L222+0x8
	ldr	r1, .L222+0x10
	mov	r2, ip
	add	r0, r2, r5
	lsl	r0, r0, #0x3
	add	r4, r0, r1
.L205:
	lsl	r2, r3, #0x1
	ldrb	r1, [r6, #0x14]
	lsl	r0, r1, #0x4
	sub	r0, r0, r1
	lsl	r0, r0, #0x7
	add	r2, r2, r0
	add	r2, r2, r7
	ldrh	r0, [r4, #0xc]
	neg	r0, r0
	strh	r0, [r2]
	add	r3, r3, #0x1
	cmp	r3, #0x9f
	ble	.L205	@cond_branch
.L212:
	ldr	r1, .L222+0x10
	lsl	r0, r5, #0x2
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	add	r1, r0, r1
	mov	r3, #0xc
	ldrsh	r2, [r1, r3]
	cmp	r2, #0
	bne	.L183	@cond_branch
	mov	r0, #0x3
	mov	r6, r8
	strb	r0, [r6, #0x15]
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	str	r2, [sp]
	ldr	r1, .L222+0x14
	ldr	r2, .L222+0x18
	mov	r0, sp
	bl	CpuSet
	mov	r0, #0x1
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r0, #0x2
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r1, #0x9c
	lsl	r1, r1, #0x8
	mov	r0, #0xa
	bl	SetGpuReg
	mov	r1, #0xbc
	lsl	r1, r1, #0x7
	mov	r0, #0xc
	bl	SetGpuReg
	b	.L183
.L223:
	.align	2, 0
.L222:
	.word	gBattle_WIN0V
	.word	-0x3fc
	.word	gScanlineEffect
	.word	gScanlineEffectRegBuffers
	.word	gTasks
	.word	0x600e000
	.word	0x5000200
.L208:
	add	r0, r5, #0
	bl	sub_811828C
.L183:
	ldr	r0, .L224
	lsl	r1, r5, #0x2
	add	r1, r1, r5
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	mov	r2, #0x8
	ldrsh	r0, [r1, r2]
	cmp	r0, #0x4
	beq	.L211	@cond_branch
	ldrh	r1, [r1, #0x10]
	mov	r0, #0x52
	bl	SetGpuReg
.L211:
	add	sp, sp, #0x4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L225:
	.align	2, 0
.L224:
	.word	gTasks
.Lfe7:
	.size	 BattleIntroSlide3,.Lfe7-BattleIntroSlide3
	.align	2, 0
	.type	 BattleIntroSlideLink,function
	.thumb_func
BattleIntroSlideLink:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	sp, sp, #-0x8
	lsl	r0, r0, #0x18
	lsr	r6, r0, #0x18
	ldr	r1, .L255
	lsl	r0, r6, #0x2
	add	r0, r0, r6
	lsl	r0, r0, #0x3
	add	r7, r0, r1
	mov	r1, #0x8
	ldrsh	r0, [r7, r1]
	cmp	r0, #0x1
	ble	.L227	@cond_branch
	mov	r2, #0x10
	ldrsh	r0, [r7, r2]
	cmp	r0, #0
	bne	.L227	@cond_branch
	ldr	r2, .L255+0x4
	ldrh	r1, [r2]
	mov	r0, #0x80
	lsl	r0, r0, #0x8
	and	r0, r0, r1
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
	cmp	r5, #0
	bne	.L229	@cond_branch
	cmp	r1, #0x4f
	bhi	.L228	@cond_branch
.L229:
	add	r0, r1, #0x3
	strh	r0, [r2]
	ldr	r1, .L255+0x8
	ldrh	r0, [r1]
	sub	r0, r0, #0x3
	strh	r0, [r1]
	b	.L227
.L256:
	.align	2, 0
.L255:
	.word	gTasks
	.word	gBattle_BG1_X
	.word	gBattle_BG2_X
.L228:
	str	r5, [sp]
	ldr	r1, .L257
	ldr	r4, .L257+0x4
	mov	r0, sp
	add	r2, r4, #0
	bl	CpuSet
	str	r5, [sp, #0x4]
	add	r0, sp, #0x4
	ldr	r1, .L257+0x8
	add	r2, r4, #0
	bl	CpuSet
	mov	r0, #0x1
	strh	r0, [r7, #0x10]
.L227:
	ldr	r0, .L257+0xc
	lsl	r2, r6, #0x2
	add	r1, r2, r6
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	mov	r3, #0x8
	ldrsh	r1, [r1, r3]
	mov	r9, r0
	add	r5, r2, #0
	cmp	r1, #0x4
	bls	.LCB1854
	b	.L231	@long jump
.LCB1854:
	lsl	r0, r1, #0x2
	ldr	r1, .L257+0x10
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L258:
	.align	2, 0
.L257:
	.word	0x600e000
	.word	0x5000200
	.word	0x600f000
	.word	gTasks
	.word	.L252
	.align	2, 0
	.align	2, 0
.L252:
	.word	.L232
	.word	.L233
	.word	.L235
	.word	.L237
	.word	.L251
.L232:
	add	r0, r5, r6
	lsl	r0, r0, #0x3
	add	r0, r0, r9
	mov	r1, #0x20
	strh	r1, [r0, #0xc]
	ldrh	r1, [r0, #0x8]
	add	r1, r1, #0x1
	strh	r1, [r0, #0x8]
	b	.L231
.L233:
	add	r0, r5, r6
	lsl	r0, r0, #0x3
	mov	r2, r9
	add	r1, r0, r2
	ldrh	r0, [r1, #0xc]
	sub	r0, r0, #0x1
	strh	r0, [r1, #0xc]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	beq	.LCB1902
	b	.L231	@long jump
.LCB1902:
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	ldr	r4, .L259
	ldr	r5, .L259+0x4
	ldr	r0, [r5]
	add	r0, r0, #0x7c
	ldrb	r0, [r0]
	lsl	r1, r0, #0x4
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	add	r1, r1, r4
	ldrb	r3, [r1, #0x1]
	mov	r2, #0xd
	neg	r2, r2
	add	r0, r2, #0
	and	r0, r0, r3
	mov	r3, #0x8
	mov	r9, r3
	mov	r3, r9
	orr	r0, r0, r3
	strb	r0, [r1, #0x1]
	ldr	r3, [r5]
	add	r0, r3, #0
	add	r0, r0, #0x7c
	ldrb	r1, [r0]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	mov	r1, #0x1c
	add	r1, r1, r4
	mov	r8, r1
	add	r0, r0, r8
	ldr	r6, .L259+0x8
	str	r6, [r0]
	add	r3, r3, #0x7d
	ldrb	r1, [r3]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r4
	ldrb	r1, [r0, #0x1]
	and	r2, r2, r1
	mov	r3, r9
	orr	r2, r2, r3
	strb	r2, [r0, #0x1]
	ldr	r0, [r5]
	add	r0, r0, #0x7d
	ldrb	r1, [r0]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r8
	str	r6, [r0]
	mov	r0, #0x48
	mov	r1, #0x3f
	bl	SetGpuReg
	ldr	r1, .L259+0xc
	mov	r0, #0x4a
	bl	SetGpuReg
	b	.L231
.L260:
	.align	2, 0
.L259:
	.word	gSprites
	.word	gBattleStruct
	.word	sub_8038B74
	.word	0x3f06
.L235:
	ldr	r1, .L261
	ldrh	r0, [r1]
	sub	r0, r0, #0xff
	strh	r0, [r1]
	mov	r1, #0xff
	lsl	r1, r1, #0x8
	and	r0, r0, r1
	mov	r1, #0xc0
	lsl	r1, r1, #0x6
	cmp	r0, r1
	beq	.LCB1994
	b	.L231	@long jump
.LCB1994:
	add	r1, r5, r6
	lsl	r1, r1, #0x3
	add	r1, r1, r9
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	mov	r0, #0xf0
	strh	r0, [r1, #0xc]
	mov	r0, #0x20
	strh	r0, [r1, #0xe]
	ldr	r2, .L261+0x4
	ldrh	r1, [r2]
	ldr	r0, .L261+0x8
	and	r0, r0, r1
	strh	r0, [r2]
	b	.L231
.L262:
	.align	2, 0
.L261:
	.word	gBattle_WIN0V
	.word	gIntroSlideFlags
	.word	0xfffe
.L237:
	ldr	r2, .L263
	ldrh	r1, [r2]
	mov	r0, #0xff
	lsl	r0, r0, #0x8
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L238	@cond_branch
	ldr	r3, .L263+0x4
	add	r0, r1, r3
	strh	r0, [r2]
.L238:
	add	r0, r5, r6
	lsl	r0, r0, #0x3
	mov	r2, r9
	add	r1, r0, r2
	ldrh	r2, [r1, #0xc]
	mov	r3, #0xc
	ldrsh	r0, [r1, r3]
	cmp	r0, #0
	beq	.L239	@cond_branch
	sub	r0, r2, #0x2
	strh	r0, [r1, #0xc]
.L239:
	mov	r3, #0x0
	ldr	r0, .L263+0x8
	mov	ip, r0
	ldr	r2, .L263+0xc
	mov	r8, r2
	mov	r7, ip
	add	r4, r1, #0
.L243:
	lsl	r2, r3, #0x1
	ldrb	r1, [r7, #0x14]
	lsl	r0, r1, #0x4
	sub	r0, r0, r1
	lsl	r0, r0, #0x7
	add	r2, r2, r0
	add	r2, r2, r8
	ldrh	r0, [r4, #0xc]
	strh	r0, [r2]
	add	r3, r3, #0x1
	cmp	r3, #0x4f
	ble	.L243	@cond_branch
	cmp	r3, #0x9f
	bgt	.L254	@cond_branch
	ldr	r0, .L263+0xc
	mov	r8, r0
	ldr	r7, .L263+0x8
	ldr	r1, .L263+0x10
	add	r0, r5, r6
	lsl	r0, r0, #0x3
	add	r4, r0, r1
.L248:
	lsl	r2, r3, #0x1
	ldrb	r1, [r7, #0x14]
	lsl	r0, r1, #0x4
	sub	r0, r0, r1
	lsl	r0, r0, #0x7
	add	r2, r2, r0
	add	r2, r2, r8
	ldrh	r0, [r4, #0xc]
	neg	r0, r0
	strh	r0, [r2]
	add	r3, r3, #0x1
	cmp	r3, #0x9f
	ble	.L248	@cond_branch
.L254:
	add	r0, r5, r6
	lsl	r0, r0, #0x3
	mov	r2, r9
	add	r1, r0, r2
	mov	r3, #0xc
	ldrsh	r0, [r1, r3]
	cmp	r0, #0
	bne	.L231	@cond_branch
	mov	r0, #0x3
	mov	r2, ip
	strb	r0, [r2, #0x15]
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	mov	r0, #0x1
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r0, #0x2
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r1, #0x9c
	lsl	r1, r1, #0x8
	mov	r0, #0xa
	bl	SetGpuReg
	mov	r1, #0xbc
	lsl	r1, r1, #0x7
	mov	r0, #0xc
	bl	SetGpuReg
	b	.L231
.L264:
	.align	2, 0
.L263:
	.word	gBattle_WIN0V
	.word	-0x3fc
	.word	gScanlineEffect
	.word	gScanlineEffectRegBuffers
	.word	gTasks
.L251:
	add	r0, r6, #0
	bl	sub_811828C
.L231:
	add	sp, sp, #0x8
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe8:
	.size	 BattleIntroSlideLink,.Lfe8-BattleIntroSlideLink
	.align	2, 0
	.type	 BattleIntroSlidePartner,function
	.thumb_func
BattleIntroSlidePartner:
	push	{r4, r5, r6, lr}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	ldr	r1, .L284
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	mov	r2, #0x8
	ldrsh	r0, [r0, r2]
	add	r6, r1, #0
	cmp	r0, #0x5
	bls	.LCB2191
	b	.L266	@long jump
.LCB2191:
	lsl	r0, r0, #0x2
	ldr	r1, .L284+0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L285:
	.align	2, 0
.L284:
	.word	gTasks
	.word	.L281
	.align	2, 0
	.align	2, 0
.L281:
	.word	.L267
	.word	.L268
	.word	.L270
	.word	.L273
	.word	.L277
	.word	.L280
.L267:
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r6
	mov	r1, #0x1
	strh	r1, [r0, #0xc]
	b	.L283
.L268:
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r1, r0, r6
	ldrh	r0, [r1, #0xc]
	sub	r0, r0, #0x1
	strh	r0, [r1, #0xc]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	beq	.LCB2232
	b	.L266	@long jump
.LCB2232:
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	ldr	r1, .L286
	mov	r0, #0xa
	bl	SetGpuReg
	ldr	r1, .L286+0x4
	mov	r0, #0xc
	bl	SetGpuReg
	mov	r0, #0x0
	bl	GetGpuReg
	add	r1, r0, #0
	ldr	r2, .L286+0x8
	add	r0, r2, #0
	orr	r1, r1, r0
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	mov	r0, #0x0
	bl	SetGpuReg
	mov	r1, #0xf8
	lsl	r1, r1, #0x6
	mov	r0, #0x48
	bl	SetGpuReg
	ldr	r1, .L286+0xc
	mov	r0, #0x4a
	bl	SetGpuReg
	ldr	r1, .L286+0x10
	ldr	r2, .L286+0x14
	add	r0, r2, #0
	strh	r0, [r1]
	ldr	r1, .L286+0x18
	mov	r0, #0xf0
	strh	r0, [r1]
	ldr	r1, .L286+0x1c
	sub	r2, r2, #0xc0
	add	r0, r2, #0
	strh	r0, [r1]
	b	.L266
.L287:
	.align	2, 0
.L286:
	.word	0x5c0a
	.word	0x5e0a
	.word	0xf040
	.word	0x3f3f
	.word	gBattle_BG0_Y
	.word	0xffd0
	.word	gBattle_BG1_X
	.word	gBattle_BG2_X
.L270:
	ldr	r2, .L288
	ldrh	r3, [r2]
	mov	r1, #0x80
	lsl	r1, r1, #0x1
	add	r0, r1, #0
	add	r1, r3, r0
	strh	r1, [r2]
	mov	r5, #0xff
	lsl	r5, r5, #0x8
	and	r1, r1, r5
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	cmp	r1, r0
	beq	.L271	@cond_branch
	add	r0, r3, #0
	add	r0, r0, #0xff
	strh	r0, [r2]
.L271:
	ldrh	r0, [r2]
	add	r1, r5, #0
	and	r1, r1, r0
	mov	r0, #0x80
	lsl	r0, r0, #0x6
	cmp	r1, r0
	beq	.LCB2323
	b	.L266	@long jump
.LCB2323:
	lsl	r1, r4, #0x2
	add	r1, r1, r4
	lsl	r1, r1, #0x3
	add	r1, r1, r6
	ldrh	r0, [r1, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r1, #0x8]
	mov	r0, #0xf0
	strh	r0, [r1, #0xc]
	ldr	r2, .L288+0x4
	ldrh	r1, [r2]
	ldr	r0, .L288+0x8
	and	r0, r0, r1
	strh	r0, [r2]
	b	.L266
.L289:
	.align	2, 0
.L288:
	.word	gBattle_WIN0V
	.word	gIntroSlideFlags
	.word	0xfffe
.L273:
	ldr	r3, .L290
	ldrh	r2, [r3]
	mov	r0, #0xff
	lsl	r0, r0, #0x8
	and	r0, r0, r2
	mov	r1, #0x98
	lsl	r1, r1, #0x7
	cmp	r0, r1
	beq	.L274	@cond_branch
	mov	r1, #0xff
	lsl	r1, r1, #0x2
	add	r0, r2, r1
	strh	r0, [r3]
.L274:
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r3, r0, r6
	ldrh	r1, [r3, #0xc]
	mov	r2, #0xc
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.L275	@cond_branch
	sub	r0, r1, #0x2
	strh	r0, [r3, #0xc]
.L275:
	ldr	r1, .L290+0x4
	ldrh	r0, [r3, #0xc]
	strh	r0, [r1]
	ldr	r2, .L290+0x8
	neg	r1, r0
	strh	r1, [r2]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L266	@cond_branch
	ldrh	r0, [r3, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r3, #0x8]
	b	.L266
.L291:
	.align	2, 0
.L290:
	.word	gBattle_WIN0V
	.word	gBattle_BG1_X
	.word	gBattle_BG2_X
.L277:
	ldr	r1, .L292
	ldrh	r0, [r1]
	add	r3, r0, #0x2
	strh	r3, [r1]
	ldr	r1, .L292+0x4
	ldrh	r0, [r1]
	add	r0, r0, #0x2
	strh	r0, [r1]
	ldr	r5, .L292+0x8
	ldrh	r2, [r5]
	mov	r0, #0xff
	lsl	r0, r0, #0x8
	and	r0, r0, r2
	mov	r1, #0xa0
	lsl	r1, r1, #0x7
	cmp	r0, r1
	beq	.L278	@cond_branch
	add	r0, r2, #0
	add	r0, r0, #0xff
	strh	r0, [r5]
.L278:
	lsl	r0, r3, #0x10
	lsr	r0, r0, #0x10
	cmp	r0, #0
	bne	.L266	@cond_branch
	str	r0, [sp]
	ldr	r1, .L292+0xc
	ldr	r2, .L292+0x10
	mov	r0, sp
	bl	CpuSet
	mov	r0, #0x0
	bl	GetGpuReg
	ldr	r1, .L292+0x14
	and	r1, r1, r0
	mov	r0, #0x0
	bl	SetGpuReg
	mov	r0, #0x1
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r0, #0x2
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SetBgAttribute
	mov	r1, #0x9c
	lsl	r1, r1, #0x8
	mov	r0, #0xa
	bl	SetGpuReg
	mov	r1, #0xbc
	lsl	r1, r1, #0x7
	mov	r0, #0xc
	bl	SetGpuReg
	ldr	r1, .L292+0x18
	mov	r0, #0x3
	strb	r0, [r1, #0x15]
	ldr	r1, .L292+0x1c
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r1
.L283:
	ldrh	r1, [r0, #0x8]
	add	r1, r1, #0x1
	strh	r1, [r0, #0x8]
	b	.L266
.L293:
	.align	2, 0
.L292:
	.word	gBattle_BG0_Y
	.word	gBattle_BG2_Y
	.word	gBattle_WIN0V
	.word	0x600e000
	.word	0x5000800
	.word	0xbfff
	.word	gScanlineEffect
	.word	gTasks
.L280:
	add	r0, r4, #0
	bl	sub_811828C
.L266:
	add	sp, sp, #0x4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lfe9:
	.size	 BattleIntroSlidePartner,.Lfe9-BattleIntroSlidePartner
	.align	2, 0
	.globl	sub_8118FBC
	.type	 sub_8118FBC,function
	.thumb_func
sub_8118FBC:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x4
	str	r0, [sp]
	add	r6, r2, #0
	add	r4, r3, #0
	ldr	r0, [sp, #0x24]
	ldr	r7, [sp, #0x28]
	ldr	r2, [sp, #0x2c]
	mov	r9, r2
	ldr	r5, [sp, #0x30]
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	mov	r8, r1
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	sl, r0
	lsl	r5, r5, #0x10
	lsr	r5, r5, #0x10
	add	r0, r4, #0
	bl	GetBattlerAtPosition
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r1, .L305
	ldr	r2, [r1]
	lsl	r4, r4, #0x2
	add	r2, r2, #0x4
	add	r2, r2, r4
	ldr	r1, .L305+0x4
	add	r0, r0, r1
	ldrb	r1, [r0]
	lsl	r1, r1, #0xb
	ldr	r0, [r2]
	add	r0, r0, r1
	mov	r2, #0x80
	lsl	r2, r2, #0x3
	add	r1, r7, #0
	bl	CpuSet
	ldr	r1, [sp]
	lsl	r0, r1, #0x18
	lsr	r0, r0, #0x18
	mov	r2, #0x80
	lsl	r2, r2, #0x5
	add	r1, r7, #0
	add	r3, r5, #0
	bl	LoadBgTiles
	add	r0, r6, #0
	add	r0, r0, #0x8
	cmp	r6, r0
	bge	.L296	@cond_branch
	mov	ip, r0
	mov	r2, r8
	lsl	r7, r2, #0x1
.L298:
	mov	r1, r8
	add	r2, r1, #0
	add	r2, r2, #0x8
	add	r4, r6, #0x1
	cmp	r1, r2
	bge	.L297	@cond_branch
	mov	r0, sl
	lsl	r3, r0, #0xc
	lsl	r0, r6, #0x6
	add	r0, r0, r9
	add	r6, r7, r0
	sub	r1, r2, r1
.L302:
	add	r0, r5, #0
	orr	r0, r0, r3
	strh	r0, [r6]
	add	r5, r5, #0x1
	add	r6, r6, #0x2
	sub	r1, r1, #0x1
	cmp	r1, #0
	bne	.L302	@cond_branch
.L297:
	add	r6, r4, #0
	cmp	r6, ip
	blt	.L298	@cond_branch
.L296:
	ldr	r1, [sp]
	lsl	r0, r1, #0x18
	lsr	r0, r0, #0x18
	mov	r2, #0x80
	lsl	r2, r2, #0x4
	mov	r1, r9
	mov	r3, #0x0
	bl	LoadBgTilemap
	add	sp, sp, #0x4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L306:
	.align	2, 0
.L305:
	.word	gMonSpritesGfxPtr
	.word	gBattleMonForms
.Lfe10:
	.size	 sub_8118FBC,.Lfe10-sub_8118FBC
	.align	2, 0
	.globl	unref_sub_8119094
	.type	 unref_sub_8119094,function
	.thumb_func
unref_sub_8119094:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x4
	ldr	r4, [sp, #0x24]
	ldr	r5, [sp, #0x28]
	mov	r8, r5
	ldr	r5, [sp, #0x2c]
	ldr	r6, [sp, #0x30]
	mov	r9, r6
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	ip, r0
	lsl	r1, r1, #0x18
	lsl	r2, r2, #0x18
	lsl	r3, r3, #0x18
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	mov	sl, r4
	mov	r7, r8
	lsl	r7, r7, #0x10
	lsr	r6, r7, #0x10
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	mov	r0, r9
	lsl	r0, r0, #0x18
	mov	r9, r0
	ldr	r4, .L318
	ldr	r0, .L318+0x4
	ldr	r0, [r0]
	lsr	r2, r2, #0x16
	add	r0, r0, #0x4
	add	r0, r0, r2
	lsr	r3, r3, #0xd
	ldr	r0, [r0]
	add	r0, r0, r3
	str	r0, [r4]
	mov	r0, #0xc0
	lsl	r0, r0, #0x13
	add	r6, r6, r0
	str	r6, [r4, #0x4]
	ldr	r0, .L318+0x8
	str	r0, [r4, #0x8]
	ldr	r0, [r4, #0x8]
	add	r2, r7, #0
	lsr	r2, r2, #0x15
	mov	r6, r9
	lsr	r6, r6, #0xf
	sub	r4, r2, r6
	lsr	r0, r1, #0x18
	add	r1, r0, #0
	add	r1, r1, #0x8
	cmp	r0, r1
	bge	.L309	@cond_branch
	mov	r9, r1
	mov	r7, ip
	lsl	r7, r7, #0x1
	mov	r8, r7
	lsl	r5, r5, #0xb
	str	r5, [sp]
.L311:
	mov	r2, ip
	add	r3, r2, #0
	add	r3, r3, #0x8
	add	r5, r0, #0x1
	cmp	r2, r3
	bge	.L310	@cond_branch
	mov	r1, sl
	lsl	r6, r1, #0xc
	lsl	r0, r0, #0x6
	mov	r7, #0xc0
	lsl	r7, r7, #0x13
	add	r0, r0, r7
	ldr	r1, [sp]
	add	r0, r1, r0
	mov	r7, r8
	add	r1, r7, r0
	sub	r2, r3, r2
.L315:
	add	r0, r4, #0
	orr	r0, r0, r6
	strh	r0, [r1]
	add	r4, r4, #0x1
	add	r1, r1, #0x2
	sub	r2, r2, #0x1
	cmp	r2, #0
	bne	.L315	@cond_branch
.L310:
	add	r0, r5, #0
	cmp	r0, r9
	blt	.L311	@cond_branch
.L309:
	add	sp, sp, #0x4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L319:
	.align	2, 0
.L318:
	.word	0x40000d4
	.word	gMonSpritesGfxPtr
	.word	-0x7ffffc00
.Lfe11:
	.size	 unref_sub_8119094,.Lfe11-unref_sub_8119094
.text
	.align	2, 0
