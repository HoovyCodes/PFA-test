@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section .rodata
	.align	2, 0
	.type	 sAffineAnim_Bonemerang,object
sAffineAnim_Bonemerang:
	.short	0x0
	.short	0x0
	.byte	0xf
	.byte	0x1
	.space	2
	.short	0x7ffe
	.short	0x0
	.space	4
	.size	 sAffineAnim_Bonemerang,16
	.align	2, 0
	.type	 sAffineAnim_SpinningBone,object
sAffineAnim_SpinningBone:
	.short	0x0
	.short	0x0
	.byte	0x14
	.byte	0x1
	.space	2
	.short	0x7ffe
	.short	0x0
	.space	4
	.size	 sAffineAnim_SpinningBone,16
	.align	2, 0
	.type	 sAffineAnims_Bonemerang,object
sAffineAnims_Bonemerang:
	.word	sAffineAnim_Bonemerang
	.size	 sAffineAnims_Bonemerang,4
	.globl	gAffineAnims_SpinningBone
	.align	2, 0
	.type	 gAffineAnims_SpinningBone,object
gAffineAnims_SpinningBone:
	.word	sAffineAnim_SpinningBone
	.size	 gAffineAnims_SpinningBone,4
	.globl	gBonemerangSpriteTemplate
	.align	2, 0
	.type	 gBonemerangSpriteTemplate,object
	.size	 gBonemerangSpriteTemplate,24
gBonemerangSpriteTemplate:
	.short	0x2710
	.short	0x2710
	.word	gOamData_AffineNormal_ObjNormal_32x32
	.word	gDummySpriteAnimTable
	.word	0x0
	.word	sAffineAnims_Bonemerang
	.word	AnimBonemerangProjectile
	.globl	gSpinningBoneSpriteTemplate
	.align	2, 0
	.type	 gSpinningBoneSpriteTemplate,object
	.size	 gSpinningBoneSpriteTemplate,24
gSpinningBoneSpriteTemplate:
	.short	0x2710
	.short	0x2710
	.word	gOamData_AffineNormal_ObjNormal_32x32
	.word	gDummySpriteAnimTable
	.word	0x0
	.word	gAffineAnims_SpinningBone
	.word	AnimBoneHitProjectile
	.globl	gSandAttackDirtSpriteTemplate
	.align	2, 0
	.type	 gSandAttackDirtSpriteTemplate,object
	.size	 gSandAttackDirtSpriteTemplate,24
gSandAttackDirtSpriteTemplate:
	.short	0x275a
	.short	0x275a
	.word	gOamData_AffineOff_ObjNormal_8x8
	.word	gDummySpriteAnimTable
	.word	0x0
	.word	gDummySpriteAffineAnimTable
	.word	AnimDirtScatter
	.align	2, 0
	.type	 sAnim_MudSlapMud,object
sAnim_MudSlapMud:
	.short	0x1
	.byte	0x1
	.space	1
	.short	-0x1
	.space	2
	.size	 sAnim_MudSlapMud,8
	.align	2, 0
	.type	 sAnims_MudSlapMud,object
sAnims_MudSlapMud:
	.word	sAnim_MudSlapMud
	.size	 sAnims_MudSlapMud,4
	.globl	gMudSlapMudSpriteTemplate
	.align	2, 0
	.type	 gMudSlapMudSpriteTemplate,object
	.size	 gMudSlapMudSpriteTemplate,24
gMudSlapMudSpriteTemplate:
	.short	0x275a
	.short	0x275a
	.word	gOamData_AffineOff_ObjNormal_16x16
	.word	sAnims_MudSlapMud
	.word	0x0
	.word	gDummySpriteAffineAnimTable
	.word	AnimDirtScatter
	.globl	gMudsportMudSpriteTemplate
	.align	2, 0
	.type	 gMudsportMudSpriteTemplate,object
	.size	 gMudsportMudSpriteTemplate,24
gMudsportMudSpriteTemplate:
	.short	0x275a
	.short	0x275a
	.word	gOamData_AffineOff_ObjNormal_16x16
	.word	gDummySpriteAnimTable
	.word	0x0
	.word	gDummySpriteAffineAnimTable
	.word	AnimMudSportDirt
	.globl	gDirtPlumeSpriteTemplate
	.align	2, 0
	.type	 gDirtPlumeSpriteTemplate,object
	.size	 gDirtPlumeSpriteTemplate,24
gDirtPlumeSpriteTemplate:
	.short	0x275a
	.short	0x275a
	.word	gOamData_AffineOff_ObjNormal_8x8
	.word	gDummySpriteAnimTable
	.word	0x0
	.word	gDummySpriteAffineAnimTable
	.word	AnimDirtPlumeParticle
	.globl	gDirtMoundSpriteTemplate
	.align	2, 0
	.type	 gDirtMoundSpriteTemplate,object
	.size	 gDirtMoundSpriteTemplate,24
gDirtMoundSpriteTemplate:
	.short	0x2829
	.short	0x2829
	.word	gOamData_AffineOff_ObjNormal_32x16
	.word	gDummySpriteAnimTable
	.word	0x0
	.word	gDummySpriteAffineAnimTable
	.word	AnimDigDirtMound
	.globl	gMudBombSplash
	.align	2, 0
	.type	 gMudBombSplash,object
	.size	 gMudBombSplash,24
gMudBombSplash:
	.short	0x275a
	.short	0x275a
	.word	gOamData_AffineOff_ObjNormal_8x8
	.word	gDummySpriteAnimTable
	.word	0x0
	.word	gDummySpriteAffineAnimTable
	.word	AnimSludgeBombHitParticle
	.globl	gMudBombToss
	.align	2, 0
	.type	 gMudBombToss,object
	.size	 gMudBombToss,24
gMudBombToss:
	.short	0x275a
	.short	0x275a
	.word	gOamData_AffineOff_ObjNormal_16x16
	.word	sAnims_MudSlapMud
	.word	0x0
	.word	gDummySpriteAffineAnimTable
	.word	AnimThrowProjectile
.text
	.align	2, 0
	.type	 AnimBonemerangProjectile,function
	.thumb_func
AnimBonemerangProjectile:
	push	{r4, r5, lr}
	add	r4, r0, #0
	ldr	r5, .L3
	ldrb	r0, [r5]
	mov	r1, #0x2
	bl	GetBattlerSpriteCoord
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strh	r0, [r4, #0x20]
	ldrb	r0, [r5]
	mov	r1, #0x3
	bl	GetBattlerSpriteCoord
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strh	r0, [r4, #0x22]
	mov	r0, #0x14
	strh	r0, [r4, #0x2e]
	ldr	r5, .L3+0x4
	ldrb	r0, [r5]
	mov	r1, #0x2
	bl	GetBattlerSpriteCoord
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strh	r0, [r4, #0x32]
	ldrb	r0, [r5]
	mov	r1, #0x3
	bl	GetBattlerSpriteCoord
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strh	r0, [r4, #0x36]
	ldr	r0, .L3+0x8
	strh	r0, [r4, #0x38]
	add	r0, r4, #0
	bl	InitAnimArcTranslation
	ldr	r0, .L3+0xc
	str	r0, [r4, #0x1c]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L4:
	.align	2, 0
.L3:
	.word	gBattleAnimAttacker
	.word	gBattleAnimTarget
	.word	0xffd8
	.word	AnimBonemerangProjectile_Step
.Lfe1:
	.size	 AnimBonemerangProjectile,.Lfe1-AnimBonemerangProjectile
	.align	2, 0
	.type	 AnimBonemerangProjectile_Step,function
	.thumb_func
AnimBonemerangProjectile_Step:
	push	{r4, r5, lr}
	add	r5, r0, #0
	bl	TranslateAnimHorizontalArc
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L6	@cond_branch
	ldrh	r0, [r5, #0x24]
	ldrh	r1, [r5, #0x20]
	add	r0, r0, r1
	mov	r1, #0x0
	strh	r0, [r5, #0x20]
	ldrh	r0, [r5, #0x26]
	ldrh	r2, [r5, #0x22]
	add	r0, r0, r2
	strh	r0, [r5, #0x22]
	strh	r1, [r5, #0x26]
	strh	r1, [r5, #0x24]
	mov	r0, #0x14
	strh	r0, [r5, #0x2e]
	ldr	r4, .L7
	ldrb	r0, [r4]
	mov	r1, #0x2
	bl	GetBattlerSpriteCoord
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strh	r0, [r5, #0x32]
	ldrb	r0, [r4]
	mov	r1, #0x3
	bl	GetBattlerSpriteCoord
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strh	r0, [r5, #0x36]
	mov	r0, #0x28
	strh	r0, [r5, #0x38]
	add	r0, r5, #0
	bl	InitAnimArcTranslation
	ldr	r0, .L7+0x4
	str	r0, [r5, #0x1c]
.L6:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L8:
	.align	2, 0
.L7:
	.word	gBattleAnimAttacker
	.word	AnimBonemerangProjectile_End
.Lfe2:
	.size	 AnimBonemerangProjectile_Step,.Lfe2-AnimBonemerangProjectile_Step
	.align	2, 0
	.type	 AnimBonemerangProjectile_End,function
	.thumb_func
AnimBonemerangProjectile_End:
	push	{r4, lr}
	add	r4, r0, #0
	bl	TranslateAnimHorizontalArc
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L10	@cond_branch
	add	r0, r4, #0
	bl	DestroyAnimSprite
.L10:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe3:
	.size	 AnimBonemerangProjectile_End,.Lfe3-AnimBonemerangProjectile_End
	.align	2, 0
	.type	 AnimBoneHitProjectile,function
	.thumb_func
AnimBoneHitProjectile:
	push	{r4, r5, r6, lr}
	add	r6, r0, #0
	mov	r1, #0x1
	bl	InitSpritePosToAnimTarget
	ldr	r0, .L13
	ldrb	r0, [r0]
	bl	GetBattlerSide
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L12	@cond_branch
	ldr	r1, .L13+0x4
	ldrh	r0, [r1, #0x4]
	neg	r0, r0
	strh	r0, [r1, #0x4]
.L12:
	ldr	r4, .L13+0x4
	ldrh	r0, [r4, #0x8]
	strh	r0, [r6, #0x2e]
	ldr	r5, .L13+0x8
	ldrb	r0, [r5]
	mov	r1, #0x2
	bl	GetBattlerSpriteCoord
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldrh	r1, [r4, #0x4]
	add	r0, r0, r1
	strh	r0, [r6, #0x32]
	ldrb	r0, [r5]
	mov	r1, #0x3
	bl	GetBattlerSpriteCoord
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldrh	r4, [r4, #0x6]
	add	r0, r0, r4
	strh	r0, [r6, #0x36]
	ldr	r0, .L13+0xc
	str	r0, [r6, #0x1c]
	ldr	r1, .L13+0x10
	add	r0, r6, #0
	bl	StoreSpriteCallbackInData6
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L14:
	.align	2, 0
.L13:
	.word	gBattleAnimAttacker
	.word	gBattleAnimArgs
	.word	gBattleAnimTarget
	.word	StartAnimLinearTranslation
	.word	DestroyAnimSprite
.Lfe4:
	.size	 AnimBoneHitProjectile,.Lfe4-AnimBoneHitProjectile
	.align	2, 0
	.globl	AnimDirtScatter
	.type	 AnimDirtScatter,function
	.thumb_func
AnimDirtScatter:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r6, r0, #0
	mov	r1, #0x1
	bl	InitSpritePosToAnimAttacker
	ldr	r4, .L18
	ldrb	r0, [r4]
	mov	r1, #0x2
	bl	GetBattlerSpriteCoord2
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	ldrb	r0, [r4]
	mov	r1, #0x3
	bl	GetBattlerSpriteCoord2
	lsl	r0, r0, #0x18
	lsr	r7, r0, #0x18
	bl	Random2
	mov	r4, #0x1f
	add	r5, r4, #0
	and	r5, r5, r0
	bl	Random2
	and	r4, r4, r0
	add	r1, r5, #0
	cmp	r1, #0x10
	ble	.L16	@cond_branch
	mov	r0, #0x10
	sub	r0, r0, r1
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
.L16:
	lsl	r0, r4, #0x10
	asr	r1, r0, #0x10
	cmp	r1, #0x10
	ble	.L17	@cond_branch
	mov	r0, #0x10
	sub	r0, r0, r1
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
.L17:
	ldr	r0, .L18+0x4
	ldrh	r0, [r0, #0x4]
	strh	r0, [r6, #0x2e]
	mov	r1, r8
	add	r0, r1, r5
	strh	r0, [r6, #0x32]
	add	r0, r7, r4
	strh	r0, [r6, #0x36]
	ldr	r0, .L18+0x8
	str	r0, [r6, #0x1c]
	ldr	r1, .L18+0xc
	add	r0, r6, #0
	bl	StoreSpriteCallbackInData6
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L19:
	.align	2, 0
.L18:
	.word	gBattleAnimTarget
	.word	gBattleAnimArgs
	.word	StartAnimLinearTranslation
	.word	DestroySpriteAndMatrix
.Lfe5:
	.size	 AnimDirtScatter,.Lfe5-AnimDirtScatter
	.align	2, 0
	.globl	AnimMudSportDirt
	.type	 AnimMudSportDirt,function
	.thumb_func
AnimMudSportDirt:
	push	{r4, r5, r6, lr}
	add	r5, r0, #0
	ldrh	r2, [r5, #0x4]
	lsl	r1, r2, #0x16
	lsr	r1, r1, #0x16
	add	r1, r1, #0x1
	ldr	r3, .L26
	add	r0, r3, #0
	and	r1, r1, r0
	ldr	r0, .L26+0x4
	and	r0, r0, r2
	orr	r0, r0, r1
	strh	r0, [r5, #0x4]
	ldr	r6, .L26+0x8
	mov	r1, #0x0
	ldrsh	r0, [r6, r1]
	cmp	r0, #0
	bne	.L21	@cond_branch
	ldr	r4, .L26+0xc
	ldrb	r0, [r4]
	mov	r1, #0x2
	bl	GetBattlerSpriteCoord
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldrh	r2, [r6, #0x2]
	add	r0, r0, r2
	strh	r0, [r5, #0x20]
	ldrb	r0, [r4]
	mov	r1, #0x3
	bl	GetBattlerSpriteCoord
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldrh	r3, [r6, #0x4]
	add	r0, r0, r3
	strh	r0, [r5, #0x22]
	mov	r1, #0x2
	ldrsh	r0, [r6, r1]
	mov	r2, #0x1
	neg	r2, r2
	add	r1, r2, #0
	cmp	r0, #0
	ble	.L22	@cond_branch
	mov	r1, #0x1
.L22:
	strh	r1, [r5, #0x2e]
	ldr	r0, .L26+0x10
	b	.L25
.L27:
	.align	2, 0
.L26:
	.word	0x3ff
	.word	-0x400
	.word	gBattleAnimArgs
	.word	gBattleAnimAttacker
	.word	AnimMudSportDirtRising
.L21:
	ldrh	r0, [r6, #0x2]
	strh	r0, [r5, #0x20]
	ldrh	r0, [r6, #0x4]
	strh	r0, [r5, #0x22]
	neg	r0, r0
	strh	r0, [r5, #0x26]
	ldr	r0, .L28
.L25:
	str	r0, [r5, #0x1c]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L29:
	.align	2, 0
.L28:
	.word	AnimMudSportDirtFalling
.Lfe6:
	.size	 AnimMudSportDirt,.Lfe6-AnimMudSportDirt
	.align	2, 0
	.globl	AnimMudSportDirtRising
	.type	 AnimMudSportDirtRising,function
	.thumb_func
AnimMudSportDirtRising:
	push	{lr}
	add	r2, r0, #0
	ldrh	r0, [r2, #0x30]
	add	r0, r0, #0x1
	strh	r0, [r2, #0x30]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x1
	ble	.L31	@cond_branch
	mov	r0, #0x0
	strh	r0, [r2, #0x30]
	ldrh	r0, [r2, #0x2e]
	ldrh	r1, [r2, #0x20]
	add	r0, r0, r1
	strh	r0, [r2, #0x20]
.L31:
	ldrh	r0, [r2, #0x22]
	sub	r0, r0, #0x4
	strh	r0, [r2, #0x22]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	mov	r1, #0x4
	neg	r1, r1
	cmp	r0, r1
	bge	.L32	@cond_branch
	add	r0, r2, #0
	bl	DestroyAnimSprite
.L32:
	pop	{r0}
	bx	r0
.Lfe7:
	.size	 AnimMudSportDirtRising,.Lfe7-AnimMudSportDirtRising
	.align	2, 0
	.type	 AnimMudSportDirtFalling,function
	.thumb_func
AnimMudSportDirtFalling:
	push	{lr}
	add	r3, r0, #0
	mov	r0, #0x2e
	ldrsh	r1, [r3, r0]
	cmp	r1, #0
	beq	.L35	@cond_branch
	cmp	r1, #0x1
	beq	.L37	@cond_branch
	b	.L34
.L35:
	ldrh	r0, [r3, #0x26]
	add	r0, r0, #0x4
	strh	r0, [r3, #0x26]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	blt	.L34	@cond_branch
	strh	r1, [r3, #0x26]
	ldrh	r0, [r3, #0x2e]
	add	r0, r0, #0x1
	strh	r0, [r3, #0x2e]
	b	.L34
.L37:
	ldrh	r0, [r3, #0x30]
	add	r0, r0, #0x1
	strh	r0, [r3, #0x30]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	ble	.L34	@cond_branch
	mov	r0, #0x0
	strh	r0, [r3, #0x30]
	mov	r1, #0x3e
	add	r1, r1, r3
	mov	ip, r1
	ldrb	r2, [r1]
	lsl	r0, r2, #0x1d
	lsr	r0, r0, #0x1f
	mov	r1, #0x1
	eor	r1, r1, r0
	lsl	r1, r1, #0x2
	mov	r0, #0x5
	neg	r0, r0
	and	r0, r0, r2
	orr	r0, r0, r1
	mov	r1, ip
	strb	r0, [r1]
	ldrh	r0, [r3, #0x32]
	add	r0, r0, #0x1
	strh	r0, [r3, #0x32]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0xa
	bne	.L34	@cond_branch
	add	r0, r3, #0
	bl	DestroyAnimSprite
.L34:
	pop	{r0}
	bx	r0
.Lfe8:
	.size	 AnimMudSportDirtFalling,.Lfe8-AnimMudSportDirtFalling
	.align	2, 0
	.globl	AnimTask_DigDownMovement
	.type	 AnimTask_DigDownMovement,function
	.thumb_func
AnimTask_DigDownMovement:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	lsl	r0, r2, #0x2
	add	r0, r0, r2
	lsl	r0, r0, #0x3
	ldr	r1, .L46
	add	r1, r0, r1
	ldr	r0, .L46+0x4
	mov	r3, #0x0
	ldrsh	r0, [r0, r3]
	cmp	r0, #0
	bne	.L43	@cond_branch
	ldr	r0, .L46+0x8
	b	.L45
.L47:
	.align	2, 0
.L46:
	.word	gTasks
	.word	gBattleAnimArgs
	.word	AnimTask_DigBounceMovement
.L43:
	ldr	r0, .L48
.L45:
	str	r0, [r1]
	ldr	r1, [r1]
	add	r0, r2, #0
	bl	_call_via_r1
	pop	{r0}
	bx	r0
.L49:
	.align	2, 0
.L48:
	.word	AnimTask_DigEndBounceMovementSetInvisible
.Lfe9:
	.size	 AnimTask_DigDownMovement,.Lfe9-AnimTask_DigDownMovement
	.align	2, 0
	.type	 AnimTask_DigBounceMovement,function
	.thumb_func
AnimTask_DigBounceMovement:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	lsl	r0, r2, #0x2
	add	r0, r0, r2
	lsl	r0, r0, #0x3
	ldr	r1, .L72
	add	r4, r0, r1
	mov	r1, #0x8
	ldrsh	r0, [r4, r1]
	cmp	r0, #0x4
	bls	.LCB577
	b	.L51	@long jump
.LCB577:
	lsl	r0, r0, #0x2
	ldr	r1, .L72+0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L73:
	.align	2, 0
.L72:
	.word	gTasks
	.word	.L66
	.align	2, 0
	.align	2, 0
.L66:
	.word	.L52
	.word	.L56
	.word	.L57
	.word	.L64
	.word	.L65
.L52:
	mov	r0, #0x0
	bl	GetAnimBattlerSpriteId
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strh	r0, [r4, #0x1c]
	ldr	r0, .L74
	ldrb	r0, [r0]
	bl	GetBattlerSpriteBGPriorityRank
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strh	r0, [r4, #0x1e]
	cmp	r0, #0x1
	bne	.L53	@cond_branch
	ldr	r0, .L74+0x4
	ldrh	r0, [r0]
	strh	r0, [r4, #0x20]
	ldr	r0, .L74+0x8
	b	.L68
.L75:
	.align	2, 0
.L74:
	.word	gBattleAnimAttacker
	.word	gBattle_BG1_X
	.word	gBattle_BG1_Y
.L53:
	ldr	r0, .L76
	ldrh	r0, [r0]
	strh	r0, [r4, #0x20]
	ldr	r0, .L76+0x4
.L68:
	ldrh	r0, [r0]
	strh	r0, [r4, #0x22]
	ldr	r0, .L76+0x8
	ldrb	r0, [r0]
	bl	GetBattlerYCoordWithElevation
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r1, r0, #0
	sub	r1, r1, #0x20
	strh	r1, [r4, #0x24]
	add	r0, r0, #0x20
	strh	r0, [r4, #0x26]
	cmp	r1, #0
	bge	.L55	@cond_branch
	mov	r0, #0x0
	strh	r0, [r4, #0x24]
.L55:
	ldr	r2, .L76+0xc
	mov	r3, #0x1c
	ldrsh	r1, [r4, r3]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r2
	add	r0, r0, #0x3e
	ldrb	r1, [r0]
	mov	r2, #0x4
	orr	r1, r1, r2
	strb	r1, [r0]
	b	.L69
.L77:
	.align	2, 0
.L76:
	.word	gBattle_BG2_X
	.word	gBattle_BG2_Y
	.word	gBattleAnimAttacker
	.word	gSprites
.L56:
	ldrb	r0, [r4, #0x1e]
	mov	r2, #0x24
	ldrsh	r1, [r4, r2]
	mov	r3, #0x26
	ldrsh	r2, [r4, r3]
	bl	sub_81150E0
	b	.L69
.L57:
	ldrh	r0, [r4, #0xc]
	add	r0, r0, #0x6
	mov	r1, #0x7f
	and	r0, r0, r1
	strh	r0, [r4, #0xc]
	ldrh	r0, [r4, #0x10]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x10]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x2
	ble	.L58	@cond_branch
	mov	r0, #0x0
	strh	r0, [r4, #0x10]
	ldrh	r0, [r4, #0xe]
	add	r0, r0, #0x1
	strh	r0, [r4, #0xe]
.L58:
	ldr	r1, .L78
	mov	r2, #0xc
	ldrsh	r0, [r4, r2]
	lsl	r0, r0, #0x1
	add	r0, r0, r1
	ldrh	r0, [r0]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x14
	ldrh	r3, [r4, #0xe]
	add	r2, r0, r3
	strh	r2, [r4, #0x12]
	mov	r1, #0x1e
	ldrsh	r0, [r4, r1]
	cmp	r0, #0x1
	bne	.L59	@cond_branch
	ldr	r1, .L78+0x4
	b	.L70
.L79:
	.align	2, 0
.L78:
	.word	gSineTable
	.word	gBattle_BG1_Y
.L59:
	ldr	r1, .L80
.L70:
	ldrh	r0, [r4, #0x22]
	sub	r0, r0, r2
	strh	r0, [r1]
	mov	r2, #0x12
	ldrsh	r0, [r4, r2]
	cmp	r0, #0x3f
	ble	.L51	@cond_branch
	ldrh	r0, [r4, #0x24]
	mov	r1, #0x78
	sub	r2, r1, r0
	strh	r2, [r4, #0x12]
	mov	r3, #0x1e
	ldrsh	r0, [r4, r3]
	cmp	r0, #0x1
	bne	.L62	@cond_branch
	ldr	r1, .L80+0x4
	b	.L71
.L81:
	.align	2, 0
.L80:
	.word	gBattle_BG2_Y
	.word	gBattle_BG1_Y
.L62:
	ldr	r1, .L82
.L71:
	ldrh	r0, [r4, #0x22]
	sub	r0, r0, r2
	strh	r0, [r1]
	ldr	r2, .L82+0x4
	mov	r1, #0x1c
	ldrsh	r0, [r4, r1]
	lsl	r1, r0, #0x4
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	add	r1, r1, r2
	ldrh	r2, [r1, #0x20]
	mov	r3, #0x88
	lsl	r3, r3, #0x1
	add	r0, r3, #0
	sub	r0, r0, r2
	strh	r0, [r1, #0x24]
	b	.L69
.L83:
	.align	2, 0
.L82:
	.word	gBattle_BG2_Y
	.word	gSprites
.L64:
	ldr	r1, .L84
	mov	r0, #0x3
	strb	r0, [r1, #0x15]
.L69:
	ldrh	r0, [r4, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x8]
	b	.L51
.L85:
	.align	2, 0
.L84:
	.word	gScanlineEffect
.L65:
	add	r0, r2, #0
	bl	DestroyAnimVisualTask
	ldr	r2, .L86
	mov	r0, #0x1c
	ldrsh	r1, [r4, r0]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r2
	add	r0, r0, #0x3e
	ldrb	r1, [r0]
	mov	r2, #0x4
	orr	r1, r1, r2
	strb	r1, [r0]
.L51:
	pop	{r4}
	pop	{r0}
	bx	r0
.L87:
	.align	2, 0
.L86:
	.word	gSprites
.Lfe10:
	.size	 AnimTask_DigBounceMovement,.Lfe10-AnimTask_DigBounceMovement
	.align	2, 0
	.type	 AnimTask_DigEndBounceMovementSetInvisible,function
	.thumb_func
AnimTask_DigEndBounceMovementSetInvisible:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	mov	r0, #0x0
	bl	GetAnimBattlerSpriteId
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r2, .L92
	lsl	r1, r0, #0x4
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	add	r1, r1, r2
	add	r3, r1, #0
	add	r3, r3, #0x3e
	ldrb	r0, [r3]
	mov	r2, #0x4
	orr	r0, r0, r2
	strb	r0, [r3]
	mov	r4, #0x0
	strh	r4, [r1, #0x24]
	strh	r4, [r1, #0x26]
	ldr	r0, .L92+0x4
	ldrb	r0, [r0]
	bl	GetBattlerSpriteBGPriorityRank
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	bne	.L89	@cond_branch
	ldr	r0, .L92+0x8
	b	.L91
.L93:
	.align	2, 0
.L92:
	.word	gSprites
	.word	gBattleAnimAttacker
	.word	gBattle_BG1_Y
.L89:
	ldr	r0, .L94
.L91:
	strh	r4, [r0]
	add	r0, r5, #0
	bl	DestroyAnimVisualTask
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L95:
	.align	2, 0
.L94:
	.word	gBattle_BG2_Y
.Lfe11:
	.size	 AnimTask_DigEndBounceMovementSetInvisible,.Lfe11-AnimTask_DigEndBounceMovementSetInvisible
	.align	2, 0
	.globl	AnimTask_DigUpMovement
	.type	 AnimTask_DigUpMovement,function
	.thumb_func
AnimTask_DigUpMovement:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	lsl	r0, r2, #0x2
	add	r0, r0, r2
	lsl	r0, r0, #0x3
	ldr	r1, .L100
	add	r1, r0, r1
	ldr	r0, .L100+0x4
	mov	r3, #0x0
	ldrsh	r0, [r0, r3]
	cmp	r0, #0
	bne	.L97	@cond_branch
	ldr	r0, .L100+0x8
	b	.L99
.L101:
	.align	2, 0
.L100:
	.word	gTasks
	.word	gBattleAnimArgs
	.word	AnimTask_DigSetVisibleUnderground
.L97:
	ldr	r0, .L102
.L99:
	str	r0, [r1]
	ldr	r1, [r1]
	add	r0, r2, #0
	bl	_call_via_r1
	pop	{r0}
	bx	r0
.L103:
	.align	2, 0
.L102:
	.word	AnimTask_DigRiseUpFromHole
.Lfe12:
	.size	 AnimTask_DigUpMovement,.Lfe12-AnimTask_DigUpMovement
	.align	2, 0
	.type	 AnimTask_DigSetVisibleUnderground,function
	.thumb_func
AnimTask_DigSetVisibleUnderground:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	lsl	r0, r2, #0x2
	add	r0, r0, r2
	lsl	r0, r0, #0x3
	ldr	r1, .L110
	add	r4, r0, r1
	mov	r0, #0x8
	ldrsh	r5, [r4, r0]
	cmp	r5, #0
	beq	.L106	@cond_branch
	cmp	r5, #0x1
	beq	.L107	@cond_branch
	b	.L105
.L111:
	.align	2, 0
.L110:
	.word	gTasks
.L106:
	mov	r0, #0x0
	bl	GetAnimBattlerSpriteId
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strh	r0, [r4, #0x1c]
	ldr	r3, .L112
	mov	r0, #0x1c
	ldrsh	r1, [r4, r0]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r3
	add	r0, r0, #0x3e
	ldrb	r2, [r0]
	mov	r1, #0x5
	neg	r1, r1
	and	r1, r1, r2
	strb	r1, [r0]
	mov	r0, #0x1c
	ldrsh	r1, [r4, r0]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r3
	strh	r5, [r0, #0x24]
	mov	r1, #0x1c
	ldrsh	r0, [r4, r1]
	lsl	r1, r0, #0x4
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	add	r1, r1, r3
	ldrh	r2, [r1, #0x22]
	mov	r0, #0xa0
	sub	r0, r0, r2
	strh	r0, [r1, #0x26]
	ldrh	r0, [r4, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x8]
	b	.L105
.L113:
	.align	2, 0
.L112:
	.word	gSprites
.L107:
	add	r0, r2, #0
	bl	DestroyAnimVisualTask
.L105:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lfe13:
	.size	 AnimTask_DigSetVisibleUnderground,.Lfe13-AnimTask_DigSetVisibleUnderground
	.align	2, 0
	.type	 AnimTask_DigRiseUpFromHole,function
	.thumb_func
AnimTask_DigRiseUpFromHole:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	lsl	r0, r2, #0x2
	add	r0, r0, r2
	lsl	r0, r0, #0x3
	ldr	r1, .L128
	add	r4, r0, r1
	mov	r1, #0x8
	ldrsh	r0, [r4, r1]
	cmp	r0, #0x4
	bhi	.L115	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .L128+0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L129:
	.align	2, 0
.L128:
	.word	gTasks
	.word	.L124
	.align	2, 0
	.align	2, 0
.L124:
	.word	.L116
	.word	.L119
	.word	.L120
	.word	.L121
	.word	.L123
.L116:
	mov	r0, #0x0
	bl	GetAnimBattlerSpriteId
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strh	r0, [r4, #0x1c]
	ldr	r0, .L130
	ldrb	r0, [r0]
	bl	GetBattlerSpriteBGPriorityRank
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strh	r0, [r4, #0x1e]
	cmp	r0, #0x1
	bne	.L117	@cond_branch
	ldr	r0, .L130+0x4
	b	.L126
.L131:
	.align	2, 0
.L130:
	.word	gBattleAnimAttacker
	.word	gBattle_BG1_X
.L117:
	ldr	r0, .L132
.L126:
	ldrh	r0, [r0]
	strh	r0, [r4, #0x20]
	ldr	r0, .L132+0x4
	ldrb	r0, [r0]
	bl	GetBattlerYCoordWithElevation
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r1, r0, #0
	sub	r1, r1, #0x20
	strh	r1, [r4, #0x24]
	add	r0, r0, #0x20
	strh	r0, [r4, #0x26]
	b	.L127
.L133:
	.align	2, 0
.L132:
	.word	gBattle_BG2_X
	.word	gBattleAnimAttacker
.L119:
	ldrb	r0, [r4, #0x1e]
	mov	r1, #0x26
	ldrsh	r2, [r4, r1]
	mov	r1, #0x0
	bl	sub_81150E0
	b	.L127
.L120:
	ldr	r2, .L134
	mov	r0, #0x1c
	ldrsh	r1, [r4, r0]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r2
	mov	r1, #0x60
	strh	r1, [r0, #0x26]
	b	.L127
.L135:
	.align	2, 0
.L134:
	.word	gSprites
.L121:
	ldr	r2, .L136
	mov	r0, #0x1c
	ldrsh	r1, [r4, r0]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r2
	ldrh	r1, [r0, #0x26]
	sub	r1, r1, #0x8
	strh	r1, [r0, #0x26]
	mov	r0, #0x1c
	ldrsh	r1, [r4, r0]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r2
	mov	r1, #0x26
	ldrsh	r0, [r0, r1]
	cmp	r0, #0
	bne	.L115	@cond_branch
	ldr	r1, .L136+0x4
	mov	r0, #0x3
	strb	r0, [r1, #0x15]
.L127:
	ldrh	r0, [r4, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x8]
	b	.L115
.L137:
	.align	2, 0
.L136:
	.word	gSprites
	.word	gScanlineEffect
.L123:
	add	r0, r2, #0
	bl	DestroyAnimVisualTask
.L115:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe14:
	.size	 AnimTask_DigRiseUpFromHole,.Lfe14-AnimTask_DigRiseUpFromHole
	.align	2, 0
	.type	 sub_81150E0,function
	.thumb_func
sub_81150E0:
	push	{r4, r5, r6, lr}
	add	sp, sp, #-0xc
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	lsl	r2, r2, #0x10
	lsr	r4, r2, #0x10
	cmp	r0, #0x1
	bne	.L139	@cond_branch
	ldr	r0, .L152
	ldrh	r3, [r0]
	ldr	r0, .L152+0x4
	b	.L151
.L153:
	.align	2, 0
.L152:
	.word	gBattle_BG1_X
	.word	0x4000014
.L139:
	ldr	r0, .L154
	ldrh	r3, [r0]
	ldr	r0, .L154+0x4
.L151:
	str	r0, [sp]
	lsl	r0, r1, #0x10
	cmp	r0, #0
	bge	.L141	@cond_branch
	mov	r1, #0x0
.L141:
	lsl	r2, r1, #0x10
	lsl	r0, r4, #0x10
	asr	r4, r0, #0x10
	cmp	r2, r0
	bge	.L143	@cond_branch
	ldr	r5, .L154+0x8
	mov	r0, #0xf0
	lsl	r0, r0, #0x3
	add	r6, r5, r0
.L144:
	asr	r2, r2, #0x10
	lsl	r1, r2, #0x1
	add	r0, r1, r5
	strh	r3, [r0]
	add	r1, r1, r6
	strh	r3, [r1]
	add	r2, r2, #0x1
	lsl	r2, r2, #0x10
	lsr	r1, r2, #0x10
	lsl	r2, r1, #0x10
	asr	r0, r2, #0x10
	cmp	r0, r4
	blt	.L144	@cond_branch
.L143:
	lsl	r1, r1, #0x10
	asr	r0, r1, #0x10
	cmp	r0, #0x9f
	bgt	.L150	@cond_branch
	ldr	r4, .L154+0x8
	lsl	r0, r3, #0x10
	asr	r0, r0, #0x10
	add	r3, r0, #0
	add	r3, r3, #0xf0
	mov	r0, #0xf0
	lsl	r0, r0, #0x3
	add	r5, r4, r0
.L148:
	asr	r2, r1, #0x10
	lsl	r1, r2, #0x1
	add	r0, r1, r4
	strh	r3, [r0]
	add	r1, r1, r5
	strh	r3, [r1]
	add	r2, r2, #0x1
	lsl	r1, r2, #0x10
	asr	r0, r1, #0x10
	cmp	r0, #0x9f
	ble	.L148	@cond_branch
.L150:
	ldr	r0, .L154+0xc
	str	r0, [sp, #0x4]
	mov	r1, sp
	mov	r2, #0x0
	mov	r0, #0x1
	strb	r0, [r1, #0x8]
	mov	r0, sp
	strb	r2, [r0, #0x9]
	ldr	r0, [sp]
	ldr	r1, [sp, #0x4]
	ldr	r2, [sp, #0x8]
	bl	ScanlineEffect_SetParams
	add	sp, sp, #0xc
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L155:
	.align	2, 0
.L154:
	.word	gBattle_BG2_X
	.word	0x4000018
	.word	gScanlineEffectRegBuffers
	.word	-0x5d9fffff
.Lfe15:
	.size	 sub_81150E0,.Lfe15-sub_81150E0
	.align	2, 0
	.type	 AnimDirtPlumeParticle,function
	.thumb_func
AnimDirtPlumeParticle:
	push	{r4, r5, r6, r7, lr}
	add	r5, r0, #0
	ldr	r0, .L161
	mov	r2, #0x0
	ldrsh	r1, [r0, r2]
	add	r7, r0, #0
	cmp	r1, #0
	bne	.L157	@cond_branch
	ldr	r0, .L161+0x4
	b	.L160
.L162:
	.align	2, 0
.L161:
	.word	gBattleAnimArgs
	.word	gBattleAnimAttacker
.L157:
	ldr	r0, .L163
.L160:
	ldrb	r4, [r0]
	mov	r6, #0x18
	add	r1, r7, #0
	mov	r2, #0x2
	ldrsh	r0, [r1, r2]
	cmp	r0, #0x1
	bne	.L159	@cond_branch
	neg	r0, r6
	lsl	r0, r0, #0x10
	lsr	r6, r0, #0x10
	mov	r2, #0x4
	ldrsh	r0, [r1, r2]
	neg	r0, r0
	strh	r0, [r1, #0x4]
.L159:
	add	r0, r4, #0
	mov	r1, #0x2
	bl	GetBattlerSpriteCoord
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r0, r0, r6
	strh	r0, [r5, #0x20]
	add	r0, r4, #0
	bl	GetBattlerYCoordWithElevation
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r0, r0, #0x1e
	strh	r0, [r5, #0x22]
	ldrh	r1, [r7, #0xa]
	strh	r1, [r5, #0x2e]
	ldrh	r1, [r7, #0x4]
	ldrh	r2, [r5, #0x20]
	add	r1, r1, r2
	strh	r1, [r5, #0x32]
	ldrh	r1, [r7, #0x6]
	add	r0, r0, r1
	strh	r0, [r5, #0x36]
	ldrh	r0, [r7, #0x8]
	strh	r0, [r5, #0x38]
	add	r0, r5, #0
	bl	InitAnimArcTranslation
	ldr	r0, .L163+0x4
	str	r0, [r5, #0x1c]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L164:
	.align	2, 0
.L163:
	.word	gBattleAnimTarget
	.word	AnimDirtPlumeParticle_Step
.Lfe16:
	.size	 AnimDirtPlumeParticle,.Lfe16-AnimDirtPlumeParticle
	.align	2, 0
	.type	 AnimDirtPlumeParticle_Step,function
	.thumb_func
AnimDirtPlumeParticle_Step:
	push	{r4, lr}
	add	r4, r0, #0
	bl	TranslateAnimHorizontalArc
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L166	@cond_branch
	add	r0, r4, #0
	bl	DestroyAnimSprite
.L166:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe17:
	.size	 AnimDirtPlumeParticle_Step,.Lfe17-AnimDirtPlumeParticle_Step
	.align	2, 0
	.type	 AnimDigDirtMound,function
	.thumb_func
AnimDigDirtMound:
	push	{r4, r5, r6, lr}
	add	r6, r0, #0
	ldr	r0, .L171
	mov	r1, #0x0
	ldrsh	r0, [r0, r1]
	cmp	r0, #0
	bne	.L168	@cond_branch
	ldr	r0, .L171+0x4
	b	.L170
.L172:
	.align	2, 0
.L171:
	.word	gBattleAnimArgs
	.word	gBattleAnimAttacker
.L168:
	ldr	r0, .L173
.L170:
	ldrb	r5, [r0]
	add	r0, r5, #0
	mov	r1, #0x0
	bl	GetBattlerSpriteCoord
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r2, .L173+0x4
	add	r0, r0, r2
	ldr	r4, .L173+0x8
	mov	r3, #0x2
	ldrsh	r1, [r4, r3]
	lsl	r1, r1, #0x5
	add	r0, r0, r1
	strh	r0, [r6, #0x20]
	add	r0, r5, #0
	bl	GetBattlerYCoordWithElevation
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r0, r0, #0x20
	strh	r0, [r6, #0x22]
	ldrh	r2, [r6, #0x4]
	lsl	r1, r2, #0x16
	lsr	r1, r1, #0x16
	mov	r3, #0x2
	ldrsh	r0, [r4, r3]
	lsl	r0, r0, #0x3
	add	r1, r1, r0
	ldr	r3, .L173+0xc
	add	r0, r3, #0
	and	r1, r1, r0
	ldr	r0, .L173+0x10
	and	r0, r0, r2
	orr	r0, r0, r1
	strh	r0, [r6, #0x4]
	ldr	r1, .L173+0x14
	add	r0, r6, #0
	bl	StoreSpriteCallbackInData6
	ldrh	r0, [r4, #0x4]
	strh	r0, [r6, #0x2e]
	ldr	r0, .L173+0x18
	str	r0, [r6, #0x1c]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L174:
	.align	2, 0
.L173:
	.word	gBattleAnimTarget
	.word	0xfff0
	.word	gBattleAnimArgs
	.word	0x3ff
	.word	-0x400
	.word	DestroyAnimSprite
	.word	WaitAnimForDuration
.Lfe18:
	.size	 AnimDigDirtMound,.Lfe18-AnimDigDirtMound
	.align	2, 0
	.globl	AnimTask_HorizontalShake
	.type	 AnimTask_HorizontalShake,function
	.thumb_func
AnimTask_HorizontalShake:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	lsl	r0, r5, #0x2
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	ldr	r1, .L194
	add	r4, r0, r1
	ldr	r0, .L194+0x4
	ldrh	r2, [r0, #0x2]
	mov	r3, #0x2
	ldrsh	r1, [r0, r3]
	add	r6, r0, #0
	cmp	r1, #0
	beq	.L176	@cond_branch
	add	r0, r2, #0x3
	b	.L191
.L195:
	.align	2, 0
.L194:
	.word	gTasks
	.word	gBattleAnimArgs
.L176:
	ldr	r0, .L196
	ldrh	r0, [r0]
	mov	r1, #0xa
	bl	__udivsi3
	add	r0, r0, #0x3
.L191:
	strh	r0, [r4, #0x26]
	strh	r0, [r4, #0x24]
	add	r1, r6, #0
	ldrh	r0, [r1, #0x4]
	strh	r0, [r4, #0xe]
	mov	r2, #0x0
	ldrsh	r0, [r1, r2]
	cmp	r0, #0x4
	beq	.L180	@cond_branch
	cmp	r0, #0x5
	bne	.L187	@cond_branch
	ldr	r0, .L196+0x4
	ldrh	r0, [r0]
	strh	r0, [r4, #0x22]
	ldr	r0, .L196+0x8
	b	.L192
.L197:
	.align	2, 0
.L196:
	.word	gAnimMovePower
	.word	gBattle_BG3_X
	.word	AnimTask_ShakeTerrain
.L180:
	mov	r0, #0x0
	strh	r0, [r4, #0x22]
	mov	r5, #0x0
.L184:
	lsl	r0, r5, #0x18
	lsr	r0, r0, #0x18
	bl	IsBattlerSpriteVisible
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L183	@cond_branch
	mov	r3, #0x22
	ldrsh	r0, [r4, r3]
	add	r0, r0, #0x9
	lsl	r0, r0, #0x1
	add	r1, r4, #0
	add	r1, r1, #0x8
	add	r1, r1, r0
	ldr	r0, .L198
	add	r0, r5, r0
	ldrb	r0, [r0]
	strh	r0, [r1]
	ldrh	r0, [r4, #0x22]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x22]
.L183:
	add	r0, r5, #0x1
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
	cmp	r5, #0x3
	bls	.L184	@cond_branch
	b	.L193
.L199:
	.align	2, 0
.L198:
	.word	gBattlerSpriteIds
.L187:
	ldrb	r0, [r6]
	bl	GetAnimBattlerSpriteId
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strh	r0, [r4, #0x1a]
	cmp	r0, #0xff
	bne	.L188	@cond_branch
	add	r0, r5, #0
	bl	DestroyAnimVisualTask
	b	.L178
.L188:
	mov	r0, #0x1
	strh	r0, [r4, #0x22]
.L193:
	ldr	r0, .L200
.L192:
	str	r0, [r4]
.L178:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L201:
	.align	2, 0
.L200:
	.word	AnimTask_ShakeBattlers
.Lfe19:
	.size	 AnimTask_HorizontalShake,.Lfe19-AnimTask_HorizontalShake
	.align	2, 0
	.type	 AnimTask_ShakeTerrain,function
	.thumb_func
AnimTask_ShakeTerrain:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	lsl	r0, r2, #0x2
	add	r0, r0, r2
	lsl	r0, r0, #0x3
	ldr	r1, .L220
	add	r3, r0, r1
	mov	r0, #0x8
	ldrsh	r1, [r3, r0]
	cmp	r1, #0x1
	beq	.L209	@cond_branch
	cmp	r1, #0x1
	bgt	.L218	@cond_branch
	cmp	r1, #0
	beq	.L204	@cond_branch
	b	.L203
.L221:
	.align	2, 0
.L220:
	.word	gTasks
.L218:
	cmp	r1, #0x2
	beq	.L215	@cond_branch
	b	.L203
.L204:
	ldrh	r0, [r3, #0xa]
	add	r0, r0, #0x1
	strh	r0, [r3, #0xa]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x1
	ble	.L203	@cond_branch
	strh	r1, [r3, #0xa]
	ldrh	r1, [r3, #0xc]
	mov	r0, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L206	@cond_branch
	ldr	r1, .L222
	ldrh	r0, [r3, #0x26]
	ldrh	r2, [r3, #0x22]
	add	r0, r0, r2
	strh	r0, [r1]
	b	.L207
.L223:
	.align	2, 0
.L222:
	.word	gBattle_BG3_X
.L206:
	ldr	r0, .L224
	ldrh	r1, [r3, #0x22]
	ldrh	r2, [r3, #0x26]
	sub	r1, r1, r2
	strh	r1, [r0]
.L207:
	ldrh	r0, [r3, #0xc]
	add	r0, r0, #0x1
	strh	r0, [r3, #0xc]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	mov	r2, #0xe
	ldrsh	r1, [r3, r2]
	cmp	r0, r1
	bne	.L203	@cond_branch
	mov	r0, #0x0
	strh	r0, [r3, #0xc]
	ldrh	r0, [r3, #0x24]
	sub	r0, r0, #0x1
	strh	r0, [r3, #0x24]
	b	.L219
.L225:
	.align	2, 0
.L224:
	.word	gBattle_BG3_X
.L209:
	ldrh	r0, [r3, #0xa]
	add	r0, r0, #0x1
	strh	r0, [r3, #0xa]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x1
	ble	.L203	@cond_branch
	mov	r0, #0x0
	strh	r0, [r3, #0xa]
	ldrh	r0, [r3, #0xc]
	and	r1, r1, r0
	cmp	r1, #0
	bne	.L211	@cond_branch
	ldr	r1, .L226
	ldrh	r0, [r3, #0x24]
	ldrh	r2, [r3, #0x22]
	add	r0, r0, r2
	strh	r0, [r1]
	b	.L212
.L227:
	.align	2, 0
.L226:
	.word	gBattle_BG3_X
.L211:
	ldr	r0, .L228
	ldrh	r1, [r3, #0x22]
	ldrh	r2, [r3, #0x24]
	sub	r1, r1, r2
	strh	r1, [r0]
.L212:
	ldrh	r0, [r3, #0xc]
	add	r0, r0, #0x1
	strh	r0, [r3, #0xc]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x4
	bne	.L203	@cond_branch
	mov	r0, #0x0
	strh	r0, [r3, #0xc]
	ldrh	r0, [r3, #0x24]
	sub	r0, r0, #0x1
	strh	r0, [r3, #0x24]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L203	@cond_branch
.L219:
	ldrh	r0, [r3, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r3, #0x8]
	b	.L203
.L229:
	.align	2, 0
.L228:
	.word	gBattle_BG3_X
.L215:
	ldr	r1, .L230
	ldrh	r0, [r3, #0x22]
	strh	r0, [r1]
	add	r0, r2, #0
	bl	DestroyAnimVisualTask
.L203:
	pop	{r0}
	bx	r0
.L231:
	.align	2, 0
.L230:
	.word	gBattle_BG3_X
.Lfe20:
	.size	 AnimTask_ShakeTerrain,.Lfe20-AnimTask_ShakeTerrain
	.align	2, 0
	.type	 AnimTask_ShakeBattlers,function
	.thumb_func
AnimTask_ShakeBattlers:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	lsl	r0, r3, #0x2
	add	r0, r0, r3
	lsl	r0, r0, #0x3
	ldr	r1, .L251
	add	r4, r0, r1
	mov	r0, #0x8
	ldrsh	r5, [r4, r0]
	cmp	r5, #0x1
	beq	.L237	@cond_branch
	cmp	r5, #0x1
	bgt	.L249	@cond_branch
	cmp	r5, #0
	beq	.L234	@cond_branch
	b	.L233
.L252:
	.align	2, 0
.L251:
	.word	gTasks
.L249:
	cmp	r5, #0x2
	beq	.L241	@cond_branch
	b	.L233
.L234:
	ldrh	r0, [r4, #0xa]
	add	r0, r0, #0x1
	strh	r0, [r4, #0xa]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x1
	ble	.L233	@cond_branch
	strh	r5, [r4, #0xa]
	add	r0, r4, #0
	bl	SetBattlersXOffsetForShake
	ldrh	r0, [r4, #0xc]
	add	r0, r0, #0x1
	strh	r0, [r4, #0xc]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	mov	r2, #0xe
	ldrsh	r1, [r4, r2]
	cmp	r0, r1
	bne	.L233	@cond_branch
	strh	r5, [r4, #0xc]
	ldrh	r0, [r4, #0x24]
	sub	r0, r0, #0x1
	strh	r0, [r4, #0x24]
	b	.L250
.L237:
	ldrh	r0, [r4, #0xa]
	add	r0, r0, #0x1
	mov	r5, #0x0
	strh	r0, [r4, #0xa]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x1
	ble	.L233	@cond_branch
	strh	r5, [r4, #0xa]
	add	r0, r4, #0
	bl	SetBattlersXOffsetForShake
	ldrh	r0, [r4, #0xc]
	add	r0, r0, #0x1
	strh	r0, [r4, #0xc]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x4
	bne	.L233	@cond_branch
	strh	r5, [r4, #0xc]
	ldrh	r0, [r4, #0x24]
	sub	r0, r0, #0x1
	strh	r0, [r4, #0x24]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L233	@cond_branch
.L250:
	ldrh	r0, [r4, #0x8]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x8]
	b	.L233
.L241:
	mov	r2, #0x0
	mov	r7, #0x22
	ldrsh	r0, [r4, r7]
	cmp	r2, r0
	bge	.L243	@cond_branch
	ldr	r0, .L253
	mov	ip, r0
	add	r5, r4, #0
	add	r5, r5, #0x8
	mov	r6, #0x0
.L245:
	add	r0, r2, #0
	add	r0, r0, #0x9
	lsl	r0, r0, #0x1
	add	r0, r5, r0
	mov	r7, #0x0
	ldrsh	r1, [r0, r7]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, ip
	strh	r6, [r0, #0x24]
	add	r0, r2, #0x1
	lsl	r0, r0, #0x10
	lsr	r2, r0, #0x10
	mov	r1, #0x22
	ldrsh	r0, [r4, r1]
	cmp	r2, r0
	blt	.L245	@cond_branch
.L243:
	add	r0, r3, #0
	bl	DestroyAnimVisualTask
.L233:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L254:
	.align	2, 0
.L253:
	.word	gSprites
.Lfe21:
	.size	 AnimTask_ShakeBattlers,.Lfe21-AnimTask_ShakeBattlers
	.align	2, 0
	.type	 SetBattlersXOffsetForShake,function
	.thumb_func
SetBattlersXOffsetForShake:
	push	{r4, r5, r6, r7, lr}
	add	r3, r0, #0
	ldrh	r1, [r3, #0xc]
	mov	r4, #0x1
	add	r0, r4, #0
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L256	@cond_branch
	mov	r0, #0x24
	ldrsh	r1, [r3, r0]
	lsr	r0, r1, #0x1f
	add	r1, r1, r0
	asr	r1, r1, #0x1
	ldrh	r2, [r3, #0x24]
	add	r0, r4, #0
	and	r0, r0, r2
	add	r1, r1, r0
	lsl	r1, r1, #0x10
	lsr	r4, r1, #0x10
	b	.L257
.L256:
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	lsr	r1, r0, #0x1f
	add	r0, r0, r1
	asr	r0, r0, #0x1
	neg	r0, r0
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
.L257:
	mov	r2, #0x0
	mov	r7, #0x22
	ldrsh	r0, [r3, r7]
	cmp	r2, r0
	bge	.L259	@cond_branch
	ldr	r6, .L263
	add	r5, r3, #0
	add	r5, r5, #0x8
.L261:
	add	r0, r2, #0
	add	r0, r0, #0x9
	lsl	r0, r0, #0x1
	add	r0, r5, r0
	mov	r7, #0x0
	ldrsh	r1, [r0, r7]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r6
	strh	r4, [r0, #0x24]
	add	r0, r2, #0x1
	lsl	r0, r0, #0x10
	lsr	r2, r0, #0x10
	mov	r1, #0x22
	ldrsh	r0, [r3, r1]
	cmp	r2, r0
	blt	.L261	@cond_branch
.L259:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L264:
	.align	2, 0
.L263:
	.word	gSprites
.Lfe22:
	.size	 SetBattlersXOffsetForShake,.Lfe22-SetBattlersXOffsetForShake
	.align	2, 0
	.globl	AnimTask_IsPowerOver99
	.type	 AnimTask_IsPowerOver99,function
	.thumb_func
AnimTask_IsPowerOver99:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	ldr	r3, .L267
	mov	r2, #0x0
	ldr	r0, .L267+0x4
	ldrh	r0, [r0]
	cmp	r0, #0x63
	bls	.L266	@cond_branch
	mov	r2, #0x1
.L266:
	strh	r2, [r3, #0x1e]
	add	r0, r1, #0
	bl	DestroyAnimVisualTask
	pop	{r0}
	bx	r0
.L268:
	.align	2, 0
.L267:
	.word	gBattleAnimArgs
	.word	gAnimMovePower
.Lfe23:
	.size	 AnimTask_IsPowerOver99,.Lfe23-AnimTask_IsPowerOver99
	.align	2, 0
	.globl	AnimTask_PositionFissureBgOnBattler
	.type	 AnimTask_PositionFissureBgOnBattler,function
	.thumb_func
AnimTask_PositionFissureBgOnBattler:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #0x18
	lsr	r7, r0, #0x18
	ldr	r2, .L274
	ldrh	r1, [r2]
	mov	r0, #0x1
	and	r0, r0, r1
	add	r6, r2, #0
	cmp	r0, #0
	beq	.L270	@cond_branch
	ldr	r0, .L274+0x4
	b	.L273
.L275:
	.align	2, 0
.L274:
	.word	gBattleAnimArgs
	.word	gBattleAnimTarget
.L270:
	ldr	r0, .L276
.L273:
	ldrb	r0, [r0]
	add	r5, r0, #0
	mov	r1, #0x0
	ldrsh	r0, [r6, r1]
	cmp	r0, #0x1
	ble	.L272	@cond_branch
	mov	r0, #0x2
	eor	r5, r5, r0
.L272:
	ldr	r0, .L276+0x4
	ldrb	r1, [r6, #0x2]
	bl	CreateTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r4, r0, #0x2
	add	r4, r4, r0
	lsl	r4, r4, #0x3
	ldr	r0, .L276+0x8
	add	r4, r4, r0
	add	r0, r5, #0
	mov	r1, #0x2
	bl	GetBattlerSpriteCoord
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r1, #0x20
	sub	r1, r1, r0
	ldr	r2, .L276+0xc
	add	r0, r2, #0
	and	r1, r1, r0
	strh	r1, [r4, #0xa]
	add	r0, r5, #0
	mov	r1, #0x3
	bl	GetBattlerSpriteCoord
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r1, #0x40
	sub	r1, r1, r0
	mov	r0, #0xff
	and	r1, r1, r0
	strh	r1, [r4, #0xc]
	ldr	r2, .L276+0x10
	ldrh	r0, [r4, #0xa]
	strh	r0, [r2]
	ldr	r0, .L276+0x14
	strh	r1, [r0]
	ldrh	r0, [r6, #0x4]
	strh	r0, [r4, #0xe]
	add	r0, r7, #0
	bl	DestroyAnimVisualTask
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L277:
	.align	2, 0
.L276:
	.word	gBattleAnimAttacker
	.word	sub_81156D0
	.word	gTasks
	.word	0x1ff
	.word	gBattle_BG3_X
	.word	gBattle_BG3_Y
.Lfe24:
	.size	 AnimTask_PositionFissureBgOnBattler,.Lfe24-AnimTask_PositionFissureBgOnBattler
	.align	2, 0
	.type	 sub_81156D0,function
	.thumb_func
sub_81156D0:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	lsl	r0, r3, #0x2
	add	r0, r0, r3
	lsl	r0, r0, #0x3
	ldr	r1, .L281
	add	r2, r0, r1
	ldr	r0, .L281+0x4
	mov	r4, #0xe
	ldrsh	r1, [r0, r4]
	mov	r4, #0xe
	ldrsh	r0, [r2, r4]
	cmp	r1, r0
	bne	.L279	@cond_branch
	ldr	r0, .L281+0x8
	mov	r1, #0x0
	strh	r1, [r0]
	ldr	r0, .L281+0xc
	strh	r1, [r0]
	add	r0, r3, #0
	bl	DestroyTask
	b	.L280
.L282:
	.align	2, 0
.L281:
	.word	gTasks
	.word	gBattleAnimArgs
	.word	gBattle_BG3_X
	.word	gBattle_BG3_Y
.L279:
	ldr	r1, .L283
	ldrh	r0, [r2, #0xa]
	strh	r0, [r1]
	ldr	r1, .L283+0x4
	ldrh	r0, [r2, #0xc]
	strh	r0, [r1]
.L280:
	pop	{r4}
	pop	{r0}
	bx	r0
.L284:
	.align	2, 0
.L283:
	.word	gBattle_BG3_X
	.word	gBattle_BG3_Y
.Lfe25:
	.size	 sub_81156D0,.Lfe25-sub_81156D0
.text
	.align	2, 0

