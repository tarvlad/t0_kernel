#!/bin/bash

nasm -fbin init.s -o init.bin
clang++ -Wall -fno-exceptions -fno-rtti -std=c++20 -m32 -ffreestanding -c -o kernel.o kernel.cpp
ld -m i386pe -o kernel.tmp -Ttext 0x20200 kernel.o
objcopy -I pe-i386 -O binary kernel.tmp kernel.bin

dd if=/dev/zero of=boot.img bs=1024 count=1440
dd if=init.bin of=boot.img conv=notrunc
dd if=kernel.bin of=boot.img conv=notrunc seek=1

rm kernel.o
rm kernel.tmp
rm kernel.bin
rm init.bin
