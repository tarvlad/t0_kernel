#!/bin/bash

./compile.sh

qemu-system-i386 \
    -fda boot.img \
    -monitor stdio \
    -device VGA
