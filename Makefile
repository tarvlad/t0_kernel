CC=gcc
ASM=nasm
CFLAGS=-Os -std=c17 -Wall -m32 -ffreestanding -Wno-pointer-to-int-cast -Wno-int-to-pointer-cast
BOOTSECTORFLAGS=-fbin
ASMELFFLAGS=-felf
LD=ld
LDARGS=-m elf_i386 -o kernel.tmp -Ttext 0x20200 --entry main

LD_SRC=kernel.o display.o memory.o idt_setup.o read_gdt.o read_idt.o pic.o
ASM_BOOTSECTOR_SRC=init.asm

all:
	$(ASM) $(BOOTSECTORFLAGS) $(ASM_BOOTSECTOR_SRC) -o init.bin
	$(ASM) $(ASMELFFLAGS) idt_setup.asm -o idt_setup.o
	$(ASM) $(ASMELFFLAGS) read_gdt.asm -o read_gdt.o
	$(ASM) $(ASMELFFLAGS) read_idt.asm -o read_idt.o
	$(CC) $(CFLAGS) -c kernel.c -o kernel.o 
	$(CC) $(CFLAGS) -c display.c -o display.o
	$(CC) $(CFLAGS) -c memory.c -o memory.o
	$(CC) $(CFLAGS) -c pic.c -o pic.o
	$(LD) $(LDARGS) $(LD_SRC)
	size kernel.tmp
	objcopy -I elf32-i386 -O binary kernel.tmp kernel.bin
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
	rm read_gdt.o
	rm read_idt.o
