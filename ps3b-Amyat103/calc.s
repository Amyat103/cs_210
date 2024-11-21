	.intel_syntax noprefix

	.section .data
	
SUM_POSITIVE:
	.quad 0

SUM_NEGATIVE:
	.quad 0
	
	.section .text
	.global _start
	
_start:
	mov rax, 0

	# initialize memory value to 0
	mov QWORD PTR [SUM_POSITIVE], 0
	mov QWORD PTR [SUM_NEGATIVE], 0

	# rbx to first byte 
	mov rbx, OFFSET [CALC_DATA_BEGIN]
	
# looping over command
loop_start:	
	mov al, BYTE PTR [rbx] #1 byte from al
	cmp al, 0 #check if at the end of command
	
	je loop_done #if equal go to conditional block
	add rbx, 8 # else load next
	jmp loop_start #and start again till the end of command 

loop_done:
	#int3 #end, reached 0
	mov rdi, 1
	mov rax, 60
	syscall
