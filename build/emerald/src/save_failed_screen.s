@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.globl	gSaveFailedType
	.section ewram_data,"aw"
	.align	1, 0
	.type	 gSaveFailedType,object
	.size	 gSaveFailedType,2
gSaveFailedType:
	.short	0x0
	.globl	gSaveFailedClockInfo
	.align	1, 0
	.type	 gSaveFailedClockInfo,object
	.size	 gSaveFailedClockInfo,4
gSaveFailedClockInfo:
	.short	0x0
	.space	2
	.globl	gSaveFailedUnused1
	.type	 gSaveFailedUnused1,object
	.size	 gSaveFailedUnused1,12
gSaveFailedUnused1:
	.byte	0x0
	.space	11
	.globl	gSaveFailedWindowIds
	.type	 gSaveFailedWindowIds,object
	.size	 gSaveFailedWindowIds,2
gSaveFailedWindowIds:
	.byte	0x0
	.space	1
	.globl	gSaveFailedUnused2
	.type	 gSaveFailedUnused2,object
	.size	 gSaveFailedUnused2,4
gSaveFailedUnused2:
	.byte	0x0
	.space	3
	.section .rodata
	.align	2, 0
	.type	 sClockOamData,object
	.size	 sClockOamData,8
sClockOamData:
	.byte	0xa0
	.byte	0x0
	.byte	0x0
	.byte	0x40
	.byte	0x0
	.byte	0x0
	.short	0x0
	.align	2, 0
	.type	 gUnknown_085EFD88,object
	.size	 gUnknown_085EFD88,12
gUnknown_085EFD88:
	.byte	0xf8
	.byte	0x1
	.byte	0x0
	.space	1
	.byte	0xe2
	.byte	0x20
	.byte	0x0
	.space	1
	.byte	0xf3
	.byte	0x30
	.byte	0x0
	.space	1
	.align	2, 0
	.type	 gUnknown_085EFD94,object
gUnknown_085EFD94:
	.byte	0xff
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.short	0x0
	.size	 gUnknown_085EFD94,8
	.align	2, 0
	.type	 gUnknown_085EFD9C,object
gUnknown_085EFD9C:
	.byte	0x0
	.byte	0x1
	.byte	0xd
	.byte	0x1c
	.byte	0x6
	.byte	0xf
	.short	0x1
	.size	 gUnknown_085EFD9C,8
	.align	2, 0
	.type	 gUnknown_085EFDA4,object
gUnknown_085EFDA4:
	.byte	0x0
	.byte	0xe
	.byte	0x9
	.byte	0x2
	.byte	0x2
	.byte	0xf
	.short	0xa9
	.size	 gUnknown_085EFDA4,8
	.type	 sClockFrames,object
	.size	 sClockFrames,24
sClockFrames:
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x5
	.byte	0x0
	.byte	0x0
	.byte	0x9
	.byte	0x0
	.byte	0x0
	.byte	0x5
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.byte	0x1
	.byte	0x9
	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x1
	.byte	0x0
	.type	 sSaveFailedClockPal,object
sSaveFailedClockPal:
	.byte	0x2c
	.byte	0x2e
	.byte	0x0
	.byte	0x0
	.byte	0xe7
	.byte	0x1c
	.byte	0xef
	.byte	0x3d
	.byte	0xf7
	.byte	0x5e
	.byte	0xff
	.byte	0x7f
	.byte	0x1f
	.byte	0x15
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.size	 sSaveFailedClockPal,32
	.align	2, 0
	.type	 sSaveFailedClockGfx,object
sSaveFailedClockGfx:
	.word	0x18010
	.word	0xa
	.word	0x44020022
	.word	0x2550200
	.word	0x65554200
	.word	0x3305420
	.word	0x30556542
	.word	0x1c0003
	.word	0x55040044
	.word	0x56120400
	.word	0x3002455
	.word	0x3300245
	.word	0x10246e55
	.word	0x55274003
	.word	0x3203300
	.word	-0x3aabd00
	.word	0x53104b20
	.word	0x23100400
	.word	0x3001e00
	.word	0x30bf0245
	.word	0x4b202403
	.word	0x5b105310
	.word	0x47607fc0
	.word	-0x2f3dacf0
	.word	0x663b207f
	.word	0x650245
	.word	0xbf6603
	.word	0x7ff0668c
	.word	0x7ff07ff0
	.word	0x7ff07ff0
	.word	0x50e77ff0
	.word	0x47607f
	.word	-0xfa99981
	.word	0x107fc07f
	.word	0x7ff0c023
	.word	0x7f70
	.size	 sSaveFailedClockGfx,144
.text
	.align	2, 0
	.type	 SaveFailedScreenTextPrint,function
	.thumb_func
SaveFailedScreenTextPrint:
	push	{r4, r5, lr}
	add	sp, sp, #-0x18
	add	r5, r0, #0
	add	r4, r1, #0
	add	r3, r2, #0
	lsl	r3, r3, #0x18
	add	r0, sp, #0x14
	mov	r2, #0x0
	strb	r2, [r0]
	add	r1, r0, #0
	mov	r0, #0xf
	strb	r0, [r1, #0x1]
	mov	r0, #0x3
	strb	r0, [r1, #0x2]
	ldr	r0, .L3
	ldrb	r0, [r0]
	lsl	r4, r4, #0x1b
	lsr	r4, r4, #0x18
	lsr	r3, r3, #0x15
	add	r3, r3, #0x1
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	str	r2, [sp]
	str	r2, [sp, #0x4]
	str	r1, [sp, #0x8]
	str	r2, [sp, #0xc]
	str	r5, [sp, #0x10]
	mov	r1, #0x1
	add	r2, r4, #0
	bl	AddTextPrinterParameterized4
	add	sp, sp, #0x18
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L4:
	.align	2, 0
.L3:
	.word	gSaveFailedWindowIds
.Lfe1:
	.size	 SaveFailedScreenTextPrint,.Lfe1-SaveFailedScreenTextPrint
	.align	2, 0
	.globl	DoSaveFailedScreen
	.type	 DoSaveFailedScreen,function
	.thumb_func
DoSaveFailedScreen:
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	ldr	r0, .L6
	bl	SetMainCallback2
	ldr	r0, .L6+0x4
	strh	r4, [r0]
	ldr	r1, .L6+0x8
	mov	r2, #0x0
	mov	r0, #0x0
	strh	r0, [r1]
	strh	r0, [r1, #0x2]
	ldr	r0, .L6+0xc
	strb	r2, [r0]
	strb	r2, [r0, #0x1]
	pop	{r4}
	pop	{r0}
	bx	r0
.L7:
	.align	2, 0
.L6:
	.word	CB2_SaveFailedScreen
	.word	gSaveFailedType
	.word	gSaveFailedClockInfo
	.word	gSaveFailedWindowIds
.Lfe2:
	.size	 DoSaveFailedScreen,.Lfe2-DoSaveFailedScreen
	.align	2, 0
	.type	 VBlankCB,function
	.thumb_func
VBlankCB:
	push	{lr}
	bl	LoadOam
	bl	ProcessSpriteCopyRequests
	bl	TransferPlttBuffer
	pop	{r0}
	bx	r0
.Lfe3:
	.size	 VBlankCB,.Lfe3-VBlankCB
	.align	2, 0
	.type	 CB2_SaveFailedScreen,function
	.thumb_func
CB2_SaveFailedScreen:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0xc
	ldr	r0, .L16
	mov	r1, #0x87
	lsl	r1, r1, #0x3
	add	r7, r0, r1
	ldrb	r0, [r7]
	cmp	r0, #0
	beq	.L12	@cond_branch
	cmp	r0, #0x1
	bne	.LCB116
	b	.L13	@long jump
.LCB116:
.L12:
	mov	r0, #0x0
	bl	SetVBlankCallback
	mov	r0, #0x0
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0xe
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0xc
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0xa
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x8
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x1c
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x1e
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x18
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x1a
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x14
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x16
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x10
	mov	r1, #0x0
	bl	SetGpuReg
	mov	r0, #0x12
	mov	r1, #0x0
	bl	SetGpuReg
	add	r1, sp, #0x4
	mov	r0, #0x0
	strh	r0, [r1]
	ldr	r2, .L16+0x4
	str	r1, [r2]
	mov	r1, #0xc0
	lsl	r1, r1, #0x13
	str	r1, [r2, #0x4]
	ldr	r0, .L16+0x8
	str	r0, [r2, #0x8]
	ldr	r0, [r2, #0x8]
	mov	r3, #0x0
	mov	r8, r3
	str	r3, [sp, #0x8]
	add	r4, sp, #0x8
	str	r4, [r2]
	mov	r0, #0xe0
	lsl	r0, r0, #0x13
	str	r0, [r2, #0x4]
	ldr	r0, .L16+0xc
	str	r0, [r2, #0x8]
	ldr	r0, [r2, #0x8]
	add	r0, sp, #0x4
	mov	r3, r8
	strh	r3, [r0]
	str	r0, [r2]
	mov	r0, #0xa0
	lsl	r0, r0, #0x13
	str	r0, [r2, #0x4]
	ldr	r0, .L16+0x10
	str	r0, [r2, #0x8]
	ldr	r0, [r2, #0x8]
	ldr	r0, .L16+0x14
	bl	LZ77UnCompVram
	ldr	r0, .L16+0x18
	ldr	r1, .L16+0x1c
	bl	LZ77UnCompVram
	ldr	r0, .L16+0x20
	ldr	r1, .L16+0x24
	bl	LZ77UnCompVram
	ldr	r0, .L16+0x28
	ldr	r1, .L16+0x2c
	bl	LZ77UnCompVram
	mov	r0, #0x0
	bl	ResetBgsAndClearDma3BusyFlags
	ldr	r1, .L16+0x30
	mov	r0, #0x0
	mov	r2, #0x3
	bl	InitBgsFromTemplates
	ldr	r5, .L16+0x34
	mov	r0, #0x0
	add	r1, r5, #0
	bl	SetBgTilemapBuffer
	mov	r0, r8
	str	r0, [sp, #0x8]
	ldr	r2, .L16+0x38
	add	r0, r4, #0
	add	r1, r5, #0
	bl	CpuSet
	ldr	r1, .L16+0x3c
	mov	r2, #0x90
	lsl	r2, r2, #0x1
	mov	r6, #0x85
	lsl	r6, r6, #0x2
	mov	r0, #0x0
	add	r3, r6, #0
	bl	LoadBgTiles
	ldr	r0, .L16+0x40
	bl	InitWindows
	ldr	r0, .L16+0x44
	bl	AddWindowWithoutTileMap
	ldr	r4, .L16+0x48
	strb	r0, [r4]
	ldrb	r0, [r4]
	mov	r1, #0x80
	lsl	r1, r1, #0x4
	add	r2, r5, r1
	mov	r1, #0x7
	bl	SetWindowAttribute
	ldr	r0, .L16+0x4c
	bl	AddWindowWithoutTileMap
	strb	r0, [r4, #0x1]
	ldrb	r0, [r4, #0x1]
	mov	r3, #0xe8
	lsl	r3, r3, #0x5
	add	r5, r5, r3
	mov	r1, #0x7
	add	r2, r5, #0
	bl	SetWindowAttribute
	bl	DeactivateAllTextPrinters
	bl	ResetSpriteData
	bl	ResetTasks
	bl	ResetPaletteFade
	ldr	r0, .L16+0x50
	mov	r1, #0x0
	mov	r2, #0x40
	bl	LoadPalette
	ldr	r0, .L16+0x54
	mov	r1, #0x80
	lsl	r1, r1, #0x1
	mov	r2, #0x20
	bl	LoadPalette
	ldr	r0, .L16+0x58
	mov	r1, #0xe0
	mov	r2, #0x20
	bl	LoadPalette
	ldr	r0, .L16+0x5c
	mov	r1, #0xf0
	mov	r2, #0x20
	bl	LoadPalette
	ldrb	r0, [r4]
	mov	r1, #0x0
	add	r2, r6, #0
	mov	r3, #0xe
	bl	DrawStdFrameWithCustomTileAndPalette
	ldrb	r0, [r4, #0x1]
	mov	r1, #0x0
	add	r2, r6, #0
	mov	r3, #0xe
	bl	DrawStdFrameWithCustomTileAndPalette
	ldrb	r0, [r4, #0x1]
	mov	r1, #0x11
	bl	FillWindowPixelBuffer
	ldrb	r0, [r4]
	mov	r1, #0x11
	bl	FillWindowPixelBuffer
	ldrb	r0, [r4, #0x1]
	mov	r1, #0x2
	bl	CopyWindowToVram
	ldrb	r0, [r4]
	mov	r1, #0x1
	bl	CopyWindowToVram
	ldr	r0, .L16+0x60
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SaveFailedScreenTextPrint
	mov	r0, #0x1
	neg	r0, r0
	mov	r1, r8
	str	r1, [sp]
	mov	r1, #0x0
	mov	r2, #0x10
	mov	r3, #0x0
	bl	BeginNormalPaletteFade
	mov	r0, #0x1
	bl	EnableInterrupts
	ldr	r0, .L16+0x64
	bl	SetVBlankCallback
	mov	r1, #0x82
	lsl	r1, r1, #0x5
	mov	r0, #0x0
	bl	SetGpuReg
	mov	r0, #0x0
	bl	ShowBg
	mov	r0, #0x2
	bl	ShowBg
	mov	r0, #0x3
	bl	ShowBg
	ldrb	r0, [r7]
	add	r0, r0, #0x1
	strb	r0, [r7]
	b	.L10
.L17:
	.align	2, 0
.L16:
	.word	gMain
	.word	0x40000d4
	.word	-0x7eff4000
	.word	-0x7affff00
	.word	-0x7efffe00
	.word	gBirchHelpGfx
	.word	gBirchBagTilemap
	.word	0x6007000
	.word	gBirchGrassTilemap
	.word	0x6007800
	.word	sSaveFailedClockGfx
	.word	0x6010020
	.word	gUnknown_085EFD88
	.word	gDecompressionBuffer+0x2000
	.word	0x5000200
	.word	gTextWindowFrame1_Gfx
	.word	gUnknown_085EFD94
	.word	gUnknown_085EFD9C
	.word	gSaveFailedWindowIds
	.word	gUnknown_085EFDA4
	.word	gBirchBagGrassPal
	.word	sSaveFailedClockPal
	.word	gTextWindowFrame1_Pal
	.word	gUnknown_0860F074
	.word	gText_SaveFailedCheckingBackup
	.word	VBlankCB
.L13:
	bl	UpdatePaletteFade
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L10	@cond_branch
	ldr	r0, .L18
	bl	SetMainCallback2
	ldr	r0, .L18+0x4
	bl	SetVBlankCallback
.L10:
	add	sp, sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L19:
	.align	2, 0
.L18:
	.word	CB2_WipeSave
	.word	VBlankCB_UpdateClockGraphics
.Lfe4:
	.size	 CB2_SaveFailedScreen,.Lfe4-CB2_SaveFailedScreen
	.align	2, 0
	.type	 CB2_WipeSave,function
	.thumb_func
CB2_WipeSave:
	push	{r4, r5, r6, lr}
	mov	r5, #0x0
	ldr	r0, .L34
	mov	r1, #0x1
	strh	r1, [r0]
	ldr	r1, .L34+0x4
	ldr	r0, [r1]
	cmp	r0, #0
	beq	.L22	@cond_branch
	add	r6, r1, #0
.L23:
	ldr	r0, [r6]
	bl	WipeSectors
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L32	@cond_branch
	ldr	r4, .L34+0x8
	ldrb	r0, [r4]
	mov	r1, #0x11
	bl	FillWindowPixelBuffer
	ldr	r0, .L34+0xc
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SaveFailedScreenTextPrint
	ldr	r0, .L34+0x10
	ldrb	r0, [r0]
	bl	HandleSavingData
	ldr	r0, [r6]
	cmp	r0, #0
	beq	.L26	@cond_branch
	ldrb	r0, [r4]
	mov	r1, #0x11
	bl	FillWindowPixelBuffer
	ldr	r0, .L34+0x14
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SaveFailedScreenTextPrint
.L26:
	add	r0, r5, #0x1
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	ldr	r0, [r6]
	cmp	r0, #0
	beq	.L22	@cond_branch
	cmp	r5, #0x2
	bls	.L23	@cond_branch
.L22:
	cmp	r5, #0x3
	bne	.L28	@cond_branch
	ldr	r0, .L34+0x8
	ldrb	r0, [r0]
	mov	r1, #0x11
	bl	FillWindowPixelBuffer
	ldr	r0, .L34+0x18
	b	.L33
.L35:
	.align	2, 0
.L34:
	.word	gSaveFailedClockInfo
	.word	gDamagedSaveSectors
	.word	gSaveFailedWindowIds
	.word	gText_CheckCompleted
	.word	gSaveFailedType
	.word	gText_SaveFailedCheckingBackup
	.word	gText_BackupMemoryDamaged
.L28:
	ldr	r0, .L36
	ldrb	r0, [r0]
	mov	r1, #0x11
	bl	FillWindowPixelBuffer
	ldr	r0, .L36+0x4
	ldr	r0, [r0]
	cmp	r0, #0
	bne	.L30	@cond_branch
	ldr	r0, .L36+0x8
.L33:
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SaveFailedScreenTextPrint
	b	.L29
.L37:
	.align	2, 0
.L36:
	.word	gSaveFailedWindowIds
	.word	gGameContinueCallback
	.word	gText_SaveCompleteGameCannotContinue
.L32:
	ldr	r0, .L38
	ldrb	r0, [r0]
	mov	r1, #0x11
	bl	FillWindowPixelBuffer
	ldr	r0, .L38+0x4
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SaveFailedScreenTextPrint
	ldr	r0, .L38+0x8
	bl	SetMainCallback2
	b	.L20
.L39:
	.align	2, 0
.L38:
	.word	gSaveFailedWindowIds
	.word	gText_BackupMemoryDamaged
	.word	CB2_GameplayCannotBeContinued
.L30:
	ldr	r0, .L40
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SaveFailedScreenTextPrint
.L29:
	ldr	r0, .L40+0x4
	bl	SetMainCallback2
.L20:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L41:
	.align	2, 0
.L40:
	.word	gText_SaveCompletePressA
	.word	CB2_FadeAndReturnToTitleScreen
.Lfe5:
	.size	 CB2_WipeSave,.Lfe5-CB2_WipeSave
	.align	2, 0
	.type	 CB2_GameplayCannotBeContinued,function
	.thumb_func
CB2_GameplayCannotBeContinued:
	push	{lr}
	ldr	r1, .L44
	mov	r0, #0x0
	strh	r0, [r1]
	ldr	r0, .L44+0x4
	ldrh	r1, [r0, #0x2e]
	mov	r0, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L43	@cond_branch
	ldr	r0, .L44+0x8
	ldrb	r0, [r0]
	mov	r1, #0x11
	bl	FillWindowPixelBuffer
	ldr	r0, .L44+0xc
	mov	r1, #0x1
	mov	r2, #0x0
	bl	SaveFailedScreenTextPrint
	ldr	r0, .L44+0x10
	bl	SetVBlankCallback
	ldr	r0, .L44+0x14
	bl	SetMainCallback2
.L43:
	pop	{r0}
	bx	r0
.L45:
	.align	2, 0
.L44:
	.word	gSaveFailedClockInfo
	.word	gMain
	.word	gSaveFailedWindowIds
	.word	gText_GamePlayCannotBeContinued
	.word	VBlankCB
	.word	CB2_FadeAndReturnToTitleScreen
.Lfe6:
	.size	 CB2_GameplayCannotBeContinued,.Lfe6-CB2_GameplayCannotBeContinued
	.align	2, 0
	.type	 CB2_FadeAndReturnToTitleScreen,function
	.thumb_func
CB2_FadeAndReturnToTitleScreen:
	push	{lr}
	add	sp, sp, #-0x4
	ldr	r0, .L48
	mov	r2, #0x0
	strh	r2, [r0]
	ldr	r0, .L48+0x4
	ldrh	r1, [r0, #0x2e]
	mov	r0, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L47	@cond_branch
	mov	r0, #0x1
	neg	r0, r0
	str	r2, [sp]
	mov	r1, #0x0
	mov	r3, #0x10
	bl	BeginNormalPaletteFade
	ldr	r0, .L48+0x8
	bl	SetVBlankCallback
	ldr	r0, .L48+0xc
	bl	SetMainCallback2
.L47:
	add	sp, sp, #0x4
	pop	{r0}
	bx	r0
.L49:
	.align	2, 0
.L48:
	.word	gSaveFailedClockInfo
	.word	gMain
	.word	VBlankCB
	.word	CB2_ReturnToTitleScreen
.Lfe7:
	.size	 CB2_FadeAndReturnToTitleScreen,.Lfe7-CB2_FadeAndReturnToTitleScreen
	.align	2, 0
	.type	 CB2_ReturnToTitleScreen,function
	.thumb_func
CB2_ReturnToTitleScreen:
	push	{r4, r5, lr}
	bl	UpdatePaletteFade
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0
	bne	.L51	@cond_branch
	ldr	r5, .L54
	ldr	r0, [r5]
	cmp	r0, #0
	bne	.L52	@cond_branch
	bl	DoSoftReset
	b	.L51
.L55:
	.align	2, 0
.L54:
	.word	gGameContinueCallback
.L52:
	bl	SetMainCallback2
	str	r4, [r5]
.L51:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lfe8:
	.size	 CB2_ReturnToTitleScreen,.Lfe8-CB2_ReturnToTitleScreen
	.align	2, 0
	.type	 VBlankCB_UpdateClockGraphics,function
	.thumb_func
VBlankCB_UpdateClockGraphics:
	push	{r4, r5, lr}
	ldr	r5, .L60
	ldr	r0, [r5, #0x24]
	lsr	r4, r0, #0x3
	mov	r0, #0x7
	and	r4, r4, r0
	ldr	r0, .L60+0x4
	ldr	r1, [r0, #0x4]		@ created by thumb_load_double_from_address
	ldr	r0, [r0]		@ created by thumb_load_double_from_address
	str	r0, [r5, #0x38]
	str	r1, [r5, #0x3c]
	ldrh	r1, [r5, #0x3a]
	ldr	r0, .L60+0x8
	and	r0, r0, r1
	mov	r1, #0x70
	orr	r0, r0, r1
	strh	r0, [r5, #0x3a]
	add	r1, r5, #0
	add	r1, r1, #0x38
	mov	r0, #0x48
	strb	r0, [r1]
	ldr	r0, .L60+0xc
	ldrh	r0, [r0]
	cmp	r0, #0
	beq	.L57	@cond_branch
	ldr	r3, .L60+0x10
	lsl	r2, r4, #0x1
	add	r2, r2, r4
	add	r0, r2, r3
	ldrb	r4, [r0]
	ldrh	r1, [r5, #0x3c]
	ldr	r0, .L60+0x14
	and	r0, r0, r1
	orr	r0, r0, r4
	strh	r0, [r5, #0x3c]
	add	r0, r3, #0x2
	add	r0, r2, r0
	ldrb	r1, [r0]
	lsl	r1, r1, #0x4
	add	r3, r3, #0x1
	add	r2, r2, r3
	ldrb	r0, [r2]
	lsl	r0, r0, #0x3
	orr	r1, r1, r0
	add	r3, r5, #0
	add	r3, r3, #0x3b
	mov	r0, #0x1f
	and	r1, r1, r0
	lsl	r1, r1, #0x1
	ldrb	r2, [r3]
	mov	r0, #0x3f
	neg	r0, r0
	and	r0, r0, r2
	orr	r0, r0, r1
	strb	r0, [r3]
	b	.L58
.L61:
	.align	2, 0
.L60:
	.word	gMain
	.word	sClockOamData
	.word	-0x200
	.word	gSaveFailedClockInfo
	.word	sClockFrames
	.word	-0x400
.L57:
	ldrh	r0, [r5, #0x3c]
	ldr	r1, .L62
	and	r1, r1, r0
	mov	r0, #0x1
	orr	r1, r1, r0
	strh	r1, [r5, #0x3c]
.L58:
	ldr	r0, .L62+0x4
	mov	r1, #0xe0
	lsl	r1, r1, #0x13
	mov	r2, #0x1
	bl	CpuFastSet
	ldr	r1, .L62+0x8
	ldrh	r0, [r1, #0x2]
	cmp	r0, #0
	beq	.L59	@cond_branch
	sub	r0, r0, #0x1
	strh	r0, [r1, #0x2]
.L59:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L63:
	.align	2, 0
.L62:
	.word	-0x400
	.word	gMain+0x38
	.word	gSaveFailedClockInfo
.Lfe9:
	.size	 VBlankCB_UpdateClockGraphics,.Lfe9-VBlankCB_UpdateClockGraphics
	.align	2, 0
	.type	 VerifySectorWipe,function
	.thumb_func
VerifySectorWipe:
	push	{r4, lr}
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	ldr	r4, .L72
	mov	r3, #0x80
	lsl	r3, r3, #0x5
	mov	r1, #0x0
	add	r2, r4, #0
	bl	ReadFlash
	mov	r1, #0x0
	ldr	r2, .L72+0x4
.L68:
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.L67	@cond_branch
	mov	r0, #0x1
	b	.L71
.L73:
	.align	2, 0
.L72:
	.word	gSaveDataBuffer
	.word	0x3ff
.L67:
	add	r0, r1, #0x1
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	add	r4, r4, #0x4
	cmp	r1, r2
	bls	.L68	@cond_branch
	mov	r0, #0x0
.L71:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe10:
	.size	 VerifySectorWipe,.Lfe10-VerifySectorWipe
	.align	2, 0
	.type	 WipeSector,function
	.thumb_func
WipeSector:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	lsl	r0, r0, #0x10
	lsr	r6, r0, #0x10
	mov	r0, #0x0
	ldr	r1, .L86
	mov	r8, r1
	ldr	r7, .L86+0x4
.L78:
	mov	r4, #0x0
	add	r5, r0, #0x1
.L83:
	ldr	r3, [r7]
	add	r0, r6, #0
	add	r1, r4, #0
	mov	r2, #0x0
	bl	_call_via_r3
	add	r0, r4, #0x1
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	cmp	r4, r8
	bls	.L83	@cond_branch
	add	r0, r6, #0
	bl	VerifySectorWipe
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	lsl	r0, r5, #0x10
	lsr	r0, r0, #0x10
	cmp	r1, #0
	beq	.L76	@cond_branch
	cmp	r0, #0x81
	bls	.L78	@cond_branch
.L76:
	add	r0, r1, #0
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L87:
	.align	2, 0
.L86:
	.word	0xfff
	.word	ProgramFlashByte
.Lfe11:
	.size	 WipeSector,.Lfe11-WipeSector
	.align	2, 0
	.type	 WipeSectors,function
	.thumb_func
WipeSectors:
	push	{r4, r5, r6, lr}
	add	r5, r0, #0
	mov	r6, #0x0
.L92:
	mov	r4, #0x1
	lsl	r4, r4, r6
	add	r0, r5, #0
	and	r0, r0, r4
	cmp	r0, #0
	beq	.L91	@cond_branch
	add	r0, r6, #0
	bl	WipeSector
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L91	@cond_branch
	bic	r5, r5, r4
.L91:
	add	r0, r6, #0x1
	lsl	r0, r0, #0x10
	lsr	r6, r0, #0x10
	cmp	r6, #0x1f
	bls	.L92	@cond_branch
	cmp	r5, #0
	beq	.L95	@cond_branch
	mov	r0, #0x1
	b	.L97
.L95:
	mov	r0, #0x0
.L97:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe12:
	.size	 WipeSectors,.Lfe12-WipeSectors
.text
	.align	2, 0

