#!/bin/bash

make all
make clean

qemu-system-i386 \
    -cpu 486 \
    -m 64m \
    -fda boot.img \
    -monitor stdio \
    -device VGA
