	.intel_syntax noprefix
	.global OR_FRAG
	.section .text

OR_FRAG:
	mov rcx, [rbx]
	or rax, rcx
	add rbx, 8
	int3
	ret # ret for step2
