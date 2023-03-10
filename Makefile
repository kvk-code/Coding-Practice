CC = gcc
CFLAGS = -Wall -Werror -g

all: test_is_prime

test_is_prime: is_prime.o test_is_prime.o
	$(CC) $(CFLAGS) -o test_is_prime is_prime.o test_is_prime.o

is_prime.o: is_prime.c
	$(CC) $(CFLAGS) -c is_prime.c

test_is_prime.o: test_is_prime.c
	$(CC) $(CFLAGS) -c test_is_prime.c

clean:
	rm -f test_is_prime *.o

