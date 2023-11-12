#!/bin/bash

nasm \
    -fbin \
    init.s \
    -o init.bin

clang++ \
    -Ofast \
    -Wall \
    -fno-exceptions \
    -fno-rtti \
    -std=c++20 \
    -nostdlib \
    -m32 \
    -ffreestanding \
    -c \
        -o kernel.o \
    kernel.cpp

ld \
    --ignore-unresolved-symbol _GLOBAL_OFFSET_TABLE_ \
    -m elf_i386 \
    -o kernel.tmp \
    -Ttext 0x20200 \
    --entry main \
    kernel.o

size kernel.tmp

objcopy \
    -I elf32-i386 \
    -O binary \
    kernel.tmp \
    kernel.bin

dd \
    if=/dev/zero \
    of=boot.img \
    bs=1024 \
    count=1440

dd \
    if=init.bin \
    of=boot.img \
    conv=notrunc

dd \
    if=kernel.bin \
    of=boot.img \
    conv=notrunc \
    seek=1

rm kernel.o
rm kernel.tmp
rm kernel.bin
rm init.bin
