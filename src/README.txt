kernel stack located from 0x20000 down to 0x18000, 8 KiB
kernel data located from 0x20000 up to 0x29000, 36 KiB
TODO kernel heap

For entire os cdecl calling convention are used,
which means that for function call:
    arguments are passed with stack in right-to-left order
    registers eax, ecx, edx are caller-saved, all other - callee
    return value lays in eax