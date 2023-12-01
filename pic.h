#pragma once
#include "ktypes.h"

void init_pic();

__attribute__((cdecl))
void __outb(u4 port, u4 data);

__attribute__((cdecl))
u1 __inb(u4 port);