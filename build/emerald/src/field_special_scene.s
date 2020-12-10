@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section .rodata
	.type	 gTruckCamera_HorizontalTable,object
gTruckCamera_HorizontalTable:
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	-0x1
	.byte	-0x1
	.byte	-0x1
	.byte	0x0
	.size	 gTruckCamera_HorizontalTable,19
	.type	 sSSTidalSailEastMovementScript,object
sSSTidalSailEastMovementScript:
	.byte	0x18
	.byte	0xfe
	.size	 sSSTidalSailEastMovementScript,2
	.type	 sSSTidalSailWestMovementScript,object
sSSTidalSailWestMovementScript:
	.byte	0x17
	.byte	0xfe
	.size	 sSSTidalSailWestMovementScript,2
.text
	.align	2, 0
	.globl	GetTruckCameraBobbingY
	.type	 GetTruckCameraBobbingY,function
	.thumb_func
GetTruckCameraBobbingY:
	push	{r4, lr}
	add	r4, r0, #0
	mov	r1, #0x78
	bl	__modsi3
	cmp	r0, #0
	bne	.L3	@cond_branch
	mov	r0, #0x1
	neg	r0, r0
	b	.L6
.L3:
	add	r0, r4, #0
	mov	r1, #0xa
	bl	__modsi3
	cmp	r0, #0x4
	ble	.L4	@cond_branch
	mov	r0, #0x0
	b	.L6
.L4:
	mov	r0, #0x1
.L6:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe1:
	.size	 GetTruckCameraBobbingY,.Lfe1-GetTruckCameraBobbingY
	.align	2, 0
	.globl	GetTruckBoxMovement
	.type	 GetTruckBoxMovement,function
	.thumb_func
GetTruckBoxMovement:
	push	{lr}
	add	r0, r0, #0x78
	mov	r1, #0xb4
	bl	__modsi3
	cmp	r0, #0
	beq	.L8	@cond_branch
	mov	r0, #0x0
	b	.L9
.L8:
	mov	r0, #0x1
	neg	r0, r0
.L9:
	pop	{r1}
	bx	r1
.Lfe2:
	.size	 GetTruckBoxMovement,.Lfe2-GetTruckBoxMovement
	.align	2, 0
	.globl	Task_Truck1
	.type	 Task_Truck1,function
	.thumb_func
Task_Truck1:
	push	{r4, r5, lr}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	ldr	r0, .L12
	add	r5, r1, r0
	mov	r1, #0x0
	ldrsh	r0, [r5, r1]
	add	r0, r0, #0x1e
	bl	GetTruckBoxMovement
	ldr	r4, .L12+0x4
	ldr	r2, [r4]
	ldrb	r1, [r2, #0x5]
	ldrb	r2, [r2, #0x4]
	lsl	r0, r0, #0x12
	mov	r3, #0xc0
	lsl	r3, r3, #0xa
	orr	r0, r0, r3
	asr	r0, r0, #0x10
	str	r0, [sp]
	mov	r0, #0x1
	mov	r3, #0x3
	bl	SetObjectEventSpritePosByLocalIdAndMap
	mov	r3, #0x0
	ldrsh	r0, [r5, r3]
	bl	GetTruckBoxMovement
	ldr	r2, [r4]
	ldrb	r1, [r2, #0x5]
	ldrb	r2, [r2, #0x4]
	lsl	r0, r0, #0x11
	ldr	r3, .L12+0x8
	add	r0, r0, r3
	asr	r0, r0, #0x10
	str	r0, [sp]
	mov	r0, #0x2
	mov	r3, #0x0
	bl	SetObjectEventSpritePosByLocalIdAndMap
	mov	r1, #0x0
	ldrsh	r0, [r5, r1]
	bl	GetTruckBoxMovement
	ldr	r2, [r4]
	ldrb	r1, [r2, #0x5]
	ldrb	r2, [r2, #0x4]
	mov	r4, #0x0
	mov	r3, #0x3
	neg	r3, r3
	lsl	r0, r0, #0x12
	asr	r0, r0, #0x10
	str	r0, [sp]
	mov	r0, #0x3
	bl	SetObjectEventSpritePosByLocalIdAndMap
	ldrh	r0, [r5]
	add	r0, r0, #0x1
	strh	r0, [r5]
	lsl	r0, r0, #0x10
	ldr	r1, .L12+0xc
	cmp	r0, r1
	bne	.L11	@cond_branch
	strh	r4, [r5]
.L11:
	mov	r3, #0x0
	ldrsh	r0, [r5, r3]
	bl	GetTruckCameraBobbingY
	add	r1, r0, #0
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	mov	r0, #0x0
	bl	SetCameraPanning
	add	sp, sp, #0x4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L13:
	.align	2, 0
.L12:
	.word	gTasks+0x8
	.word	gSaveBlock1Ptr
	.word	-0x30000
	.word	0x75300000
.Lfe3:
	.size	 Task_Truck1,.Lfe3-Task_Truck1
	.align	2, 0
	.globl	Task_Truck2
	.type	 Task_Truck2,function
	.thumb_func
Task_Truck2:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	lsl	r0, r2, #0x2
	add	r0, r0, r2
	lsl	r3, r0, #0x3
	ldr	r4, .L19
	add	r7, r3, r4
	ldrh	r1, [r7]
	add	r1, r1, #0x1
	strh	r1, [r7]
	ldrh	r0, [r7, #0x4]
	add	r0, r0, #0x1
	strh	r0, [r7, #0x4]
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	cmp	r1, #0x5
	ble	.L15	@cond_branch
	mov	r0, #0x0
	strh	r0, [r7]
	ldrh	r0, [r7, #0x2]
	add	r0, r0, #0x1
	strh	r0, [r7, #0x2]
.L15:
	ldrh	r0, [r7, #0x2]
	cmp	r0, #0x13
	bne	.L16	@cond_branch
	add	r0, r2, #0
	bl	DestroyTask
	b	.L17
.L20:
	.align	2, 0
.L19:
	.word	gTasks+0x8
.L16:
	ldr	r2, .L21
	mov	r1, #0x2
	ldrsh	r0, [r7, r1]
	add	r0, r0, r2
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	cmp	r0, #0x2
	bne	.L18	@cond_branch
	add	r0, r4, #0
	sub	r0, r0, #0x8
	add	r0, r3, r0
	ldr	r1, .L21+0x4
	str	r1, [r0]
.L18:
	mov	r4, #0x2
	ldrsh	r0, [r7, r4]
	add	r0, r0, r2
	mov	r5, #0x0
	ldrsb	r5, [r0, r5]
	lsl	r5, r5, #0x10
	lsr	r5, r5, #0x10
	mov	r1, #0x4
	ldrsh	r0, [r7, r1]
	bl	GetTruckCameraBobbingY
	add	r1, r0, #0
	lsl	r5, r5, #0x10
	asr	r5, r5, #0x10
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	add	r0, r5, #0
	bl	SetCameraPanning
	mov	r4, #0x4
	ldrsh	r0, [r7, r4]
	add	r0, r0, #0x1e
	bl	GetTruckBoxMovement
	ldr	r6, .L21+0x8
	ldr	r2, [r6]
	ldrb	r1, [r2, #0x5]
	ldrb	r2, [r2, #0x4]
	mov	r3, #0x3
	sub	r3, r3, r5
	lsl	r3, r3, #0x10
	asr	r3, r3, #0x10
	lsl	r0, r0, #0x12
	mov	r4, #0xc0
	lsl	r4, r4, #0xa
	orr	r0, r0, r4
	asr	r0, r0, #0x10
	str	r0, [sp]
	mov	r0, #0x1
	bl	SetObjectEventSpritePosByLocalIdAndMap
	mov	r1, #0x4
	ldrsh	r0, [r7, r1]
	bl	GetTruckBoxMovement
	ldr	r2, [r6]
	ldrb	r1, [r2, #0x5]
	ldrb	r2, [r2, #0x4]
	neg	r3, r5
	lsl	r3, r3, #0x10
	asr	r3, r3, #0x10
	lsl	r0, r0, #0x11
	ldr	r4, .L21+0xc
	add	r0, r0, r4
	asr	r0, r0, #0x10
	str	r0, [sp]
	mov	r0, #0x2
	bl	SetObjectEventSpritePosByLocalIdAndMap
	mov	r1, #0x4
	ldrsh	r0, [r7, r1]
	bl	GetTruckBoxMovement
	ldr	r2, [r6]
	ldrb	r1, [r2, #0x5]
	ldrb	r2, [r2, #0x4]
	mov	r4, #0x3
	neg	r4, r4
	add	r3, r4, #0
	sub	r3, r3, r5
	lsl	r3, r3, #0x10
	asr	r3, r3, #0x10
	lsl	r0, r0, #0x12
	asr	r0, r0, #0x10
	str	r0, [sp]
	mov	r0, #0x3
	bl	SetObjectEventSpritePosByLocalIdAndMap
.L17:
	add	sp, sp, #0x4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L22:
	.align	2, 0
.L21:
	.word	gTruckCamera_HorizontalTable
	.word	Task_Truck3
	.word	gSaveBlock1Ptr
	.word	-0x30000
.Lfe4:
	.size	 Task_Truck2,.Lfe4-Task_Truck2
	.align	2, 0
	.type	 Task_Truck3,function
	.thumb_func
Task_Truck3:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r3, r0, #0
	lsl	r0, r3, #0x2
	add	r0, r0, r3
	lsl	r0, r0, #0x3
	ldr	r1, .L27
	add	r2, r0, r1
	ldrh	r0, [r2]
	add	r0, r0, #0x1
	strh	r0, [r2]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x5
	ble	.L24	@cond_branch
	mov	r0, #0x0
	strh	r0, [r2]
	ldrh	r0, [r2, #0x2]
	add	r0, r0, #0x1
	strh	r0, [r2, #0x2]
.L24:
	ldrh	r0, [r2, #0x2]
	cmp	r0, #0x13
	bne	.L25	@cond_branch
	add	r0, r3, #0
	bl	DestroyTask
	b	.L26
.L28:
	.align	2, 0
.L27:
	.word	gTasks+0x8
.L25:
	ldr	r1, .L29
	mov	r3, #0x2
	ldrsh	r0, [r2, r3]
	add	r0, r0, r1
	mov	r1, #0x0
	mov	r8, r1
	mov	r6, #0x0
	ldrsb	r6, [r0, r6]
	add	r0, r6, #0
	bl	SetCameraPanning
	ldr	r5, .L29+0x4
	ldr	r0, [r5]
	ldrb	r1, [r0, #0x5]
	ldrb	r2, [r0, #0x4]
	mov	r3, #0x3
	sub	r3, r3, r6
	mov	r0, #0x3
	str	r0, [sp]
	mov	r0, #0x1
	bl	SetObjectEventSpritePosByLocalIdAndMap
	ldr	r0, [r5]
	ldrb	r1, [r0, #0x5]
	ldrb	r2, [r0, #0x4]
	neg	r3, r6
	mov	r4, r8
	sub	r4, r4, #0x3
	str	r4, [sp]
	mov	r0, #0x2
	bl	SetObjectEventSpritePosByLocalIdAndMap
	ldr	r0, [r5]
	ldrb	r1, [r0, #0x5]
	ldrb	r2, [r0, #0x4]
	sub	r4, r4, r6
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x3
	add	r3, r4, #0
	bl	SetObjectEventSpritePosByLocalIdAndMap
.L26:
	add	sp, sp, #0x4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L30:
	.align	2, 0
.L29:
	.word	gTruckCamera_HorizontalTable
	.word	gSaveBlock1Ptr
.Lfe5:
	.size	 Task_Truck3,.Lfe5-Task_Truck3
	.align	2, 0
	.globl	Task_HandleTruckSequence
	.type	 Task_HandleTruckSequence,function
	.thumb_func
Task_HandleTruckSequence:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	lsl	r0, r5, #0x2
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	ldr	r1, .L47
	add	r4, r0, r1
	mov	r1, #0x0
	ldrsh	r0, [r4, r1]
	cmp	r0, #0x5
	bls	.LCB509
	b	.L32	@long jump
.LCB509:
	lsl	r0, r0, #0x2
	ldr	r1, .L47+0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L48:
	.align	2, 0
.L47:
	.word	gTasks+0x8
	.word	.L45
	.align	2, 0
	.align	2, 0
.L45:
	.word	.L33
	.word	.L35
	.word	.L37
	.word	.L39
	.word	.L41
	.word	.L43
.L33:
	ldrh	r0, [r4, #0x2]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x2]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x5a
	beq	.LCB536
	b	.L32	@long jump
.LCB536:
	mov	r0, #0x0
	bl	SetCameraPanningCallback
	mov	r0, #0x0
	strh	r0, [r4, #0x2]
	ldr	r0, .L49
	mov	r1, #0xa
	bl	CreateTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strh	r0, [r4, #0x4]
	mov	r0, #0x1
	strh	r0, [r4]
	mov	r0, #0x31
	bl	PlaySE
	b	.L32
.L50:
	.align	2, 0
.L49:
	.word	Task_Truck1
.L35:
	ldrh	r0, [r4, #0x2]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x2]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x96
	bne	.L32	@cond_branch
	bl	FadeInFromBlack
	mov	r0, #0x0
	strh	r0, [r4, #0x2]
	mov	r0, #0x2
	strh	r0, [r4]
	b	.L32
.L37:
	ldrh	r0, [r4, #0x2]
	add	r3, r0, #0x1
	strh	r3, [r4, #0x2]
	ldr	r0, .L51
	ldrb	r1, [r0, #0x7]
	mov	r0, #0x80
	and	r0, r0, r1
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	cmp	r2, #0
	bne	.L32	@cond_branch
	lsl	r1, r3, #0x10
	mov	r0, #0x96
	lsl	r0, r0, #0x11
	cmp	r1, r0
	ble	.L32	@cond_branch
	strh	r2, [r4, #0x2]
	ldrb	r0, [r4, #0x4]
	bl	DestroyTask
	ldr	r0, .L51+0x4
	mov	r1, #0xa
	bl	CreateTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	strh	r0, [r4, #0x6]
	mov	r0, #0x3
	strh	r0, [r4]
	mov	r0, #0x32
	bl	PlaySE
	b	.L32
.L52:
	.align	2, 0
.L51:
	.word	gPaletteFade
	.word	Task_Truck2
.L39:
	ldr	r2, .L53
	mov	r0, #0x6
	ldrsh	r1, [r4, r0]
	lsl	r0, r1, #0x2
	add	r0, r0, r1
	lsl	r0, r0, #0x3
	add	r0, r0, r2
	ldrb	r5, [r0, #0x4]
	cmp	r5, #0
	bne	.L32	@cond_branch
	bl	InstallCameraPanAheadCallback
	strh	r5, [r4, #0x2]
	mov	r0, #0x4
	strh	r0, [r4]
	b	.L32
.L54:
	.align	2, 0
.L53:
	.word	gTasks
.L41:
	ldrh	r0, [r4, #0x2]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x2]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x5a
	bne	.L32	@cond_branch
	mov	r0, #0x33
	bl	PlaySE
	mov	r0, #0x0
	strh	r0, [r4, #0x2]
	mov	r0, #0x5
	strh	r0, [r4]
	b	.L32
.L43:
	ldrh	r0, [r4, #0x2]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x2]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	cmp	r0, #0x78
	bne	.L32	@cond_branch
	mov	r2, #0x82
	lsl	r2, r2, #0x2
	mov	r0, #0xb
	mov	r1, #0x8
	bl	MapGridSetMetatileIdAt
	mov	r2, #0x84
	lsl	r2, r2, #0x2
	mov	r0, #0xb
	mov	r1, #0x9
	bl	MapGridSetMetatileIdAt
	mov	r2, #0x86
	lsl	r2, r2, #0x2
	mov	r0, #0xb
	mov	r1, #0xa
	bl	MapGridSetMetatileIdAt
	bl	DrawWholeMapView
	mov	r0, #0x34
	bl	PlaySE
	add	r0, r5, #0
	bl	DestroyTask
	bl	ScriptContext2_Disable
.L32:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lfe6:
	.size	 Task_HandleTruckSequence,.Lfe6-Task_HandleTruckSequence
	.align	2, 0
	.globl	ExecuteTruckSequence
	.type	 ExecuteTruckSequence,function
	.thumb_func
ExecuteTruckSequence:
	push	{lr}
	add	sp, sp, #-0x4
	ldr	r2, .L56
	mov	r0, #0xb
	mov	r1, #0x8
	bl	MapGridSetMetatileIdAt
	ldr	r2, .L56+0x4
	mov	r0, #0xb
	mov	r1, #0x9
	bl	MapGridSetMetatileIdAt
	ldr	r2, .L56+0x8
	mov	r0, #0xb
	mov	r1, #0xa
	bl	MapGridSetMetatileIdAt
	bl	DrawWholeMapView
	bl	ScriptContext2_Enable
	mov	r0, #0x0
	str	r0, [sp]
	ldr	r1, .L56+0xc
	ldr	r2, .L56+0x10
	mov	r0, sp
	bl	CpuFastSet
	ldr	r0, .L56+0x14
	mov	r1, #0xa
	bl	CreateTask
	add	sp, sp, #0x4
	pop	{r0}
	bx	r0
.L57:
	.align	2, 0
.L56:
	.word	0x20d
	.word	0x215
	.word	0x21d
	.word	gPlttBufferFaded
	.word	0x1000100
	.word	Task_HandleTruckSequence
.Lfe7:
	.size	 ExecuteTruckSequence,.Lfe7-ExecuteTruckSequence
	.align	2, 0
	.globl	EndTruckSequence
	.type	 EndTruckSequence,function
	.thumb_func
EndTruckSequence:
	push	{r4, r5, r6, lr}
	add	sp, sp, #-0x4
	ldr	r0, .L60
	bl	FuncIsActiveTask
	lsl	r0, r0, #0x18
	lsr	r6, r0, #0x18
	cmp	r6, #0
	bne	.L59	@cond_branch
	ldr	r4, .L60+0x4
	ldr	r0, [r4]
	ldrb	r1, [r0, #0x5]
	ldrb	r2, [r0, #0x4]
	mov	r0, #0x3
	str	r0, [sp]
	mov	r0, #0x1
	mov	r3, #0x3
	bl	SetObjectEventSpritePosByLocalIdAndMap
	ldr	r0, [r4]
	ldrb	r1, [r0, #0x5]
	ldrb	r2, [r0, #0x4]
	mov	r5, #0x3
	neg	r5, r5
	str	r5, [sp]
	mov	r0, #0x2
	mov	r3, #0x0
	bl	SetObjectEventSpritePosByLocalIdAndMap
	ldr	r0, [r4]
	ldrb	r1, [r0, #0x5]
	ldrb	r2, [r0, #0x4]
	str	r6, [sp]
	mov	r0, #0x3
	add	r3, r5, #0
	bl	SetObjectEventSpritePosByLocalIdAndMap
.L59:
	add	sp, sp, #0x4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L61:
	.align	2, 0
.L60:
	.word	Task_HandleTruckSequence
	.word	gSaveBlock1Ptr
.Lfe8:
	.size	 EndTruckSequence,.Lfe8-EndTruckSequence
	.align	2, 0
	.globl	TrySetPortholeWarpDestination
	.type	 TrySetPortholeWarpDestination,function
	.thumb_func
TrySetPortholeWarpDestination:
	push	{r4, r5, r6, lr}
	add	sp, sp, #-0xc
	mov	r4, sp
	add	r4, r4, #0x5
	mov	r5, sp
	add	r5, r5, #0x6
	add	r6, sp, #0x8
	add	r0, sp, #0x4
	add	r1, r4, #0
	add	r2, r5, #0
	add	r3, r6, #0
	bl	GetSSTidalLocation
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L63	@cond_branch
	add	r0, sp, #0x4
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	mov	r1, #0x0
	ldrsb	r1, [r4, r1]
	mov	r2, #0x1
	neg	r2, r2
	mov	r3, #0x0
	ldrsb	r3, [r5, r3]
	mov	r4, #0x0
	ldrsb	r4, [r6, r4]
	str	r4, [sp]
	bl	SetWarpDestination
	mov	r0, #0x1
	b	.L65
.L63:
	mov	r0, #0x0
.L65:
	add	sp, sp, #0xc
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe9:
	.size	 TrySetPortholeWarpDestination,.Lfe9-TrySetPortholeWarpDestination
	.align	2, 0
	.globl	Task_HandlePorthole
	.type	 Task_HandlePorthole,function
	.thumb_func
Task_HandlePorthole:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	lsl	r0, r5, #0x2
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	ldr	r1, .L87
	add	r4, r0, r1
	ldr	r0, .L87+0x4
	bl	GetVarPointer
	add	r7, r0, #0
	ldr	r0, .L87+0x8
	ldr	r3, [r0]
	add	r6, r3, #0x4
	mov	r0, #0x0
	ldrsh	r2, [r4, r0]
	cmp	r2, #0x1
	beq	.L70	@cond_branch
	cmp	r2, #0x1
	bgt	.L83	@cond_branch
	cmp	r2, #0
	beq	.L68	@cond_branch
	b	.L66
.L88:
	.align	2, 0
.L87:
	.word	gTasks+0x8
	.word	0x40b4
	.word	gSaveBlock1Ptr
.L83:
	cmp	r2, #0x2
	beq	.L76	@cond_branch
	cmp	r2, #0x3
	beq	.L80	@cond_branch
	b	.L66
.L68:
	ldr	r0, .L89
	ldrb	r1, [r0, #0x7]
	mov	r0, #0x80
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L66	@cond_branch
	strh	r2, [r4, #0x2]
	mov	r0, #0x2
	strh	r0, [r4]
	b	.L66
.L90:
	.align	2, 0
.L89:
	.word	gPaletteFade
.L70:
	ldr	r0, .L91
	ldrh	r1, [r0, #0x2e]
	add	r0, r2, #0
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L71	@cond_branch
	strh	r2, [r4, #0x2]
.L71:
	ldrb	r1, [r6, #0x1]
	ldrb	r2, [r3, #0x4]
	mov	r0, #0xff
	bl	ScriptMovement_IsObjectMovementFinished
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L66	@cond_branch
	mov	r0, #0x1
	bl	CountSSTidalStep
	cmp	r0, #0x1
	bne	.L73	@cond_branch
	ldrh	r0, [r7]
	cmp	r0, #0x2
	bne	.L74	@cond_branch
	mov	r0, #0x9
	b	.L84
.L92:
	.align	2, 0
.L91:
	.word	gMain
.L74:
	mov	r0, #0xa
.L84:
	strh	r0, [r7]
	b	.L85
.L73:
	mov	r0, #0x2
	strh	r0, [r4]
.L76:
	mov	r1, #0x2
	ldrsh	r0, [r4, r1]
	cmp	r0, #0
	beq	.L77	@cond_branch
.L85:
	mov	r0, #0x3
	strh	r0, [r4]
	b	.L66
.L77:
	ldrh	r0, [r7]
	cmp	r0, #0x2
	bne	.L78	@cond_branch
	ldrb	r1, [r6, #0x1]
	ldrb	r2, [r6]
	ldr	r3, .L93
	b	.L86
.L94:
	.align	2, 0
.L93:
	.word	sSSTidalSailEastMovementScript
.L78:
	ldrb	r1, [r6, #0x1]
	ldrb	r2, [r6]
	ldr	r3, .L95
.L86:
	mov	r0, #0xff
	bl	ScriptMovement_StartObjectMovementScript
	mov	r0, #0x1
	strh	r0, [r4]
	b	.L66
.L96:
	.align	2, 0
.L95:
	.word	sSSTidalSailWestMovementScript
.L80:
	ldr	r0, .L97
	bl	FlagClear
	mov	r0, #0x80
	lsl	r0, r0, #0x7
	bl	FlagClear
	mov	r0, #0x0
	bl	SetWarpDestinationToDynamicWarp
	bl	DoDiveWarp
	add	r0, r5, #0
	bl	DestroyTask
.L66:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L98:
	.align	2, 0
.L97:
	.word	0x4001
.Lfe10:
	.size	 Task_HandlePorthole,.Lfe10-Task_HandlePorthole
	.align	2, 0
	.type	 ShowSSTidalWhileSailing,function
	.thumb_func
ShowSSTidalWhileSailing:
	push	{r4, lr}
	add	sp, sp, #-0x4
	ldr	r1, .L102
	mov	r0, #0x0
	str	r0, [sp]
	mov	r0, #0x8c
	mov	r2, #0x70
	mov	r3, #0x50
	bl	AddPseudoObjectEvent
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r2, .L102+0x4
	lsl	r1, r0, #0x4
	add	r1, r1, r0
	lsl	r1, r1, #0x2
	add	r4, r1, r2
	add	r2, r4, #0
	add	r2, r2, #0x3e
	ldrb	r1, [r2]
	mov	r0, #0x3
	neg	r0, r0
	and	r0, r0, r1
	strb	r0, [r2]
	ldr	r0, .L102+0x8
	bl	VarGet
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	cmp	r0, #0x2
	bne	.L100	@cond_branch
	mov	r0, #0x4
	bl	GetFaceDirectionAnimNum
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r0, r4, #0
	bl	StartSpriteAnim
	b	.L101
.L103:
	.align	2, 0
.L102:
	.word	SpriteCallbackDummy
	.word	gSprites
	.word	0x40b4
.L100:
	mov	r0, #0x3
	bl	GetFaceDirectionAnimNum
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r0, r4, #0
	bl	StartSpriteAnim
.L101:
	add	sp, sp, #0x4
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe11:
	.size	 ShowSSTidalWhileSailing,.Lfe11-ShowSSTidalWhileSailing
	.align	2, 0
	.globl	FieldCB_ShowPortholeView
	.type	 FieldCB_ShowPortholeView,function
	.thumb_func
FieldCB_ShowPortholeView:
	push	{lr}
	bl	ShowSSTidalWhileSailing
	ldr	r2, .L105
	ldr	r0, .L105+0x4
	ldrb	r1, [r0, #0x5]
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r2
	ldrb	r1, [r0, #0x1]
	mov	r2, #0x20
	orr	r1, r1, r2
	strb	r1, [r0, #0x1]
	bl	FadeInFromBlack
	ldr	r0, .L105+0x8
	mov	r1, #0x50
	bl	CreateTask
	bl	ScriptContext2_Enable
	pop	{r0}
	bx	r0
.L106:
	.align	2, 0
.L105:
	.word	gObjectEvents
	.word	gPlayerAvatar
	.word	Task_HandlePorthole
.Lfe12:
	.size	 FieldCB_ShowPortholeView,.Lfe12-FieldCB_ShowPortholeView
	.align	2, 0
	.globl	LookThroughPorthole
	.type	 LookThroughPorthole,function
	.thumb_func
LookThroughPorthole:
	push	{lr}
	ldr	r0, .L108
	bl	FlagSet
	ldr	r0, .L108+0x4
	bl	FlagSet
	mov	r0, #0x80
	lsl	r0, r0, #0x7
	bl	FlagSet
	ldr	r0, .L108+0x8
	ldr	r0, [r0]
	mov	r1, #0x4
	ldrsb	r1, [r0, r1]
	mov	r2, #0x5
	ldrsb	r2, [r0, r2]
	mov	r3, #0x1
	neg	r3, r3
	mov	r0, #0x0
	bl	SetDynamicWarp
	bl	TrySetPortholeWarpDestination
	bl	DoPortholeWarp
	pop	{r0}
	bx	r0
.L109:
	.align	2, 0
.L108:
	.word	0x88d
	.word	0x4001
	.word	gSaveBlock1Ptr
.Lfe13:
	.size	 LookThroughPorthole,.Lfe13-LookThroughPorthole
.text
	.align	2, 0

