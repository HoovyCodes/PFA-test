@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section ewram_data,"aw"
	.align	2, 0
	.type	 sMysteryEventScriptContext,object
	.size	 sMysteryEventScriptContext,116
sMysteryEventScriptContext:
	.byte	0x0
	.space	115
.text
	.align	2, 0
	.type	 CheckCompatibility,function
	.thumb_func
CheckCompatibility:
	push	{r4, lr}
	add	r4, r3, #0
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	mov	r3, #0x1
	and	r0, r0, r3
	cmp	r0, #0
	beq	.L6	@cond_branch
	and	r1, r1, r3
	cmp	r1, #0
	beq	.L6	@cond_branch
	mov	r0, #0x4
	and	r2, r2, r0
	cmp	r2, #0
	beq	.L6	@cond_branch
	mov	r0, #0x80
	lsl	r0, r0, #0x2
	and	r0, r0, r4
	cmp	r0, #0
	beq	.L6	@cond_branch
	mov	r0, #0x1
	b	.L7
.L6:
	mov	r0, #0x0
.L7:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe1:
	.size	 CheckCompatibility,.Lfe1-CheckCompatibility
	.align	2, 0
	.type	 SetIncompatible,function
	.thumb_func
SetIncompatible:
	push	{lr}
	ldr	r0, .L9
	ldr	r1, .L9+0x4
	bl	StringExpandPlaceholders
	mov	r0, #0x3
	bl	SetMysteryEventScriptStatus
	pop	{r0}
	bx	r0
.L10:
	.align	2, 0
.L9:
	.word	gStringVar4
	.word	gText_MysteryGiftCantBeUsed
.Lfe2:
	.size	 SetIncompatible,.Lfe2-SetIncompatible
	.align	2, 0
	.type	 InitMysteryEventScript,function
	.thumb_func
InitMysteryEventScript:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	ldr	r1, .L12
	ldr	r2, .L12+0x4
	bl	InitScriptContext
	add	r0, r4, #0
	add	r1, r5, #0
	bl	SetupBytecodeScript
	str	r5, [r4, #0x64]
	mov	r0, #0x0
	str	r0, [r4, #0x68]
	str	r0, [r4, #0x6c]
	str	r0, [r4, #0x70]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L13:
	.align	2, 0
.L12:
	.word	gMysteryEventScriptCmdTable
	.word	gMysteryEventScriptCmdTableEnd
.Lfe3:
	.size	 InitMysteryEventScript,.Lfe3-InitMysteryEventScript
	.align	2, 0
	.type	 RunMysteryEventScriptCommand,function
	.thumb_func
RunMysteryEventScriptCommand:
	push	{r4, lr}
	add	r4, r0, #0
	bl	RunScriptCommand
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L15	@cond_branch
	ldr	r0, [r4, #0x70]
	cmp	r0, #0
	beq	.L15	@cond_branch
	mov	r0, #0x1
	b	.L17
.L15:
	mov	r0, #0x0
.L17:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe4:
	.size	 RunMysteryEventScriptCommand,.Lfe4-RunMysteryEventScriptCommand
	.align	2, 0
	.globl	sub_8153870
	.type	 sub_8153870,function
	.thumb_func
sub_8153870:
	push	{lr}
	add	r1, r0, #0
	ldr	r0, .L19
	bl	InitMysteryEventScript
	pop	{r0}
	bx	r0
.L20:
	.align	2, 0
.L19:
	.word	sMysteryEventScriptContext
.Lfe5:
	.size	 sub_8153870,.Lfe5-sub_8153870
	.align	2, 0
	.globl	sub_8153884
	.type	 sub_8153884,function
	.thumb_func
sub_8153884:
	push	{r4, r5, lr}
	add	r5, r0, #0
	ldr	r4, .L22
	add	r0, r4, #0
	bl	RunMysteryEventScriptCommand
	ldr	r1, [r4, #0x6c]
	str	r1, [r5]
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L23:
	.align	2, 0
.L22:
	.word	sMysteryEventScriptContext
.Lfe6:
	.size	 sub_8153884,.Lfe6-sub_8153884
	.align	2, 0
	.globl	RunMysteryEventScript
	.type	 RunMysteryEventScript,function
	.thumb_func
RunMysteryEventScript:
	push	{r4, lr}
	add	r1, r0, #0
	ldr	r4, .L29
	add	r0, r4, #0
	bl	InitMysteryEventScript
.L25:
	add	r0, r4, #0
	bl	RunMysteryEventScriptCommand
	cmp	r0, #0
	bne	.L25	@cond_branch
	ldr	r0, [r4, #0x6c]
	pop	{r4}
	pop	{r1}
	bx	r1
.L30:
	.align	2, 0
.L29:
	.word	sMysteryEventScriptContext
.Lfe7:
	.size	 RunMysteryEventScript,.Lfe7-RunMysteryEventScript
	.align	2, 0
	.globl	SetMysteryEventScriptStatus
	.type	 SetMysteryEventScriptStatus,function
	.thumb_func
SetMysteryEventScriptStatus:
	ldr	r1, .L32
	str	r0, [r1, #0x6c]
	bx	lr
.L33:
	.align	2, 0
.L32:
	.word	sMysteryEventScriptContext
.Lfe8:
	.size	 SetMysteryEventScriptStatus,.Lfe8-SetMysteryEventScriptStatus
	.align	2, 0
	.type	 CalcRecordMixingGiftChecksum,function
	.thumb_func
CalcRecordMixingGiftChecksum:
	push	{lr}
	mov	r2, #0x0
	ldr	r0, .L40
	ldr	r0, [r0]
	ldr	r1, .L40+0x4
	add	r3, r0, r1
	mov	r1, #0x0
.L38:
	add	r0, r3, r1
	ldrb	r0, [r0]
	add	r2, r2, r0
	add	r1, r1, #0x1
	cmp	r1, #0xb
	bls	.L38	@cond_branch
	add	r0, r2, #0
	pop	{r1}
	bx	r1
.L41:
	.align	2, 0
.L40:
	.word	gSaveBlock1Ptr
	.word	0x3a64
.Lfe9:
	.size	 CalcRecordMixingGiftChecksum,.Lfe9-CalcRecordMixingGiftChecksum
	.align	2, 0
	.type	 IsRecordMixingGiftValid,function
	.thumb_func
IsRecordMixingGiftValid:
	push	{r4, r5, lr}
	ldr	r5, .L47
	ldr	r0, [r5]
	ldr	r1, .L47+0x4
	add	r4, r0, r1
	bl	CalcRecordMixingGiftChecksum
	add	r1, r0, #0
	ldrb	r0, [r4]
	cmp	r0, #0
	beq	.L44	@cond_branch
	ldrb	r0, [r4, #0x1]
	cmp	r0, #0
	beq	.L44	@cond_branch
	ldrh	r0, [r4, #0x2]
	cmp	r0, #0
	beq	.L44	@cond_branch
	cmp	r1, #0
	beq	.L44	@cond_branch
	ldr	r0, [r5]
	ldr	r2, .L47+0x8
	add	r0, r0, r2
	ldr	r0, [r0]
	cmp	r1, r0
	beq	.L43	@cond_branch
.L44:
	mov	r0, #0x0
	b	.L46
.L48:
	.align	2, 0
.L47:
	.word	gSaveBlock1Ptr
	.word	0x3a64
	.word	0x3a60
.L43:
	mov	r0, #0x1
.L46:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe10:
	.size	 IsRecordMixingGiftValid,.Lfe10-IsRecordMixingGiftValid
	.align	2, 0
	.type	 ClearRecordMixingGift,function
	.thumb_func
ClearRecordMixingGift:
	push	{lr}
	add	sp, sp, #-0x4
	mov	r1, sp
	mov	r0, #0x0
	strh	r0, [r1]
	ldr	r0, .L50
	ldr	r1, [r0]
	ldr	r0, .L50+0x4
	add	r1, r1, r0
	ldr	r2, .L50+0x8
	mov	r0, sp
	bl	CpuSet
	add	sp, sp, #0x4
	pop	{r0}
	bx	r0
.L51:
	.align	2, 0
.L50:
	.word	gSaveBlock1Ptr
	.word	0x3a60
	.word	0x1000008
.Lfe11:
	.size	 ClearRecordMixingGift,.Lfe11-ClearRecordMixingGift
	.align	2, 0
	.type	 SetRecordMixingGift,function
	.thumb_func
SetRecordMixingGift:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r3, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r5, r1, #0
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	add	r6, r2, #0
	cmp	r3, #0
	beq	.L54	@cond_branch
	cmp	r1, #0
	beq	.L54	@cond_branch
	cmp	r2, #0
	bne	.L53	@cond_branch
.L54:
	bl	ClearRecordMixingGift
	b	.L55
.L53:
	ldr	r4, .L56
	ldr	r0, [r4]
	ldr	r1, .L56+0x4
	add	r0, r0, r1
	strb	r3, [r0]
	ldr	r0, [r4]
	ldr	r2, .L56+0x8
	add	r0, r0, r2
	strb	r5, [r0]
	ldr	r0, [r4]
	add	r1, r1, #0x2
	add	r0, r0, r1
	strh	r6, [r0]
	bl	CalcRecordMixingGiftChecksum
	ldr	r1, [r4]
	ldr	r2, .L56+0xc
	add	r1, r1, r2
	str	r0, [r1]
.L55:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L57:
	.align	2, 0
.L56:
	.word	gSaveBlock1Ptr
	.word	0x3a64
	.word	0x3a65
	.word	0x3a60
.Lfe12:
	.size	 SetRecordMixingGift,.Lfe12-SetRecordMixingGift
	.align	2, 0
	.globl	GetRecordMixingGift
	.type	 GetRecordMixingGift,function
	.thumb_func
GetRecordMixingGift:
	push	{r4, r5, r6, lr}
	ldr	r6, .L64
	ldr	r0, [r6]
	ldr	r1, .L64+0x4
	add	r4, r0, r1
	bl	IsRecordMixingGiftValid
	cmp	r0, #0
	bne	.L59	@cond_branch
	bl	ClearRecordMixingGift
	mov	r0, #0x0
	b	.L63
.L65:
	.align	2, 0
.L64:
	.word	gSaveBlock1Ptr
	.word	0x3a64
.L59:
	ldrh	r5, [r4, #0x2]
	ldrb	r0, [r4, #0x1]
	sub	r0, r0, #0x1
	strb	r0, [r4, #0x1]
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L61	@cond_branch
	bl	ClearRecordMixingGift
	b	.L62
.L61:
	bl	CalcRecordMixingGiftChecksum
	ldr	r1, [r6]
	ldr	r2, .L66
	add	r1, r1, r2
	str	r0, [r1]
.L62:
	add	r0, r5, #0
.L63:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L67:
	.align	2, 0
.L66:
	.word	0x3a60
.Lfe13:
	.size	 GetRecordMixingGift,.Lfe13-GetRecordMixingGift
	.align	2, 0
	.globl	MEScrCmd_end
	.type	 MEScrCmd_end,function
	.thumb_func
MEScrCmd_end:
	push	{lr}
	bl	StopScript
	mov	r0, #0x1
	pop	{r1}
	bx	r1
.Lfe14:
	.size	 MEScrCmd_end,.Lfe14-MEScrCmd_end
	.align	2, 0
	.globl	MEScrCmd_checkcompat
	.type	 MEScrCmd_checkcompat,function
	.thumb_func
MEScrCmd_checkcompat:
	push	{r4, r5, r6, r7, lr}
	add	r7, r0, #0
	bl	ScriptReadWord
	str	r0, [r7, #0x68]
	add	r0, r7, #0
	bl	ScriptReadHalfword
	add	r5, r0, #0
	lsl	r5, r5, #0x10
	lsr	r5, r5, #0x10
	add	r0, r7, #0
	bl	ScriptReadWord
	add	r6, r0, #0
	add	r0, r7, #0
	bl	ScriptReadHalfword
	add	r4, r0, #0
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	add	r0, r7, #0
	bl	ScriptReadWord
	add	r3, r0, #0
	add	r0, r5, #0
	add	r1, r6, #0
	add	r2, r4, #0
	bl	CheckCompatibility
	cmp	r0, #0x1
	bne	.L70	@cond_branch
	str	r0, [r7, #0x70]
	b	.L71
.L70:
	bl	SetIncompatible
.L71:
	mov	r0, #0x1
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe15:
	.size	 MEScrCmd_checkcompat,.Lfe15-MEScrCmd_checkcompat
	.align	2, 0
	.globl	MEScrCmd_nop
	.type	 MEScrCmd_nop,function
	.thumb_func
MEScrCmd_nop:
	mov	r0, #0x0
	bx	lr
.Lfe16:
	.size	 MEScrCmd_nop,.Lfe16-MEScrCmd_nop
	.align	2, 0
	.globl	MEScrCmd_setstatus
	.type	 MEScrCmd_setstatus,function
	.thumb_func
MEScrCmd_setstatus:
	ldr	r1, [r0, #0x8]
	ldrb	r2, [r1]
	add	r1, r1, #0x1
	str	r1, [r0, #0x8]
	str	r2, [r0, #0x6c]
	mov	r0, #0x0
	bx	lr
.Lfe17:
	.size	 MEScrCmd_setstatus,.Lfe17-MEScrCmd_setstatus
	.align	2, 0
	.globl	MEScrCmd_setmsg
	.type	 MEScrCmd_setmsg,function
	.thumb_func
MEScrCmd_setmsg:
	push	{r4, r5, lr}
	add	r4, r0, #0
	ldr	r0, [r4, #0x8]
	ldrb	r5, [r0]
	add	r0, r0, #0x1
	str	r0, [r4, #0x8]
	add	r0, r4, #0
	bl	ScriptReadWord
	ldr	r1, [r4, #0x68]
	sub	r0, r0, r1
	ldr	r1, [r4, #0x64]
	add	r1, r0, r1
	cmp	r5, #0xff
	beq	.L76	@cond_branch
	ldr	r0, [r4, #0x6c]
	cmp	r5, r0
	bne	.L75	@cond_branch
.L76:
	ldr	r0, .L77
	bl	StringExpandPlaceholders
.L75:
	mov	r0, #0x0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L78:
	.align	2, 0
.L77:
	.word	gStringVar4
.Lfe18:
	.size	 MEScrCmd_setmsg,.Lfe18-MEScrCmd_setmsg
	.align	2, 0
	.globl	MEScrCmd_runscript
	.type	 MEScrCmd_runscript,function
	.thumb_func
MEScrCmd_runscript:
	push	{r4, lr}
	add	r4, r0, #0
	bl	ScriptReadWord
	ldr	r1, [r4, #0x68]
	sub	r0, r0, r1
	ldr	r1, [r4, #0x64]
	add	r0, r0, r1
	bl	ScriptContext2_RunNewScript
	mov	r0, #0x0
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe19:
	.size	 MEScrCmd_runscript,.Lfe19-MEScrCmd_runscript
	.align	2, 0
	.globl	MEScrCmd_setenigmaberry
	.type	 MEScrCmd_setenigmaberry,function
	.thumb_func
MEScrCmd_setenigmaberry:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	r7, r0, #0
	bl	IsEnigmaBerryValid
	mov	r8, r0
	add	r0, r7, #0
	bl	ScriptReadWord
	add	r4, r0, #0
	ldr	r0, [r7, #0x68]
	sub	r4, r4, r0
	ldr	r0, [r7, #0x64]
	add	r4, r4, r0
	ldr	r0, .L87
	mov	r9, r0
	ldr	r6, .L87+0x4
	ldr	r1, [r6]
	ldr	r5, .L87+0x8
	add	r1, r1, r5
	mov	r2, #0x7
	bl	StringCopyN
	add	r0, r4, #0
	bl	SetEnigmaBerry
	ldr	r4, .L87+0xc
	ldr	r1, [r6]
	add	r1, r1, r5
	add	r0, r4, #0
	mov	r2, #0x7
	bl	StringCopyN
	mov	r0, r8
	cmp	r0, #0
	bne	.L81	@cond_branch
	ldr	r0, .L87+0x10
	ldr	r1, .L87+0x14
	b	.L82
.L88:
	.align	2, 0
.L87:
	.word	gStringVar1
	.word	gSaveBlock1Ptr
	.word	0x31f8
	.word	gStringVar2
	.word	gStringVar4
	.word	gText_MysteryGiftBerry
.L81:
	mov	r0, r9
	add	r1, r4, #0
	bl	StringCompare
	cmp	r0, #0
	beq	.L83	@cond_branch
	ldr	r0, .L89
	ldr	r1, .L89+0x4
	b	.L82
.L90:
	.align	2, 0
.L89:
	.word	gStringVar4
	.word	gText_MysteryGiftBerryTransform
.L83:
	ldr	r0, .L91
	ldr	r1, .L91+0x4
.L82:
	bl	StringExpandPlaceholders
	mov	r0, #0x2
	str	r0, [r7, #0x6c]
	bl	IsEnigmaBerryValid
	cmp	r0, #0x1
	bne	.L85	@cond_branch
	ldr	r0, .L91+0x8
	mov	r1, #0x1
	bl	VarSet
	b	.L86
.L92:
	.align	2, 0
.L91:
	.word	gStringVar4
	.word	gText_MysteryGiftBerryObtained
	.word	0x402d
.L85:
	mov	r0, #0x1
	str	r0, [r7, #0x6c]
.L86:
	mov	r0, #0x0
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe20:
	.size	 MEScrCmd_setenigmaberry,.Lfe20-MEScrCmd_setenigmaberry
	.align	2, 0
	.globl	MEScrCmd_giveribbon
	.type	 MEScrCmd_giveribbon,function
	.thumb_func
MEScrCmd_giveribbon:
	push	{r4, lr}
	add	r4, r0, #0
	ldr	r2, [r4, #0x8]
	ldrb	r0, [r2]
	add	r2, r2, #0x1
	str	r2, [r4, #0x8]
	ldrb	r1, [r2]
	add	r2, r2, #0x1
	str	r2, [r4, #0x8]
	bl	GiveGiftRibbonToParty
	ldr	r0, .L94
	ldr	r1, .L94+0x4
	bl	StringExpandPlaceholders
	mov	r0, #0x2
	str	r0, [r4, #0x6c]
	mov	r0, #0x0
	pop	{r4}
	pop	{r1}
	bx	r1
.L95:
	.align	2, 0
.L94:
	.word	gStringVar4
	.word	gText_MysteryGiftSpecialRibbon
.Lfe21:
	.size	 MEScrCmd_giveribbon,.Lfe21-MEScrCmd_giveribbon
	.align	2, 0
	.globl	MEScrCmd_initramscript
	.type	 MEScrCmd_initramscript,function
	.thumb_func
MEScrCmd_initramscript:
	push	{r4, r5, r6, lr}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	add	sp, sp, #-0x4
	add	r4, r0, #0
	ldr	r0, [r4, #0x8]
	ldrb	r1, [r0]
	mov	r9, r1
	add	r0, r0, #0x1
	str	r0, [r4, #0x8]
	ldrb	r1, [r0]
	mov	r8, r1
	add	r1, r0, #0x1
	str	r1, [r4, #0x8]
	ldrb	r6, [r0, #0x1]
	add	r1, r1, #0x1
	str	r1, [r4, #0x8]
	add	r0, r4, #0
	bl	ScriptReadWord
	add	r5, r0, #0
	ldr	r0, [r4, #0x68]
	sub	r5, r5, r0
	ldr	r0, [r4, #0x64]
	add	r5, r5, r0
	add	r0, r4, #0
	bl	ScriptReadWord
	add	r1, r0, #0
	ldr	r0, [r4, #0x68]
	sub	r1, r1, r0
	ldr	r0, [r4, #0x64]
	add	r1, r1, r0
	sub	r1, r1, r5
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	str	r6, [sp]
	add	r0, r5, #0
	mov	r2, r9
	mov	r3, r8
	bl	InitRamScript
	mov	r0, #0x0
	add	sp, sp, #0x4
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe22:
	.size	 MEScrCmd_initramscript,.Lfe22-MEScrCmd_initramscript
	.align	2, 0
	.globl	MEScrCmd_givenationaldex
	.type	 MEScrCmd_givenationaldex,function
	.thumb_func
MEScrCmd_givenationaldex:
	push	{r4, lr}
	add	r4, r0, #0
	bl	EnableNationalPokedex
	ldr	r0, .L98
	ldr	r1, .L98+0x4
	bl	StringExpandPlaceholders
	mov	r0, #0x2
	str	r0, [r4, #0x6c]
	mov	r0, #0x0
	pop	{r4}
	pop	{r1}
	bx	r1
.L99:
	.align	2, 0
.L98:
	.word	gStringVar4
	.word	gText_MysteryGiftNationalDex
.Lfe23:
	.size	 MEScrCmd_givenationaldex,.Lfe23-MEScrCmd_givenationaldex
	.align	2, 0
	.globl	MEScrCmd_addrareword
	.type	 MEScrCmd_addrareword,function
	.thumb_func
MEScrCmd_addrareword:
	push	{r4, lr}
	add	r4, r0, #0
	ldr	r1, [r4, #0x8]
	ldrb	r0, [r1]
	add	r1, r1, #0x1
	str	r1, [r4, #0x8]
	bl	UnlockAdditionalPhrase
	ldr	r0, .L101
	ldr	r1, .L101+0x4
	bl	StringExpandPlaceholders
	mov	r0, #0x2
	str	r0, [r4, #0x6c]
	mov	r0, #0x0
	pop	{r4}
	pop	{r1}
	bx	r1
.L102:
	.align	2, 0
.L101:
	.word	gStringVar4
	.word	gText_MysteryGiftRareWord
.Lfe24:
	.size	 MEScrCmd_addrareword,.Lfe24-MEScrCmd_addrareword
	.align	2, 0
	.globl	MEScrCmd_setrecordmixinggift
	.type	 MEScrCmd_setrecordmixinggift,function
	.thumb_func
MEScrCmd_setrecordmixinggift:
	push	{r4, r5, lr}
	ldr	r1, [r0, #0x8]
	ldrb	r5, [r1]
	add	r1, r1, #0x1
	str	r1, [r0, #0x8]
	ldrb	r4, [r1]
	add	r1, r1, #0x1
	str	r1, [r0, #0x8]
	bl	ScriptReadHalfword
	add	r2, r0, #0
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	add	r0, r5, #0
	add	r1, r4, #0
	bl	SetRecordMixingGift
	mov	r0, #0x0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe25:
	.size	 MEScrCmd_setrecordmixinggift,.Lfe25-MEScrCmd_setrecordmixinggift
	.align	2, 0
	.globl	MEScrCmd_givepokemon
	.type	 MEScrCmd_givepokemon,function
	.thumb_func
MEScrCmd_givepokemon:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0x88
	add	r6, r0, #0
	bl	ScriptReadWord
	ldr	r1, [r6, #0x68]
	sub	r0, r0, r1
	ldr	r1, [r6, #0x64]
	add	r5, r0, r1
	mov	r0, #0x64
	add	r0, r0, r5
	mov	r8, r0
	add	r4, sp, #0x24
	add	r0, r4, #0
	add	r1, r5, #0
	mov	r2, #0x64
	bl	memcpy
	add	r0, r4, #0
	mov	r1, #0x41
	bl	GetMonData
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	ldr	r0, .L112
	cmp	r4, r0
	bne	.L105	@cond_branch
	ldr	r0, .L112+0x4
	ldr	r1, .L112+0x8
	mov	r2, #0xb
	bl	StringCopyN
	b	.L106
.L113:
	.align	2, 0
.L112:
	.word	0x432
	.word	gStringVar1
	.word	gText_EggNickname
.L105:
	ldr	r0, .L114
	ldr	r1, .L114+0x4
	mov	r2, #0xb
	bl	StringCopyN
.L106:
	ldr	r0, .L114+0x8
	ldrb	r0, [r0]
	cmp	r0, #0x6
	bne	.L107	@cond_branch
	ldr	r0, .L114+0xc
	ldr	r1, .L114+0x10
	bl	StringExpandPlaceholders
	mov	r0, #0x3
	b	.L111
.L115:
	.align	2, 0
.L114:
	.word	gStringVar1
	.word	gText_Pokemon
	.word	gPlayerPartyCount
	.word	gStringVar4
	.word	gText_MysteryGiftFullParty
.L107:
	ldr	r7, .L116
	add	r0, r7, #0
	add	r1, r5, #0
	mov	r2, #0x64
	bl	memcpy
	mov	r0, sp
	mov	r1, r8
	mov	r2, #0x24
	bl	memcpy
	ldr	r0, .L116+0x4
	cmp	r4, r0
	beq	.L109	@cond_branch
	add	r0, r4, #0
	bl	SpeciesToNationalPokedexNum
	add	r4, r0, #0
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	add	r0, r4, #0
	mov	r1, #0x2
	bl	GetSetPokedexFlag
	add	r0, r4, #0
	mov	r1, #0x3
	bl	GetSetPokedexFlag
.L109:
	add	r0, r7, #0
	mov	r1, #0xc
	bl	GetMonData
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	bl	ItemIsMail
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L110	@cond_branch
	add	r0, r7, #0
	mov	r1, sp
	bl	GiveMailToMon2
.L110:
	bl	CompactPartySlots
	bl	CalculatePlayerPartyCount
	ldr	r0, .L116+0x8
	ldr	r1, .L116+0xc
	bl	StringExpandPlaceholders
	mov	r0, #0x2
.L111:
	str	r0, [r6, #0x6c]
	mov	r0, #0x0
	add	sp, sp, #0x88
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L117:
	.align	2, 0
.L116:
	.word	gPlayerParty+0x1f4
	.word	0x432
	.word	gStringVar4
	.word	gText_MysteryGiftSentOver
.Lfe26:
	.size	 MEScrCmd_givepokemon,.Lfe26-MEScrCmd_givepokemon
	.align	2, 0
	.globl	MEScrCmd_addtrainer
	.type	 MEScrCmd_addtrainer,function
	.thumb_func
MEScrCmd_addtrainer:
	push	{r4, lr}
	add	r4, r0, #0
	bl	ScriptReadWord
	add	r1, r0, #0
	ldr	r0, [r4, #0x68]
	sub	r1, r1, r0
	ldr	r0, [r4, #0x64]
	add	r1, r1, r0
	ldr	r0, .L119
	ldr	r0, [r0]
	ldr	r2, .L119+0x4
	add	r0, r0, r2
	mov	r2, #0xbc
	bl	memcpy
	bl	ValidateEReaderTrainer
	ldr	r0, .L119+0x8
	ldr	r1, .L119+0xc
	bl	StringExpandPlaceholders
	mov	r0, #0x2
	str	r0, [r4, #0x6c]
	mov	r0, #0x0
	pop	{r4}
	pop	{r1}
	bx	r1
.L120:
	.align	2, 0
.L119:
	.word	gSaveBlock2Ptr
	.word	0xbec
	.word	gStringVar4
	.word	gText_MysteryGiftNewTrainer
.Lfe27:
	.size	 MEScrCmd_addtrainer,.Lfe27-MEScrCmd_addtrainer
	.align	2, 0
	.globl	MEScrCmd_enableresetrtc
	.type	 MEScrCmd_enableresetrtc,function
	.thumb_func
MEScrCmd_enableresetrtc:
	push	{r4, lr}
	add	r4, r0, #0
	bl	EnableResetRTC
	ldr	r0, .L122
	ldr	r1, .L122+0x4
	bl	StringExpandPlaceholders
	mov	r0, #0x2
	str	r0, [r4, #0x6c]
	mov	r0, #0x0
	pop	{r4}
	pop	{r1}
	bx	r1
.L123:
	.align	2, 0
.L122:
	.word	gStringVar4
	.word	gText_InGameClockUsable
.Lfe28:
	.size	 MEScrCmd_enableresetrtc,.Lfe28-MEScrCmd_enableresetrtc
	.align	2, 0
	.globl	MEScrCmd_checksum
	.type	 MEScrCmd_checksum,function
	.thumb_func
MEScrCmd_checksum:
	push	{r4, r5, r6, lr}
	add	r6, r0, #0
	bl	ScriptReadWord
	add	r5, r0, #0
	add	r0, r6, #0
	bl	ScriptReadWord
	add	r4, r0, #0
	ldr	r0, [r6, #0x68]
	sub	r4, r4, r0
	ldr	r0, [r6, #0x64]
	add	r4, r4, r0
	add	r0, r6, #0
	bl	ScriptReadWord
	add	r1, r0, #0
	ldr	r0, [r6, #0x68]
	sub	r1, r1, r0
	ldr	r0, [r6, #0x64]
	add	r1, r1, r0
	sub	r1, r1, r4
	add	r0, r4, #0
	bl	CalcByteArraySum
	cmp	r5, r0
	beq	.L125	@cond_branch
	mov	r0, #0x0
	str	r0, [r6, #0x70]
	mov	r0, #0x1
	str	r0, [r6, #0x6c]
.L125:
	mov	r0, #0x1
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe29:
	.size	 MEScrCmd_checksum,.Lfe29-MEScrCmd_checksum
	.align	2, 0
	.globl	MEScrCmd_crc
	.type	 MEScrCmd_crc,function
	.thumb_func
MEScrCmd_crc:
	push	{r4, r5, r6, lr}
	add	r6, r0, #0
	bl	ScriptReadWord
	add	r5, r0, #0
	add	r0, r6, #0
	bl	ScriptReadWord
	add	r4, r0, #0
	ldr	r0, [r6, #0x68]
	sub	r4, r4, r0
	ldr	r0, [r6, #0x64]
	add	r4, r4, r0
	add	r0, r6, #0
	bl	ScriptReadWord
	add	r1, r0, #0
	ldr	r0, [r6, #0x68]
	sub	r1, r1, r0
	ldr	r0, [r6, #0x64]
	add	r1, r1, r0
	sub	r1, r1, r4
	add	r0, r4, #0
	bl	CalcCRC16
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	cmp	r5, r0
	beq	.L127	@cond_branch
	mov	r0, #0x0
	str	r0, [r6, #0x70]
	mov	r0, #0x1
	str	r0, [r6, #0x6c]
.L127:
	mov	r0, #0x1
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe30:
	.size	 MEScrCmd_crc,.Lfe30-MEScrCmd_crc
.text
	.align	2, 0

