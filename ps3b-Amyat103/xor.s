	.intel_syntax noprefix
	.global XOR_FRAG
	.global SUM_POSITIVE
	.global SUM_NEGATIVE
	.section .data
SUM_POSITIVE:
	.quad 0
SUM_NEGATIVE:
	.quad 0

	.section .text

XOR_FRAG:
	mov rcx, [rbx]
	xor rax, rcx
	test rcx, rcx
	js NEGATIVE

POSITIVE:
	add QWORD PTR [SUM_POSITIVE], rcx
	jmp DONE

NEGATIVE:
	add QWORD PTR [SUM_NEGATIVE], rcx

DONE:
	add rbx, 8
	int3
	ret # step 2
