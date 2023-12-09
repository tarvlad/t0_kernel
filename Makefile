SRC=src
ASM_SRC=init.asm

ASM=nasm
ASM_FLAGS=-fbin -i./$(SRC)

BUILD=build
ASM_OUT=kernel.bin


all:
	$(ASM) $(ASM_FLAGS) $(SRC)/$(ASM_SRC) -o $(BUILD)/$(ASM_OUT)
	dd if=/dev/zero of=$(BUILD)/boot.img bs=1024 count=1440
	dd if=$(BUILD)/kernel.bin of=$(BUILD)/boot.img conv=notrunc


clean:
	rm -r $(BUILD)/*