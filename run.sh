#!/bin/bash

make all

qemu-system-i386 \
    -cpu pentium2 \
    -m 32m \
    -fda build/boot.img \
    -monitor stdio \
    -device VGA
