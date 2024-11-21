# This make file illustrates some more advance make file techniques
# At the bottom of the files are comments that list the techniques and where to
# learn more about them

# By uncommenting the next line the -DVERBOSE will be added to all the compile
# commands see ccalc.h for why you might want to do this
#CFLAGS=-DVERBOSE

# by default compile with debug information.  to turn off comment out 
DEBUG=-g

# optimization level : default no optimizations to make debugging easier
OPT=-O0

# by adding a file to this variable it will automatically get compile and its object
# file will get linked into binaries
ccalcsrc=ccalc.c cor.c cand.c cxor.c clower.c carrayxor.c clistxor.c catoq.c carray.c clist.c cpopcnt.c

# have make generate the names of all the object files from the list of source files
ccalcobjs=$(ccalcsrc:%.c=%.o)

# define all the targets we want to build by default
PGMS=ccalc_simpleone ccalc_basic ccalc_loweronly ccalc_easy ccalc_basicwithlower ccalc_simplerandom ccalc_listxorread ccalc_popcnt ccalc_arrayxor ccalc_listxor ccalc_atoq ccalc_array ccalc_list

# list of phony targets that don't really create files but let us do things like "make clean"
.PHONY: clean all

# the first  target is the default one that make will try and execute 
# by making it a phony that lists all the binaries as dependencies we will
# by default when executing make with no arguments build all the binaries
all: ${PGMS}

# pattern rule to assemble .S files to produce the corresponding .o file
%.o: %.S
	as ${DEBUG} $< -o $@

# pattern rule to compile c files to produce the corresponding .o file
%.o: %.c
	gcc -c ${CFLAGS} ${OPT} ${DEBUG} $< -o $@

# one rule per binary that links all the calculator objects along with the data objects
# to produce the binary.  We let gcc call the linker for us as it will add all the right
# default libraries to the linker command
ccalc_simpleone: ${ccalcobjs} data/simpleone_cmds.o
	gcc ${CFLAGS} ${OPT} ${DEBUG} $^ -o $@
ccalc_basic: ${ccalcobjs} data/basic_cmds.o
	gcc ${CFLAGS} ${OPT} ${DEBUG} $^ -o $@
ccalc_loweronly: ${ccalcobjs} data/loweronly_cmds.o
	gcc ${CFLAGS} ${OPT} ${DEBUG} $^ -o $@
ccalc_easy: ${ccalcobjs} data/easy_cmds.o
	gcc ${CFLAGS} ${OPT} ${DEBUG} $^ -o $@
ccalc_basicwithlower: ${ccalcobjs} data/basicwithlower_cmds.o
	gcc ${CFLAGS} ${OPT} ${DEBUG} $^ -o $@
ccalc_simplerandom: ${ccalcobjs} data/simplerandom_cmds.o
	gcc ${CFLAGS} ${OPT} ${DEBUG} $^ -o $@
ccalc_arrayxor: ${ccalcobjs} data/arrayxor_cmds.o
	gcc ${CFLAGS} ${OPT} ${DEBUG} $^ -o $@
ccalc_listxor: ${ccalcobjs} data/listxor_cmds.o
	gcc ${CFLAGS} ${OPT} ${DEBUG} $^ -o $@
ccalc_atoq: ${ccalcobjs} data/atoq_cmds.o
	gcc ${CFLAGS} ${OPT} ${DEBUG} $^ -o $@
ccalc_array: ${ccalcobjs} data/array_cmds.o
	gcc ${CFLAGS} ${OPT} ${DEBUG} $^ -o $@
ccalc_list: ${ccalcobjs} data/list_cmds.o
	gcc ${CFLAGS} ${OPT} ${DEBUG} $^ -o $@
ccalc_listxorread: ${ccalcobjs} data/listxorread_cmds.o
	gcc ${CFLAGS} ${OPT} ${DEBUG} $^ -o $@
ccalc_popcnt: ${ccalcobjs} data/popcnt_cmds.o
	gcc ${CFLAGS} ${OPT} ${DEBUG} $^ -o $@
clean:
	rm -f $(wildcard ${PGMS} *.o *.resbin *.output *.prebin *.stderr *.memreport*)



# Here are the techniques we use and pointers to the manual sections on them
# 1) It uses make variables and operations on them to ease the burden
#    in adding new source files to the project see
#    https://www.gnu.org/software/make/manual/html_node/Using-Variables.html
# 2) We use substitution references
#    https://www.gnu.org/software/make/manual/html_node/Substitution-Refs.html#Substitution-Refs
# 3) Automatic variables - these are super useful
#    https://www.gnu.org/software/make/manual/make.html#Automatic-Variables
# 4) Phony Targets -- these are targets that are not real files but it lets us use
#    make to automate command like those to cleanup our project.  Eg see the clean target
#    https://www.gnu.org/software/make/manual/make.html#Phony-Targets
# 4) wildcards
#    https://www.gnu.org/software/make/manual/make.html#Wildcards
# 5) defining pattern rules -- super useful lets you write an implicit rule
#    https://www.gnu.org/software/make/manual/make.html#Pattern-Rules

