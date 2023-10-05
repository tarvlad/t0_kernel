target remote localhost:1234
set arch i8086
set disassembly-flavor intel
break *0x7c00
c
x/16i $cs*16+$eip
