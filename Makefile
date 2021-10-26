all: k.h
	$(CC) qKeccak.c -D KXVER=3 -Wall -fno-strict-aliasing -Wno-parentheses -g -O2 -shared -fPIC -o qKeccak.so -lgmp

clean:
	rm -f qKeccak.so

test: test.c
	gcc -std=gnu99 -Wall -Isrc -o test test.c abi.c

.PHONY: all test

