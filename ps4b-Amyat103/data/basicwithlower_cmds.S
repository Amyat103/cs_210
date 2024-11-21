	.intel_syntax noprefix
	
	.data
	.global CALC_DATA_BEGIN
	.global CALC_DATA_END

CALC_DATA_BEGIN:	
	.byte '^'
	.zero 7
	.quad 123456789

	.byte '|'
	.zero 7
	.quad 0xdeadbeefdeadbeef

	.byte '^'
	.zero 7
	.quad 1

	.byte '^'
	.zero 7
	.quad 2
	
	.byte '&'
	.zero 7
	.quad 0xffffffff
	
	.byte 'U'
	.zero 7
	.quad STR0

	.byte '^'
	.zero 7
	.quad -42
	
	.byte '|'
	.zero 7
	.quad -1

	.byte '&'
	.zero 7
	.quad 0x8000000000000000
	
	.byte 'U'
	.zero 7
	.quad STR1

	.byte '|'
	.zero 7
	.quad 0x1
	
	.quad 0
	.quad 0

STR0:	
	.ascii "Hello, this is a CrAzy string @a#b$C%d@e."
	.byte 0
STR1:
	.ascii "TYGER TYGER, BURNING BRIGHT,\n"
	.ascii "IN THE FORESTS OF THE NIGHT;\n"
	.ascii "WHAT IMMORTAL HAND OR EYE,\n"
	.ascii "COULD FRAME THY FEARFUL SYMMETRY?\n"
	.ascii "\n"
	.ascii "IN WHAT DISTANT DEEPS OR SKIES.\n"
	.ascii "BURNT THE FIRE OF THINE EYES?\n"
	.ascii "ON WHAT WINGS DARE HE ASPIRE?\n"
	.ascii "WHAT THE HAND, DARE SEIZE THE FIRE?\n"
	.ascii "\n"
	.ascii "AND WHAT SHOULDER, & WHAT ART,\n"
	.ascii "COULD TWIST THE SINEWS OF THY HEART?\n"
	.ascii "AND WHEN THY HEART BEGAN TO BEAT,\n"
	.ascii "WHAT DREAD HAND? & WHAT DREAD FEET?\n"
	.ascii "\n"
	.ascii "WHAT THE HAMMER? WHAT THE CHAIN,\n"
	.ascii "IN WHAT FURNACE WAS THY BRAIN?\n"
	.ascii "WHAT THE ANVIL? WHAT DREAD GRASP,\n"
	.ascii "DARE ITS DEADLY TERRORS CLASP!\n"
	.ascii "\n"
	.ascii "WHEN THE STARS THREW DOWN THEIR SPEARS\n"
	.ascii "AND WATER'D HEAVEN WITH THEIR TEARS:\n"
	.ascii "DID HE SMILE HIS WORK TO SEE?\n"
	.ascii "DID HE WHO MADE THE LAMB MAKE THEE?\n"
	.ascii "\n"
	.ascii "TYGER TYGER BURNING BRIGHT,\n"
	.ascii "IN THE FORESTS OF THE NIGHT:\n"
	.ascii "WHAT IMMORTAL HAND OR EYE,\n"
	.ascii "DARE FRAME THY FEARFUL SYMMETRY?\n";
	.byte 0
CALC_DATA_END:	
