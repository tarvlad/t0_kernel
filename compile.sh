#!/bin/bash

nasm -fbin init.s -o init.bin

clang generate_data.c -o datagen
./datagen
rm ./datagen

dd if=/dev/zero of=boot.img bs=1024 count=1440
dd if=init.bin of=boot.img conv=notrunc
dd if=data.bin of=boot.img conv=notrunc seek=1

rm init.bin
rm data.bin
