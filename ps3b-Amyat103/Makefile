.PHONY: clean

#and.o: and.s
#	as -g and.s -o and.o

#or.o: or.s
#	as -g or.s -o or.o

#xor.o: xor.s
#	as -g xor.s -o xor.o

calc.o: calc.s
	as -g calc.s -o calc.o

calc_basic:
	as -g  calc.s -o calc.o
	as -g  data/basic_cmds.s -o data/basic_cmds.o
	ld -g  calc.o data/basic_cmds.o -o calc_basic

clean:
	-rm -rf $(wildcard *.o calc calc_basic)
