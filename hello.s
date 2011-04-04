	.file	"hello.c"
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$32, %esp
	movl	$2, 4(%esp)
	movl	$1, (%esp)
	call	mySum
	movl	%eax, 28(%esp)
	leave
	ret
	.size	main, .-main
.globl mySum
	.type	mySum, @function
mySum:
	pushl	%ebp
	movl	%esp, %ebp
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	leal	(%edx,%eax), %eax
	popl	%ebp
	ret
	.size	mySum, .-mySum
	.ident	"GCC: (Ubuntu/Linaro 4.4.4-14ubuntu5) 4.4.5"
	.section	.note.GNU-stack,"",@progbits
