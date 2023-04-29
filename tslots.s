	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 13, 1
	.globl	_tSlotsTransmissionSet
	.p2align	4, 0x90
_tSlotsTransmissionSet:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	$0, -20(%rbp)
LBB0_1:
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	LBB0_3
	callq	_rand
	movl	-4(%rbp), %ecx
	subl	-20(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -20(%rbp)
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	subl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	jmp	LBB0_1
LBB0_3:
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	subl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
.subsections_via_symbols
