CC = gcc
SRC_S = synchronous.c
BIN_S = prac_s
SRC_P = parallel.c
BIN_P = prac_p
CFLAGS = -Wall -g -O3 -fopenmp

all : build

build: build_synchronous build_parallel

build_synchronous:
	$(CC) -o $(BIN_S) $(SRC_S) $(CFLAGS)

build_parallel:
	$(CC) -o $(BIN_P) $(SRC_P) $(CFLAGS)

clean : 
	rm -f *~ $(BIN_S) $(BIN_P) output/*