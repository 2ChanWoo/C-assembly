	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	__Z4funci                       ## -- Begin function _Z4funci
	.p2align	4, 0x90
__Z4funci:                              ## @_Z4funci
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	imull	$10, -4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	cmpb	$0, __ZGVZ4mainE4val3(%rip)
	jne	LBB1_3
## %bb.1:
	leaq	__ZGVZ4mainE4val3(%rip), %rdi
	callq	___cxa_guard_acquire
	cmpl	$0, %eax
	je	LBB1_3
## %bb.2:
	movl	_val1(%rip), %edi
	callq	__Z4funci
	movl	%eax, __ZZ4mainE4val3(%rip)
	leaq	__ZGVZ4mainE4val3(%rip), %rdi
	callq	___cxa_guard_release
LBB1_3:
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	__ZZ4mainE4val3(%rip), %esi
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_val1                           ## @val1
	.p2align	2
_val1:
	.long	1                               ## 0x1

	.globl	_val2                           ## @val2
	.p2align	2
_val2:
	.long	2                               ## 0x2

.zerofill __DATA,__bss,__ZZ4mainE4val3,4,2 ## @_ZZ4mainE4val3
.zerofill __DATA,__bss,__ZGVZ4mainE4val3,8,3 ## @_ZGVZ4mainE4val3
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"done"

L_.str.1:                               ## @.str.1
	.asciz	"val3 == %d"

.subsections_via_symbols
