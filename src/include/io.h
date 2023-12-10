#ifndef T0_KERNEL_IO_CUH
#define T0_KERNEL_IO_CUH

#include "ktypes.h"

u1 inb(u4 port);

void outb(u4 port, u4 data);

#endif //T0_KERNEL_IO_CUH
