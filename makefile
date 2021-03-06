.PHONY: all clean deepclean debug

NAME=main

CC=gcc
CFLAGS=-Wall -Wextra
GTKFLAGS=$(shell pkg-config --cflags --libs gtk+-3.0) 

all: $(NAME)

debug: CFLAGS+=-g
debug: all

main: main.o
	$(CC) $(CFLAGS) $(GTKFLAGS) -o $@ $<

main.o: main.c
	$(CC) $(CFLAGS) $(GTKFLAGS) -c -o $@ $<

clean:
	$(RM) *.o

deepclean: clean
	$(RM) $(NAME)