CC = gcc
CFLAGS = -Wall -Werror -g

all: test_add

test_add: add.o test_add.o
	$(CC) $(CFLAGS) -o test_add add.o test_add.o

add.o: add.c add.h
	$(CC) $(CFLAGS) -c add.c

test_add.o: test_add.c add.h
	$(CC) $(CFLAGS) -c test_add.c

clean:
	rm -f test_add *.o

