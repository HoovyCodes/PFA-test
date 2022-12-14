@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.globl	PutMemBlockHeader
	.type	 PutMemBlockHeader,function
	.thumb_func
PutMemBlockHeader:
	push	{r4, lr}
	mov	r4, #0x0
	strh	r4, [r0]
	ldr	r4, .L3
	strh	r4, [r0, #0x2]
	str	r3, [r0, #0x4]
	str	r1, [r0, #0x8]
	str	r2, [r0, #0xc]
	pop	{r4}
	pop	{r0}
	bx	r0
.L4:
	.align	2, 0
.L3:
	.word	0xa3a3
.Lfe1:
	.size	 PutMemBlockHeader,.Lfe1-PutMemBlockHeader
	.align	2, 0
	.globl	PutFirstMemBlockHeader
	.type	 PutFirstMemBlockHeader,function
	.thumb_func
PutFirstMemBlockHeader:
	push	{lr}
	add	r2, r0, #0
	add	r3, r1, #0
	sub	r3, r3, #0x10
	add	r1, r2, #0
	bl	PutMemBlockHeader
	pop	{r0}
	bx	r0
.Lfe2:
	.size	 PutFirstMemBlockHeader,.Lfe2-PutFirstMemBlockHeader
	.align	2, 0
	.globl	AllocInternal
	.type	 AllocInternal,function
	.thumb_func
AllocInternal:
	push	{r4, r5, r6, lr}
	add	r4, r0, #0
	add	r6, r4, #0
	mov	r0, #0x3
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L7	@cond_branch
	lsr	r0, r1, #0x2
	add	r0, r0, #0x1
	lsl	r1, r0, #0x2
.L7:
	mov	r2, #0x1
.L8:
	ldrh	r0, [r4]
	cmp	r0, #0
	bne	.L11	@cond_branch
	ldr	r3, [r4, #0x4]
	cmp	r3, r1
	bcc	.L11	@cond_branch
	sub	r0, r3, r1
	cmp	r0, #0x1f
	bhi	.L13	@cond_branch
	strh	r2, [r4]
	b	.L14
.L13:
	sub	r3, r3, #0x10
	sub	r3, r3, r1
	add	r0, r1, #0
	add	r0, r0, #0x10
	add	r5, r4, r0
	strh	r2, [r4]
	str	r1, [r4, #0x4]
	ldr	r2, [r4, #0xc]
	add	r0, r5, #0
	add	r1, r4, #0
	bl	PutMemBlockHeader
	str	r5, [r4, #0xc]
	ldr	r0, [r5, #0xc]
	cmp	r0, r6
	beq	.L14	@cond_branch
	str	r5, [r0, #0x8]
.L14:
	add	r0, r4, #0
	add	r0, r0, #0x10
	b	.L17
.L11:
	ldr	r0, [r4, #0xc]
	cmp	r0, r6
	beq	.L16	@cond_branch
	add	r4, r0, #0
	b	.L8
.L16:
	mov	r0, #0x0
.L17:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe3:
	.size	 AllocInternal,.Lfe3-AllocInternal
	.align	2, 0
	.globl	FreeInternal
	.type	 FreeInternal,function
	.thumb_func
FreeInternal:
	push	{r4, r5, lr}
	cmp	r1, #0
	beq	.L19	@cond_branch
	add	r5, r0, #0
	add	r2, r1, #0
	sub	r2, r2, #0x10
	mov	r0, #0x0
	strh	r0, [r2]
	ldr	r3, [r2, #0xc]
	cmp	r3, r5
	beq	.L20	@cond_branch
	ldrh	r4, [r3]
	cmp	r4, #0
	bne	.L20	@cond_branch
	ldr	r0, [r2, #0x4]
	add	r0, r0, #0x10
	ldr	r1, [r3, #0x4]
	add	r0, r0, r1
	str	r0, [r2, #0x4]
	strh	r4, [r3, #0x2]
	ldr	r0, [r2, #0xc]
	ldr	r0, [r0, #0xc]
	str	r0, [r2, #0xc]
	cmp	r0, r5
	beq	.L20	@cond_branch
	str	r2, [r0, #0x8]
.L20:
	cmp	r2, r5
	beq	.L19	@cond_branch
	ldr	r1, [r2, #0x8]
	ldrh	r3, [r1]
	cmp	r3, #0
	bne	.L19	@cond_branch
	ldr	r0, [r2, #0xc]
	str	r0, [r1, #0xc]
	ldr	r1, [r2, #0xc]
	cmp	r1, r5
	beq	.L25	@cond_branch
	ldr	r0, [r2, #0x8]
	str	r0, [r1, #0x8]
.L25:
	strh	r3, [r2, #0x2]
	ldr	r0, [r2, #0x8]
	ldr	r1, [r0, #0x4]
	add	r1, r1, #0x10
	ldr	r2, [r2, #0x4]
	add	r1, r1, r2
	str	r1, [r0, #0x4]
.L19:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lfe4:
	.size	 FreeInternal,.Lfe4-FreeInternal
	.align	2, 0
	.globl	AllocZeroedInternal
	.type	 AllocZeroedInternal,function
	.thumb_func
AllocZeroedInternal:
	push	{r4, r5, lr}
	add	sp, sp, #-0x4
	add	r4, r1, #0
	bl	AllocInternal
	add	r5, r0, #0
	cmp	r5, #0
	beq	.L27	@cond_branch
	mov	r0, #0x3
	and	r0, r0, r4
	cmp	r0, #0
	beq	.L28	@cond_branch
	lsr	r0, r4, #0x2
	add	r0, r0, #0x1
	lsl	r4, r0, #0x2
.L28:
	mov	r0, #0x0
	str	r0, [sp]
	lsl	r2, r4, #0x9
	lsr	r2, r2, #0xb
	mov	r0, #0xa0
	lsl	r0, r0, #0x13
	orr	r2, r2, r0
	mov	r0, sp
	add	r1, r5, #0
	bl	CpuSet
.L27:
	add	r0, r5, #0
	add	sp, sp, #0x4
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe5:
	.size	 AllocZeroedInternal,.Lfe5-AllocZeroedInternal
	.align	2, 0
	.globl	CheckMemBlockInternal
	.type	 CheckMemBlockInternal,function
	.thumb_func
CheckMemBlockInternal:
	push	{r4, r5, lr}
	add	r5, r0, #0
	add	r3, r1, #0
	sub	r3, r3, #0x10
	ldrh	r2, [r3, #0x2]
	ldr	r0, .L38
	cmp	r2, r0
	bne	.L37	@cond_branch
	ldr	r0, [r3, #0xc]
	ldrh	r1, [r0, #0x2]
	add	r4, r0, #0
	cmp	r1, r2
	bne	.L37	@cond_branch
	cmp	r4, r5
	beq	.L32	@cond_branch
	ldr	r0, [r4, #0x8]
	cmp	r0, r3
	bne	.L37	@cond_branch
.L32:
	ldr	r2, [r3, #0x8]
	ldrh	r1, [r2, #0x2]
	ldr	r0, .L38
	cmp	r1, r0
	bne	.L37	@cond_branch
	cmp	r2, r5
	beq	.L34	@cond_branch
	ldr	r0, [r2, #0xc]
	cmp	r0, r3
	bne	.L37	@cond_branch
.L34:
	cmp	r4, r5
	beq	.L35	@cond_branch
	ldr	r0, [r3, #0x4]
	add	r0, r0, #0x10
	add	r0, r3, r0
	cmp	r4, r0
	beq	.L35	@cond_branch
.L37:
	mov	r0, #0x0
	b	.L36
.L39:
	.align	2, 0
.L38:
	.word	0xa3a3
.L35:
	mov	r0, #0x1
.L36:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe6:
	.size	 CheckMemBlockInternal,.Lfe6-CheckMemBlockInternal
	.align	2, 0
	.globl	InitHeap
	.type	 InitHeap,function
	.thumb_func
InitHeap:
	push	{lr}
	ldr	r2, .L41
	str	r0, [r2]
	ldr	r2, .L41+0x4
	str	r1, [r2]
	bl	PutFirstMemBlockHeader
	pop	{r0}
	bx	r0
.L42:
	.align	2, 0
.L41:
	.word	sHeapStart
	.word	sHeapSize
.Lfe7:
	.size	 InitHeap,.Lfe7-InitHeap
	.align	2, 0
	.globl	Alloc
	.type	 Alloc,function
	.thumb_func
Alloc:
	push	{lr}
	add	r1, r0, #0
	ldr	r0, .L44
	ldr	r0, [r0]
	bl	AllocInternal
	pop	{r1}
	bx	r1
.L45:
	.align	2, 0
.L44:
	.word	sHeapStart
.Lfe8:
	.size	 Alloc,.Lfe8-Alloc
	.align	2, 0
	.globl	AllocZeroed
	.type	 AllocZeroed,function
	.thumb_func
AllocZeroed:
	push	{lr}
	add	r1, r0, #0
	ldr	r0, .L47
	ldr	r0, [r0]
	bl	AllocZeroedInternal
	pop	{r1}
	bx	r1
.L48:
	.align	2, 0
.L47:
	.word	sHeapStart
.Lfe9:
	.size	 AllocZeroed,.Lfe9-AllocZeroed
	.align	2, 0
	.globl	Free
	.type	 Free,function
	.thumb_func
Free:
	push	{lr}
	add	r1, r0, #0
	ldr	r0, .L50
	ldr	r0, [r0]
	bl	FreeInternal
	pop	{r0}
	bx	r0
.L51:
	.align	2, 0
.L50:
	.word	sHeapStart
.Lfe10:
	.size	 Free,.Lfe10-Free
	.align	2, 0
	.globl	CheckMemBlock
	.type	 CheckMemBlock,function
	.thumb_func
CheckMemBlock:
	push	{lr}
	add	r1, r0, #0
	ldr	r0, .L53
	ldr	r0, [r0]
	bl	CheckMemBlockInternal
	pop	{r1}
	bx	r1
.L54:
	.align	2, 0
.L53:
	.word	sHeapStart
.Lfe11:
	.size	 CheckMemBlock,.Lfe11-CheckMemBlock
	.align	2, 0
	.globl	CheckHeap
	.type	 CheckHeap,function
	.thumb_func
CheckHeap:
	push	{r4, r5, lr}
	ldr	r0, .L63
	ldr	r4, [r0]
	add	r5, r0, #0
.L56:
	ldr	r0, [r5]
	add	r1, r4, #0
	add	r1, r1, #0x10
	bl	CheckMemBlockInternal
	cmp	r0, #0
	beq	.L59	@cond_branch
	ldr	r4, [r4, #0xc]
	ldr	r0, [r5]
	cmp	r4, r0
	bne	.L56	@cond_branch
	mov	r0, #0x1
	b	.L62
.L64:
	.align	2, 0
.L63:
	.word	sHeapStart
.L59:
	mov	r0, #0x0
.L62:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe12:
	.size	 CheckHeap,.Lfe12-CheckHeap

	.lcomm	sHeapStart,4

	.lcomm	sHeapSize,4

	.lcomm	malloc_c_unused_0300000c,4
.text
	.align	2, 0

