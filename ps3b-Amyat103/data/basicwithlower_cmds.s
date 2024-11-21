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
	.ascii "HellO, tHIs is a CrAzy string @a#b$C%d@e."
	.byte 0
STR1:
	.ascii "TYGER TyGER, BuRniNg BrIgHt,\n"
	.ascii "In the forests of THE nIGhT;\n"
	.ascii "WhAt immORTAl hANd OR eye,\n"
	.ascii "CoUld frAMe THy feArFUL symMEtry?\n"
	.ascii "\n"
	.ascii "In WHat diSTANt deEPs or SKIes.\n"
	.ascii "BuRNT the FIRE of THiNe EyEs?\n"
	.ascii "On WHAT wings DARE hE aSPiRe?\n"
	.ascii "What THe HAND, dARe SEIZE the fire?\n"
	.ascii "\n"
	.ascii "And what shoulder, & wHAt ARt,\n"
	.ascii "Could tWiSt THe siNEWs of thY heart?\n"
	.ascii "And wHeN thY HEArt BEGAn TO beat,\n"
	.ascii "What dread hand? & whAt dREad feet?\n"
	.ascii "\n"
	.ascii "What the hammer? What the chain,\n"
	.ascii "In what FURNACE WAS thy BRAIN?\n"
	.ascii "What the ANVIL? what dread grasp,\n"
	.ascii "DarE its deadly TeRRoRS clasp!\n"
	.ascii "\n"
	.ascii "WhEn THE sTaRs thrEW DOWN their SPEARs\n"
	.ascii "And water'D heaven wIh their TEARs:\n"
	.ascii "Did he SmiLe his WOrk to see?\n"
	.ascii "Did he who MADE the LAMB make thee?\n"
	.ascii "\n"
	.ascii "TygeR TyGEr BURning briGHT,\n"
	.ascii "In the FORESTS OF the NiGHt:\n"
	.ascii "What IMMORTAL hANd or Eye,\n"
	.ascii "Dare frame thy fEArfuL symmetry?\n";
	.byte 0
CALC_DATA_END:	
