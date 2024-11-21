	.intel_syntax noprefix
	
	.data
	.global CALC_DATA_BEGIN
	.global CALC_DATA_END

CALC_DATA_BEGIN:	
	.byte '|'
	.zero 7
	.quad -1

	.byte '&'
	.zero 7
	.quad 0xf

	.byte '^'
	.zero 7
	.quad 2

	.byte 'U'
	.zero 7
	.quad MYSTR

	.quad 0
	.quad 0

MYSTR:
	.ascii "HELLO, THIS IS A STRING."
	.byte 0


CALC_DATA_END:
	
