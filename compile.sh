#!/bin/bash

nasm -fbin kernel.s -o kernel.bin

dd if=/dev/zero of=boot.img bs=1024 count=1440
dd if=kernel.bin of=boot.img conv=notrunc

rm kernel.bin
