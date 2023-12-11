SRC=src

ASM=nasm
ASM_BOOTSECTOR_FLAGS=-fbin
ASM_KERNEL_FLAGS=-felf

BUILD=build
LD=ld
LD_ARGS=-m elf_i386 -o $(BUILD)/kernel.tmp -Ttext 0x20200 --entry main
LD_SRC=$(BUILD)/kernel.o $(BUILD)/display_control.o $(BUILD)/allocator.o $(BUILD)/io.o $(BUILD)/tramplins.o $(BUILD)/interrupts.o

SIZE=size

OBJCOPY=objcopy
OBJCOPY_FLAGS=-I elf32-i386 -O binary
OBJCOPY_SRC=$(BUILD)/kernel.tmp $(BUILD)/kernel.bin

all:
	$(ASM) $(ASM_BOOTSECTOR_FLAGS) $(SRC)/init.asm -o $(BUILD)/init.bin
	$(ASM) $(ASM_KERNEL_FLAGS) $(SRC)/kernel.asm -o $(BUILD)/kernel.o
	$(ASM) $(ASM_KERNEL_FLAGS) $(SRC)/display_control.asm -o $(BUILD)/display_control.o
	$(ASM) $(ASM_KERNEL_FLAGS) $(SRC)/allocator.asm -o $(BUILD)/allocator.o
	$(ASM) $(ASM_KERNEL_FLAGS) $(SRC)/io.asm -o $(BUILD)/io.o
	$(ASM) $(ASM_KERNEL_FLAGS) $(SRC)/tramplins.asm -o $(BUILD)/tramplins.o
	$(ASM) $(ASM_KERNEL_FLAGS) $(SRC)/interrupts.asm -o $(BUILD)/interrupts.o
	$(LD) $(LD_ARGS) $(LD_SRC)
	$(SIZE) $(BUILD)/kernel.tmp
	$(OBJCOPY) $(OBJCOPY_FLAGS) $(OBJCOPY_SRC)
	dd if=/dev/zero of=$(BUILD)/boot.img bs=1024 count=1440
	dd if=$(BUILD)/init.bin of=$(BUILD)/boot.img conv=notrunc
	dd if=$(BUILD)/kernel.bin of=$(BUILD)/boot.img conv=notrunc seek=1


clean:
	rm -r $(BUILD)/*
