#pragma once

// behavior same as __cxa_pure_virtual() in Itanium ABI
#define __PURE_VIRT { __asm__ __volatile__ (".intel_syntax noprefix\n" "mov eax, 0x0BADBEEF\n" "cli\n" "hlt\n"); for(;;); }
