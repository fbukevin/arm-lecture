CC	= arm-linux-gnueabihf-gcc
CFLAGS	= -O0 -ggdb -Wall
LDFLAGS = -fno-stack-protector

objects	= example5.o

default: example5

.PHONY: default clean

example5: $(objects)
	$(CC) -o $@ $^

example5.o: example5.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(objects) example5 example5_1 example5_2 example5_3

qemu:
	qemu-arm -L /usr/arm-linux-gnueabihf ./example5
qemu2:
	qemu-arm -L /usr/arm-linux-gnueabihf ./example5_1
qemu3:
	qemu-arm -L /usr/arm-linux-gnueabihf ./example5_2
qemu4:
	qemu-arm -L /usr/arm-linux-gnueabihf ./example5_3
