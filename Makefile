CC = gcc
SRC = main.c
BIN = prac
CFLAGS = -ansi -Wall -g -O -fopenmp

all : build

run : build
	./$(BIN)

build:
	$(CC) -o $(BIN) $(SRC) $(CFLAGS)

clean : 
	rm -f *~ $(BIN)