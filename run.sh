#!/bin/bash

./compile.sh

qemu-system-i386 -fda boot.img -monitor stdio
#qemu-system-i386 boot.img -S -s -vnc none &

