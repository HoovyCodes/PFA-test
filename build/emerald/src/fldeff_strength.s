@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.globl	SetUpFieldMove_Strength
	.type	 SetUpFieldMove_Strength,function
	.thumb_func
SetUpFieldMove_Strength:
	push	{r4, lr}
	mov	r0, #0x57
	bl	CheckObjectGraphicsInFrontOfPlayer
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	beq	.L3	@cond_branch
	mov	r0, #0x0
	b	.L4
.L3:
	ldr	r4, .L5
	bl	GetCursorSelectionMonId
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strh	r0, [r4]
	ldr	r1, .L5+0x4
	ldr	r0, .L5+0x8
	str	r0, [r1]
	ldr	r1, .L5+0xc
	ldr	r0, .L5+0x10
	str	r0, [r1]
	mov	r0, #0x1
.L4:
	pop	{r4}
	pop	{r1}
	bx	r1
.L6:
	.align	2, 0
.L5:
	.word	gSpecialVar_Result
	.word	gFieldCallback2
	.word	FieldCallback_PrepareFadeInFromMenu
	.word	gPostMenuFieldCallback
	.word	FieldCallback_Strength
.Lfe1:
	.size	 SetUpFieldMove_Strength,.Lfe1-SetUpFieldMove_Strength
	.align	2, 0
	.type	 FieldCallback_Strength,function
	.thumb_func
FieldCallback_Strength:
	push	{lr}
	bl	GetCursorSelectionMonId
	ldr	r1, .L8
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	str	r0, [r1]
	ldr	r0, .L8+0x4
	bl	ScriptContext1_SetupScript
	pop	{r0}
	bx	r0
.L9:
	.align	2, 0
.L8:
	.word	gFieldEffectArguments
	.word	EventScript_UseStrength
.Lfe2:
	.size	 FieldCallback_Strength,.Lfe2-FieldCallback_Strength
	.align	2, 0
	.globl	FldEff_UseStrength
	.type	 FldEff_UseStrength,function
	.thumb_func
FldEff_UseStrength:
	push	{lr}
	bl	CreateFieldMoveTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r2, .L11
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	add	r1, r1, r2
	ldr	r2, .L11+0x4
	lsr	r0, r2, #0x10
	strh	r0, [r1, #0x18]
	strh	r2, [r1, #0x1a]
	ldr	r0, .L11+0x8
	ldr	r1, [r0]
	mov	r0, #0x64
	mul	r0, r0, r1
	ldr	r1, .L11+0xc
	add	r0, r0, r1
	ldr	r1, .L11+0x10
	bl	GetMonNickname
	mov	r0, #0x0
	pop	{r1}
	bx	r1
.L12:
	.align	2, 0
.L11:
	.word	gTasks
	.word	StartStrengthFieldEffect
	.word	gFieldEffectArguments
	.word	gPlayerParty
	.word	gStringVar1
.Lfe3:
	.size	 FldEff_UseStrength,.Lfe3-FldEff_UseStrength
	.align	2, 0
	.type	 StartStrengthFieldEffect,function
	.thumb_func
StartStrengthFieldEffect:
	push	{lr}
	mov	r0, #0x28
	bl	FieldEffectActiveListRemove
	bl	EnableBothScriptContexts
	pop	{r0}
	bx	r0
.Lfe4:
	.size	 StartStrengthFieldEffect,.Lfe4-StartStrengthFieldEffect
.text
	.align	2, 0

