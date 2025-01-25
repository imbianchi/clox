CC = gcc
CFLAGS = -Wall -Wextra -g -std=c99

SRCS = main.c chunk.c value.c memory.c debug.c vm.c compiler.c scanner.c
OBJS = $(SRCS:.c=.o)

TARGET = clox

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

rebuild: clean all
