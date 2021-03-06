.PHONY: all clean deepclean

NAME=main

CC=gcc
CFLAGS=-Wall -Wextra -g
GTKFLAGS=$(shell pkg-config --cflags --libs gtk+-3.0) 

all: $(NAME)

main: main.o
	$(CC) $(CFLAGS) -o $@ $<

main.o: main.c
	$(CC) $(CFLAGS) $(GTKFLAGS) -c -o $@ $<

clean:
	$(RM) *.o

deepclean: clean
	$(RM) $(NAME)