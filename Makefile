# Must be included so that a different version of make is not accidentaly run i think.
.POISX:

#if included all errors will be ignored
#include ./ignoremake

# Checking Vs git

.SILENT: silent-error
.SUFFIXES: .c .o

NAME = sal

all: macros-and-commands all-error print suffixs

.c.o:

macros-and-commands:
	echo $(NAME)
	@echo $(NAME)
	@echo ${NAME:al=almonius}


# Examples of how errors are handled in makefiles
all-error: silent-error ignore-error error

silent-error:
	-mkdir

ignore-error:
	-mkdir

error:
	mkdir

# will not run if error or silent eror is run before but is uneffected by 
# ignore-error.
print: 
	echo "you made it"