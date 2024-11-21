	.intel_syntax noprefix
	.global AND_FRAG
	.section .text

AND_FRAG:
	mov rcx, [rbx]
	and rax, rcx
	add rbx, 8
	int3

	ret #ret for step2
