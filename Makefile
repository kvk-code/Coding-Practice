CC=gcc
CFLAGS=-Wall -Werror -g

all: is_prime_test

is_prime_test: is_prime_test.c is_prime.o
    $(CC) $(CFLAGS) -o $@ $^

is_prime.o: is_prime.c
   
