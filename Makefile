UNAME_P=$(shell uname -p)

ifeq ($(UNAME_P),arm)
	CC=x86_64-elf-gcc
	LD=x86_64-elf-ld
	SIZE=x86_64-elf-size
	OBJCOPY=x86_64-elf-objcopy
else
	CC=gcc
	LD=ld
	SIZE=size
	OBJCOPY=objcopy
endif

ASM=nasm
CFLAGS=-Os -march=i486 -std=c17 -Wall -m32 -ffreestanding -Wno-pointer-to-int-cast -Wno-int-to-pointer-cast
BOOTSECTORFLAGS=-fbin
ASMELFFLAGS=-felf
LDARGS=-m elf_i386 -o kernel.tmp -Ttext 0x20200 --entry main

LD_SRC=kernel.o display.o memory.o idt_setup.o pic.o io_ports.o
ASM_BOOTSECTOR_SRC=init.asm

all:
	$(ASM) $(BOOTSECTORFLAGS) $(ASM_BOOTSECTOR_SRC) -o init.bin
	$(ASM) $(ASMELFFLAGS) idt_setup.asm -o idt_setup.o
	$(ASM) $(ASMELFFLAGS) io_ports.asm -o io_ports.o
	$(CC) $(CFLAGS) -c kernel.c -o kernel.o 
	$(CC) $(CFLAGS) -c display.c -o display.o
	$(CC) $(CFLAGS) -c memory.c -o memory.o
	$(CC) $(CFLAGS) -c pic.c -o pic.o
	$(LD) $(LDARGS) $(LD_SRC)
	$(SIZE) kernel.tmp
	$(OBJCOPY) -I elf32-i386 -O binary kernel.tmp kernel.bin
	dd if=/dev/zero of=boot.img bs=1024 count=1440
	dd if=init.bin of=boot.img conv=notrunc	
	dd if=kernel.bin of=boot.img conv=notrunc seek=1

clean:
	rm kernel.o
	rm kernel.tmp
	rm kernel.bin
	rm init.bin
	rm display.o
	rm idt_setup.o
	rm memory.o
	rm io_ports.o
	rm pic.o
