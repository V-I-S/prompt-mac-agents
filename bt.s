	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 13, 1
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2
LCPI0_0:
	.long	0x4f000000
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_btTransmissionSet
	.p2align	4, 0x90
_btTransmissionSet:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movss	%xmm0, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
LBB0_1:
	movl	-32(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	LBB0_6
	callq	_rand
	cvtsi2ss	%eax, %xmm0
	movss	LCPI0_0(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-36(%rbp), %xmm1
	movss	-8(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	LBB0_4
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -28(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
LBB0_4:
	jmp	LBB0_5
LBB0_5:
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_1
LBB0_6:
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
.subsections_via_symbols
