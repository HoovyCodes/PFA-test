@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section .rodata
	.align	2, 0
	.type	 sRtcDummy,object
	.size	 sRtcDummy,12
sRtcDummy:
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.space	9
	.align	2, 0
	.type	 sNumDaysInMonths,object
	.size	 sNumDaysInMonths,48
sNumDaysInMonths:
	.word	0x1f
	.word	0x1c
	.word	0x1f
	.word	0x1e
	.word	0x1f
	.word	0x1e
	.word	0x1f
	.word	0x1f
	.word	0x1e
	.word	0x1f
	.word	0x1e
	.word	0x1f
.text
	.align	2, 0
	.globl	RtcDisableInterrupts
	.type	 RtcDisableInterrupts,function
	.thumb_func
RtcDisableInterrupts:
	ldr	r2, .L3
	ldr	r1, .L3+0x4
	ldrh	r0, [r1]
	strh	r0, [r2]
	mov	r0, #0x0
	strh	r0, [r1]
	bx	lr
.L4:
	.align	2, 0
.L3:
	.word	sSavedIme
	.word	0x4000208
.Lfe1:
	.size	 RtcDisableInterrupts,.Lfe1-RtcDisableInterrupts
	.align	2, 0
	.globl	RtcRestoreInterrupts
	.type	 RtcRestoreInterrupts,function
	.thumb_func
RtcRestoreInterrupts:
	ldr	r0, .L6
	ldr	r1, .L6+0x4
	ldrh	r1, [r1]
	strh	r1, [r0]
	bx	lr
.L7:
	.align	2, 0
.L6:
	.word	0x4000208
	.word	sSavedIme
.Lfe2:
	.size	 RtcRestoreInterrupts,.Lfe2-RtcRestoreInterrupts
	.align	2, 0
	.globl	ConvertBcdToBinary
	.type	 ConvertBcdToBinary,function
	.thumb_func
ConvertBcdToBinary:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	cmp	r2, #0x9f
	bhi	.L13	@cond_branch
	mov	r3, #0xf
	and	r3, r3, r2
	cmp	r3, #0x9
	bls	.L10	@cond_branch
.L13:
	mov	r0, #0xff
	b	.L12
.L10:
	lsr	r1, r0, #0x1c
	mov	r0, #0xf
	and	r1, r1, r0
	lsl	r0, r1, #0x2
	add	r0, r0, r1
	lsl	r0, r0, #0x1
	add	r0, r0, r3
.L12:
	pop	{r1}
	bx	r1
.Lfe3:
	.size	 ConvertBcdToBinary,.Lfe3-ConvertBcdToBinary
	.align	2, 0
	.globl	IsLeapYear
	.type	 IsLeapYear,function
	.thumb_func
IsLeapYear:
	push	{r4, lr}
	add	r4, r0, #0
	mov	r0, #0x3
	and	r0, r0, r4
	cmp	r0, #0
	bne	.L17	@cond_branch
	add	r0, r4, #0
	mov	r1, #0x64
	bl	__umodsi3
	cmp	r0, #0
	bne	.L16	@cond_branch
.L17:
	mov	r1, #0xc8
	lsl	r1, r1, #0x1
	add	r0, r4, #0
	bl	__umodsi3
	cmp	r0, #0
	bne	.L15	@cond_branch
.L16:
	mov	r0, #0x1
	b	.L18
.L15:
	mov	r0, #0x0
.L18:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe4:
	.size	 IsLeapYear,.Lfe4-IsLeapYear
	.align	2, 0
	.globl	ConvertDateToDayCount
	.type	 ConvertDateToDayCount,function
	.thumb_func
ConvertDateToDayCount:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	lsl	r0, r0, #0x18
	lsr	r7, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r6, r1, #0x18
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	mov	r8, r2
	mov	r5, #0x0
	sub	r4, r7, #0x1
	cmp	r4, #0
	blt	.L21	@cond_branch
.L23:
	ldr	r1, .L32
	add	r0, r5, r1
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
	add	r0, r4, #0
	bl	IsLeapYear
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	bne	.L22	@cond_branch
	add	r0, r5, #0x1
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
.L22:
	sub	r4, r4, #0x1
	cmp	r4, #0
	bge	.L23	@cond_branch
.L21:
	sub	r0, r6, #0x1
	cmp	r0, #0
	ble	.L27	@cond_branch
	ldr	r1, .L32+0x4
	add	r4, r0, #0
.L29:
	ldmia	r1!, {r0}
	add	r0, r5, r0
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
	sub	r4, r4, #0x1
	cmp	r4, #0
	bne	.L29	@cond_branch
.L27:
	cmp	r6, #0x2
	bls	.L31	@cond_branch
	add	r0, r7, #0
	bl	IsLeapYear
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	bne	.L31	@cond_branch
	add	r0, r5, #0x1
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
.L31:
	mov	r1, r8
	add	r0, r5, r1
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
	add	r0, r5, #0
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L33:
	.align	2, 0
.L32:
	.word	0x16d
	.word	sNumDaysInMonths
.Lfe5:
	.size	 ConvertDateToDayCount,.Lfe5-ConvertDateToDayCount
	.align	2, 0
	.globl	RtcGetDayCount
	.type	 RtcGetDayCount,function
	.thumb_func
RtcGetDayCount:
	push	{r4, r5, r6, lr}
	add	r6, r0, #0
	ldrb	r0, [r6]
	bl	ConvertBcdToBinary
	add	r5, r0, #0
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	ldrb	r0, [r6, #0x1]
	bl	ConvertBcdToBinary
	add	r4, r0, #0
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	ldrb	r0, [r6, #0x2]
	bl	ConvertBcdToBinary
	add	r2, r0, #0
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	add	r0, r5, #0
	add	r1, r4, #0
	bl	ConvertDateToDayCount
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe6:
	.size	 RtcGetDayCount,.Lfe6-RtcGetDayCount
	.align	2, 0
	.globl	RtcInit
	.type	 RtcInit,function
	.thumb_func
RtcInit:
	push	{r4, r5, lr}
	ldr	r5, .L39
	mov	r0, #0x0
	strh	r0, [r5]
	bl	RtcDisableInterrupts
	bl	SiiRtcUnprotect
	bl	SiiRtcProbe
	ldr	r4, .L39+0x4
	strb	r0, [r4]
	bl	RtcRestoreInterrupts
	ldrb	r4, [r4]
	mov	r0, #0xf
	and	r0, r0, r4
	cmp	r0, #0x1
	beq	.L36	@cond_branch
	mov	r0, #0x1
	strh	r0, [r5]
	b	.L35
.L40:
	.align	2, 0
.L39:
	.word	sErrorStatus
	.word	sProbeResult
.L36:
	mov	r0, #0xf0
	and	r0, r0, r4
	cmp	r0, #0
	beq	.L37	@cond_branch
	mov	r0, #0x2
.L37:
	strh	r0, [r5]
	ldr	r4, .L41
	add	r0, r4, #0
	bl	RtcGetRawInfo
	add	r0, r4, #0
	bl	RtcCheckInfo
	ldr	r1, .L41+0x4
	strh	r0, [r1]
.L35:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L42:
	.align	2, 0
.L41:
	.word	sRtc
	.word	sErrorStatus
.Lfe7:
	.size	 RtcInit,.Lfe7-RtcInit
	.align	2, 0
	.globl	RtcGetErrorStatus
	.type	 RtcGetErrorStatus,function
	.thumb_func
RtcGetErrorStatus:
	ldr	r0, .L44
	ldrh	r0, [r0]
	bx	lr
.L45:
	.align	2, 0
.L44:
	.word	sErrorStatus
.Lfe8:
	.size	 RtcGetErrorStatus,.Lfe8-RtcGetErrorStatus
	.align	2, 0
	.globl	RtcGetInfo
	.type	 RtcGetInfo,function
	.thumb_func
RtcGetInfo:
	push	{r4, lr}
	add	r2, r0, #0
	ldr	r0, .L49
	ldrh	r1, [r0]
	mov	r0, #0xff
	lsl	r0, r0, #0x4
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L47	@cond_branch
	add	r1, r2, #0
	ldr	r0, .L49+0x4
	ldmia	r0!, {r2, r3, r4}
	stmia	r1!, {r2, r3, r4}
	b	.L48
.L50:
	.align	2, 0
.L49:
	.word	sErrorStatus
	.word	sRtcDummy
.L47:
	add	r0, r2, #0
	bl	RtcGetRawInfo
.L48:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe9:
	.size	 RtcGetInfo,.Lfe9-RtcGetInfo
	.align	2, 0
	.globl	RtcGetDateTime
	.type	 RtcGetDateTime,function
	.thumb_func
RtcGetDateTime:
	push	{r4, lr}
	add	r4, r0, #0
	bl	RtcDisableInterrupts
	add	r0, r4, #0
	bl	SiiRtcGetDateTime
	bl	RtcRestoreInterrupts
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe10:
	.size	 RtcGetDateTime,.Lfe10-RtcGetDateTime
	.align	2, 0
	.globl	RtcGetStatus
	.type	 RtcGetStatus,function
	.thumb_func
RtcGetStatus:
	push	{r4, lr}
	add	r4, r0, #0
	bl	RtcDisableInterrupts
	add	r0, r4, #0
	bl	SiiRtcGetStatus
	bl	RtcRestoreInterrupts
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe11:
	.size	 RtcGetStatus,.Lfe11-RtcGetStatus
	.align	2, 0
	.globl	RtcGetRawInfo
	.type	 RtcGetRawInfo,function
	.thumb_func
RtcGetRawInfo:
	push	{r4, lr}
	add	r4, r0, #0
	bl	RtcGetStatus
	add	r0, r4, #0
	bl	RtcGetDateTime
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe12:
	.size	 RtcGetRawInfo,.Lfe12-RtcGetRawInfo
	.align	2, 0
	.globl	RtcCheckInfo
	.type	 RtcCheckInfo,function
	.thumb_func
RtcCheckInfo:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r7, r0, #0
	ldrb	r1, [r7, #0x7]
	mov	r0, #0x80
	and	r0, r0, r1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	neg	r0, r0
	asr	r4, r0, #0x1f
	mov	r0, #0x20
	and	r4, r4, r0
	mov	r0, #0x40
	and	r0, r0, r1
	cmp	r0, #0
	bne	.L56	@cond_branch
	mov	r0, #0x10
	orr	r4, r4, r0
.L56:
	ldrb	r0, [r7]
	bl	ConvertBcdToBinary
	mov	r8, r0
	cmp	r0, #0xff
	bne	.L57	@cond_branch
	mov	r0, #0x40
	orr	r4, r4, r0
	lsl	r0, r4, #0x10
	lsr	r4, r0, #0x10
.L57:
	ldrb	r0, [r7, #0x1]
	bl	ConvertBcdToBinary
	add	r6, r0, #0
	cmp	r6, #0xff
	beq	.L59	@cond_branch
	cmp	r6, #0
	beq	.L59	@cond_branch
	cmp	r6, #0xc
	ble	.L58	@cond_branch
.L59:
	mov	r0, #0x80
	orr	r4, r4, r0
	lsl	r0, r4, #0x10
	lsr	r4, r0, #0x10
.L58:
	ldrb	r0, [r7, #0x2]
	bl	ConvertBcdToBinary
	add	r5, r0, #0
	cmp	r5, #0xff
	bne	.L60	@cond_branch
	mov	r1, #0x80
	lsl	r1, r1, #0x1
	add	r0, r1, #0
	orr	r4, r4, r0
	lsl	r0, r4, #0x10
	lsr	r4, r0, #0x10
.L60:
	cmp	r6, #0x2
	bne	.L61	@cond_branch
	mov	r0, r8
	bl	IsLeapYear
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r1, .L69
	ldr	r1, [r1, #0x4]
	add	r0, r0, r1
	b	.L68
.L70:
	.align	2, 0
.L69:
	.word	sNumDaysInMonths
.L61:
	ldr	r0, .L71
	sub	r1, r6, #0x1
	lsl	r1, r1, #0x2
	add	r1, r1, r0
	ldr	r0, [r1]
.L68:
	cmp	r5, r0
	ble	.L63	@cond_branch
	mov	r1, #0x80
	lsl	r1, r1, #0x1
	add	r0, r1, #0
	orr	r4, r4, r0
	lsl	r0, r4, #0x10
	lsr	r4, r0, #0x10
.L63:
	ldrb	r0, [r7, #0x4]
	bl	ConvertBcdToBinary
	add	r5, r0, #0
	cmp	r5, #0x18
	ble	.L65	@cond_branch
	mov	r1, #0x80
	lsl	r1, r1, #0x2
	add	r0, r1, #0
	orr	r4, r4, r0
	lsl	r0, r4, #0x10
	lsr	r4, r0, #0x10
.L65:
	ldrb	r0, [r7, #0x5]
	bl	ConvertBcdToBinary
	add	r5, r0, #0
	cmp	r5, #0x3c
	ble	.L66	@cond_branch
	mov	r1, #0x80
	lsl	r1, r1, #0x3
	add	r0, r1, #0
	orr	r4, r4, r0
	lsl	r0, r4, #0x10
	lsr	r4, r0, #0x10
.L66:
	ldrb	r0, [r7, #0x6]
	bl	ConvertBcdToBinary
	add	r5, r0, #0
	cmp	r5, #0x3c
	ble	.L67	@cond_branch
	mov	r1, #0x80
	lsl	r1, r1, #0x4
	add	r0, r1, #0
	orr	r4, r4, r0
	lsl	r0, r4, #0x10
	lsr	r4, r0, #0x10
.L67:
	add	r0, r4, #0
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L72:
	.align	2, 0
.L71:
	.word	sNumDaysInMonths
.Lfe13:
	.size	 RtcCheckInfo,.Lfe13-RtcCheckInfo
	.align	2, 0
	.globl	RtcReset
	.type	 RtcReset,function
	.thumb_func
RtcReset:
	push	{lr}
	bl	RtcDisableInterrupts
	bl	SiiRtcReset
	bl	RtcRestoreInterrupts
	pop	{r0}
	bx	r0
.Lfe14:
	.size	 RtcReset,.Lfe14-RtcReset
	.align	2, 0
	.globl	FormatDecimalTime
	.type	 FormatDecimalTime,function
	.thumb_func
FormatDecimalTime:
	push	{r4, r5, r6, lr}
	add	r5, r2, #0
	add	r6, r3, #0
	mov	r2, #0x2
	mov	r3, #0x2
	bl	ConvertIntToDecimalStringN
	mov	r4, #0xf0
	strb	r4, [r0]
	add	r0, r0, #0x1
	add	r1, r5, #0
	mov	r2, #0x2
	mov	r3, #0x2
	bl	ConvertIntToDecimalStringN
	strb	r4, [r0]
	add	r0, r0, #0x1
	add	r1, r6, #0
	mov	r2, #0x2
	mov	r3, #0x2
	bl	ConvertIntToDecimalStringN
	mov	r1, #0xff
	strb	r1, [r0]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lfe15:
	.size	 FormatDecimalTime,.Lfe15-FormatDecimalTime
	.align	2, 0
	.globl	FormatHexTime
	.type	 FormatHexTime,function
	.thumb_func
FormatHexTime:
	push	{r4, r5, r6, lr}
	add	r5, r2, #0
	add	r6, r3, #0
	mov	r2, #0x2
	mov	r3, #0x2
	bl	ConvertIntToHexStringN
	mov	r4, #0xf0
	strb	r4, [r0]
	add	r0, r0, #0x1
	add	r1, r5, #0
	mov	r2, #0x2
	mov	r3, #0x2
	bl	ConvertIntToHexStringN
	strb	r4, [r0]
	add	r0, r0, #0x1
	add	r1, r6, #0
	mov	r2, #0x2
	mov	r3, #0x2
	bl	ConvertIntToHexStringN
	mov	r1, #0xff
	strb	r1, [r0]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lfe16:
	.size	 FormatHexTime,.Lfe16-FormatHexTime
	.align	2, 0
	.globl	FormatHexRtcTime
	.type	 FormatHexRtcTime,function
	.thumb_func
FormatHexRtcTime:
	push	{lr}
	ldr	r3, .L77
	ldrb	r1, [r3, #0x4]
	ldrb	r2, [r3, #0x5]
	ldrb	r3, [r3, #0x6]
	bl	FormatHexTime
	pop	{r0}
	bx	r0
.L78:
	.align	2, 0
.L77:
	.word	sRtc
.Lfe17:
	.size	 FormatHexRtcTime,.Lfe17-FormatHexRtcTime
	.align	2, 0
	.globl	FormatDecimalDate
	.type	 FormatDecimalDate,function
	.thumb_func
FormatDecimalDate:
	push	{r4, r5, r6, lr}
	add	r5, r2, #0
	add	r6, r3, #0
	mov	r2, #0x2
	mov	r3, #0x4
	bl	ConvertIntToDecimalStringN
	mov	r4, #0xae
	strb	r4, [r0]
	add	r0, r0, #0x1
	add	r1, r5, #0
	mov	r2, #0x2
	mov	r3, #0x2
	bl	ConvertIntToDecimalStringN
	strb	r4, [r0]
	add	r0, r0, #0x1
	add	r1, r6, #0
	mov	r2, #0x2
	mov	r3, #0x2
	bl	ConvertIntToDecimalStringN
	mov	r1, #0xff
	strb	r1, [r0]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lfe18:
	.size	 FormatDecimalDate,.Lfe18-FormatDecimalDate
	.align	2, 0
	.globl	FormatHexDate
	.type	 FormatHexDate,function
	.thumb_func
FormatHexDate:
	push	{r4, r5, r6, lr}
	add	r5, r2, #0
	add	r6, r3, #0
	mov	r2, #0x2
	mov	r3, #0x4
	bl	ConvertIntToHexStringN
	mov	r4, #0xae
	strb	r4, [r0]
	add	r0, r0, #0x1
	add	r1, r5, #0
	mov	r2, #0x2
	mov	r3, #0x2
	bl	ConvertIntToHexStringN
	strb	r4, [r0]
	add	r0, r0, #0x1
	add	r1, r6, #0
	mov	r2, #0x2
	mov	r3, #0x2
	bl	ConvertIntToHexStringN
	mov	r1, #0xff
	strb	r1, [r0]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lfe19:
	.size	 FormatHexDate,.Lfe19-FormatHexDate
	.align	2, 0
	.globl	RtcCalcTimeDifference
	.type	 RtcCalcTimeDifference,function
	.thumb_func
RtcCalcTimeDifference:
	push	{r4, r5, r6, r7, lr}
	add	r5, r0, #0
	add	r7, r1, #0
	add	r6, r2, #0
	bl	RtcGetDayCount
	add	r4, r0, #0
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	ldrb	r0, [r5, #0x6]
	bl	ConvertBcdToBinary
	ldrb	r1, [r6, #0x4]
	sub	r0, r0, r1
	strb	r0, [r7, #0x4]
	ldrb	r0, [r5, #0x5]
	bl	ConvertBcdToBinary
	ldrb	r1, [r6, #0x3]
	sub	r0, r0, r1
	strb	r0, [r7, #0x3]
	ldrb	r0, [r5, #0x4]
	bl	ConvertBcdToBinary
	ldrb	r1, [r6, #0x2]
	sub	r0, r0, r1
	strb	r0, [r7, #0x2]
	ldrh	r0, [r6]
	sub	r4, r4, r0
	strh	r4, [r7]
	ldrb	r1, [r7, #0x4]
	mov	r0, #0x4
	ldrsb	r0, [r7, r0]
	cmp	r0, #0
	bge	.L82	@cond_branch
	add	r0, r1, #0
	add	r0, r0, #0x3c
	strb	r0, [r7, #0x4]
	ldrb	r0, [r7, #0x3]
	sub	r0, r0, #0x1
	strb	r0, [r7, #0x3]
.L82:
	ldrb	r1, [r7, #0x3]
	mov	r0, #0x3
	ldrsb	r0, [r7, r0]
	cmp	r0, #0
	bge	.L83	@cond_branch
	add	r0, r1, #0
	add	r0, r0, #0x3c
	strb	r0, [r7, #0x3]
	ldrb	r0, [r7, #0x2]
	sub	r0, r0, #0x1
	strb	r0, [r7, #0x2]
.L83:
	ldrb	r1, [r7, #0x2]
	mov	r0, #0x2
	ldrsb	r0, [r7, r0]
	cmp	r0, #0
	bge	.L84	@cond_branch
	add	r0, r1, #0
	add	r0, r0, #0x18
	strb	r0, [r7, #0x2]
	ldrh	r0, [r7]
	sub	r0, r0, #0x1
	strh	r0, [r7]
.L84:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe20:
	.size	 RtcCalcTimeDifference,.Lfe20-RtcCalcTimeDifference
	.align	2, 0
	.globl	RtcCalcLocalTime
	.type	 RtcCalcLocalTime,function
	.thumb_func
RtcCalcLocalTime:
	push	{r4, lr}
	ldr	r4, .L86
	add	r0, r4, #0
	bl	RtcGetInfo
	ldr	r1, .L86+0x4
	ldr	r0, .L86+0x8
	ldr	r2, [r0]
	add	r2, r2, #0x98
	add	r0, r4, #0
	bl	RtcCalcTimeDifference
	pop	{r4}
	pop	{r0}
	bx	r0
.L87:
	.align	2, 0
.L86:
	.word	sRtc
	.word	gLocalTime
	.word	gSaveBlock2Ptr
.Lfe21:
	.size	 RtcCalcLocalTime,.Lfe21-RtcCalcLocalTime
	.align	2, 0
	.globl	RtcInitLocalTimeOffset
	.type	 RtcInitLocalTimeOffset,function
	.thumb_func
RtcInitLocalTimeOffset:
	push	{lr}
	add	r3, r0, #0
	add	r2, r1, #0
	mov	r0, #0x0
	add	r1, r3, #0
	mov	r3, #0x0
	bl	RtcCalcLocalTimeOffset
	pop	{r0}
	bx	r0
.Lfe22:
	.size	 RtcInitLocalTimeOffset,.Lfe22-RtcInitLocalTimeOffset
	.align	2, 0
	.globl	RtcCalcLocalTimeOffset
	.type	 RtcCalcLocalTimeOffset,function
	.thumb_func
RtcCalcLocalTimeOffset:
	push	{r4, r5, lr}
	ldr	r4, .L90
	strh	r0, [r4]
	strb	r1, [r4, #0x2]
	strb	r2, [r4, #0x3]
	strb	r3, [r4, #0x4]
	ldr	r5, .L90+0x4
	add	r0, r5, #0
	bl	RtcGetInfo
	ldr	r0, .L90+0x8
	ldr	r1, [r0]
	add	r1, r1, #0x98
	add	r0, r5, #0
	add	r2, r4, #0
	bl	RtcCalcTimeDifference
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L91:
	.align	2, 0
.L90:
	.word	gLocalTime
	.word	sRtc
	.word	gSaveBlock2Ptr
.Lfe23:
	.size	 RtcCalcLocalTimeOffset,.Lfe23-RtcCalcLocalTimeOffset
	.align	2, 0
	.globl	CalcTimeDifference
	.type	 CalcTimeDifference,function
	.thumb_func
CalcTimeDifference:
	push	{r4, r5, r6, lr}
	add	r4, r0, #0
	ldrb	r3, [r2, #0x4]
	ldrb	r0, [r1, #0x4]
	sub	r5, r3, r0
	strb	r5, [r4, #0x4]
	ldrb	r3, [r2, #0x3]
	ldrb	r0, [r1, #0x3]
	sub	r6, r3, r0
	strb	r6, [r4, #0x3]
	ldrb	r0, [r2, #0x2]
	ldrb	r3, [r1, #0x2]
	sub	r0, r0, r3
	strb	r0, [r4, #0x2]
	ldrh	r0, [r2]
	ldrh	r1, [r1]
	sub	r0, r0, r1
	strh	r0, [r4]
	lsl	r0, r5, #0x18
	cmp	r0, #0
	bge	.L93	@cond_branch
	add	r0, r5, #0
	add	r0, r0, #0x3c
	strb	r0, [r4, #0x4]
	sub	r0, r6, #0x1
	strb	r0, [r4, #0x3]
.L93:
	ldrb	r1, [r4, #0x3]
	mov	r0, #0x3
	ldrsb	r0, [r4, r0]
	cmp	r0, #0
	bge	.L94	@cond_branch
	add	r0, r1, #0
	add	r0, r0, #0x3c
	strb	r0, [r4, #0x3]
	ldrb	r0, [r4, #0x2]
	sub	r0, r0, #0x1
	strb	r0, [r4, #0x2]
.L94:
	ldrb	r1, [r4, #0x2]
	mov	r0, #0x2
	ldrsb	r0, [r4, r0]
	cmp	r0, #0
	bge	.L95	@cond_branch
	add	r0, r1, #0
	add	r0, r0, #0x18
	strb	r0, [r4, #0x2]
	ldrh	r0, [r4]
	sub	r0, r0, #0x1
	strh	r0, [r4]
.L95:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lfe24:
	.size	 CalcTimeDifference,.Lfe24-CalcTimeDifference
	.align	2, 0
	.globl	RtcGetMinuteCount
	.type	 RtcGetMinuteCount,function
	.thumb_func
RtcGetMinuteCount:
	push	{r4, lr}
	ldr	r4, .L97
	add	r0, r4, #0
	bl	RtcGetInfo
	add	r0, r4, #0
	bl	RtcGetDayCount
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r1, r0, #0x1
	add	r1, r1, r0
	lsl	r0, r1, #0x4
	sub	r0, r0, r1
	lsl	r0, r0, #0x5
	ldrb	r2, [r4, #0x4]
	lsl	r1, r2, #0x4
	sub	r1, r1, r2
	lsl	r1, r1, #0x2
	add	r0, r0, r1
	ldrb	r4, [r4, #0x5]
	add	r0, r0, r4
	pop	{r4}
	pop	{r1}
	bx	r1
.L98:
	.align	2, 0
.L97:
	.word	sRtc
.Lfe25:
	.size	 RtcGetMinuteCount,.Lfe25-RtcGetMinuteCount
	.align	2, 0
	.globl	RtcGetLocalDayCount
	.type	 RtcGetLocalDayCount,function
	.thumb_func
RtcGetLocalDayCount:
	push	{lr}
	ldr	r0, .L100
	bl	RtcGetDayCount
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	pop	{r1}
	bx	r1
.L101:
	.align	2, 0
.L100:
	.word	sRtc
.Lfe26:
	.size	 RtcGetLocalDayCount,.Lfe26-RtcGetLocalDayCount
	.comm	gLocalTime, 8	@ 8

	.lcomm	sErrorStatus,2

	.lcomm	sRtc,12

	.lcomm	sProbeResult,1

	.lcomm	sSavedIme,2
.text
	.align	2, 0

