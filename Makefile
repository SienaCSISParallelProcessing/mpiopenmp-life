# Makefile for MPI Game of Life
#
# Jim Teresco, CS 338, Williams College
# CS 341, Mount Holyoke College
# CS 400/335, Siena College/University
#
CFILES=mpiopenmp-life.c
OFILES=$(CFILES:.c=.o)
CC=mpicc
CFLAGS=-Xpreprocessor -fopenmp -I/opt/homebrew/opt/libomp/include
LDFLAGS=-L/opt/homebrew/opt/libomp/lib -lomp

mpilife:	$(OFILES)
	$(CC) -o mpiopenmp-life $(OFILES) $(LDFLAGS)

clean::
	/bin/rm -f mpiopenmp-life $(OFILES)
