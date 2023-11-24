#!/bin/bash

make all
make clean

qemu-system-i386 \
    -fda boot.img \
    -monitor stdio \
    -device VGA
