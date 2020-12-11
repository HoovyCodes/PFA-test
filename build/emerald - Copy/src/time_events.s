@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.type	 GetMirageRnd,function
	.thumb_func
GetMirageRnd:
	push	{r4, lr}
	ldr	r0, .L3
	bl	VarGet
	add	r4, r0, #0
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	ldr	r0, .L3+0x4
	bl	VarGet
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r4, r4, #0x10
	orr	r4, r4, r0
	add	r0, r4, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.L4:
	.align	2, 0
.L3:
	.word	0x4024
	.word	0x4025
.Lfe1:
	.size	 GetMirageRnd,.Lfe1-GetMirageRnd
	.align	2, 0
	.type	 SetMirageRnd,function
	.thumb_func
SetMirageRnd:
	push	{r4, lr}
	add	r4, r0, #0
	ldr	r0, .L6
	lsr	r1, r4, #0x10
	bl	VarSet
	ldr	r0, .L6+0x4
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	add	r1, r4, #0
	bl	VarSet
	pop	{r4}
	pop	{r0}
	bx	r0
.L7:
	.align	2, 0
.L6:
	.word	0x4024
	.word	0x4025
.Lfe2:
	.size	 SetMirageRnd,.Lfe2-SetMirageRnd
	.align	2, 0
	.globl	InitMirageRnd
	.type	 InitMirageRnd,function
	.thumb_func
InitMirageRnd:
	push	{r4, lr}
	bl	Random
	add	r4, r0, #0
	bl	Random
	lsl	r4, r4, #0x10
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	orr	r4, r4, r0
	add	r0, r4, #0
	bl	SetMirageRnd
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe3:
	.size	 InitMirageRnd,.Lfe3-InitMirageRnd
	.align	2, 0
	.globl	UpdateMirageRnd
	.type	 UpdateMirageRnd,function
	.thumb_func
UpdateMirageRnd:
	push	{r4, lr}
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	bl	GetMirageRnd
	add	r1, r0, #0
	cmp	r4, #0
	beq	.L11	@cond_branch
	ldr	r3, .L14
	ldr	r2, .L14+0x4
.L12:
	mov	r0, r1
	mul	r0, r0, r3
	add	r1, r0, r2
	sub	r0, r4, #0x1
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	cmp	r4, #0
	bne	.L12	@cond_branch
.L11:
	add	r0, r1, #0
	bl	SetMirageRnd
	pop	{r4}
	pop	{r0}
	bx	r0
.L15:
	.align	2, 0
.L14:
	.word	0x41c64e6d
	.word	0x3039
.Lfe4:
	.size	 UpdateMirageRnd,.Lfe4-UpdateMirageRnd
	.align	2, 0
	.globl	IsMirageIslandPresent
	.type	 IsMirageIslandPresent,function
	.thumb_func
IsMirageIslandPresent:
	push	{r4, r5, r6, lr}
	bl	GetMirageRnd
	lsr	r6, r0, #0x10
	mov	r5, #0x0
.L20:
	mov	r0, #0x64
	mov	r1, r5
	mul	r1, r1, r0
	ldr	r0, .L24
	add	r4, r1, r0
	add	r0, r4, #0
	mov	r1, #0xb
	bl	GetMonData
	cmp	r0, #0
	beq	.L19	@cond_branch
	add	r0, r4, #0
	mov	r1, #0x0
	bl	GetMonData
	ldr	r1, .L24+0x4
	and	r1, r1, r0
	cmp	r1, r6
	bne	.L19	@cond_branch
	mov	r0, #0x1
	b	.L23
.L25:
	.align	2, 0
.L24:
	.word	gPlayerParty
	.word	0xffff
.L19:
	add	r5, r5, #0x1
	cmp	r5, #0x5
	ble	.L20	@cond_branch
	mov	r0, #0x0
.L23:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe5:
	.size	 IsMirageIslandPresent,.Lfe5-IsMirageIslandPresent
	.section .rodata
	.type	 tide.18,object
tide.18:
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
.text
	.align	2, 0
	.globl	UpdateShoalTideFlag
	.type	 UpdateShoalTideFlag,function
	.thumb_func
UpdateShoalTideFlag:
	push	{lr}
	bl	GetLastUsedWarpMapType
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	IsMapTypeOutdoors
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L27	@cond_branch
	bl	RtcCalcLocalTime
	ldr	r1, .L30
	ldr	r0, .L30+0x4
	ldrb	r0, [r0, #0x2]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.L28	@cond_branch
	ldr	r0, .L30+0x8
	bl	FlagSet
	b	.L27
.L31:
	.align	2, 0
.L30:
	.word	tide.18
	.word	gLocalTime
	.word	0x89a
.L28:
	ldr	r0, .L32
	bl	FlagClear
.L27:
	pop	{r0}
	bx	r0
.L33:
	.align	2, 0
.L32:
	.word	0x89a
.Lfe6:
	.size	 UpdateShoalTideFlag,.Lfe6-UpdateShoalTideFlag
	.align	2, 0
	.type	 Task_WaitWeather,function
	.thumb_func
Task_WaitWeather:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	bl	IsWeatherChangeComplete
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L35	@cond_branch
	bl	EnableBothScriptContexts
	add	r0, r4, #0
	bl	DestroyTask
.L35:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe7:
	.size	 Task_WaitWeather,.Lfe7-Task_WaitWeather
	.align	2, 0
	.globl	WaitWeather
	.type	 WaitWeather,function
	.thumb_func
WaitWeather:
	push	{lr}
	ldr	r0, .L37
	mov	r1, #0x50
	bl	CreateTask
	pop	{r0}
	bx	r0
.L38:
	.align	2, 0
.L37:
	.word	Task_WaitWeather
.Lfe8:
	.size	 WaitWeather,.Lfe8-WaitWeather
	.align	2, 0
	.globl	InitBirchState
	.type	 InitBirchState,function
	.thumb_func
InitBirchState:
	push	{lr}
	ldr	r0, .L40
	bl	GetVarPointer
	mov	r1, #0x0
	strh	r1, [r0]
	pop	{r0}
	bx	r0
.L41:
	.align	2, 0
.L40:
	.word	0x4049
.Lfe9:
	.size	 InitBirchState,.Lfe9-InitBirchState
	.align	2, 0
	.globl	UpdateBirchState
	.type	 UpdateBirchState,function
	.thumb_func
UpdateBirchState:
	push	{r4, r5, lr}
	add	r4, r0, #0
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	ldr	r0, .L43
	bl	GetVarPointer
	add	r5, r0, #0
	ldrh	r0, [r5]
	add	r4, r4, r0
	strh	r4, [r5]
	ldrh	r0, [r5]
	mov	r1, #0x7
	bl	__umodsi3
	strh	r0, [r5]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L44:
	.align	2, 0
.L43:
	.word	0x4049
.Lfe10:
	.size	 UpdateBirchState,.Lfe10-UpdateBirchState
.text
	.align	2, 0

