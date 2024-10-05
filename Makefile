# Must be included so that a different version of make is not accidentaly run i think.
.POISX:

#if included all errors will be ignored
#include ./ignoremake

.SILENT: silent-error

NAME = sal

all: all error

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