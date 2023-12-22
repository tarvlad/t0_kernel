#ifndef T0_KERNEL_DISPLAY_CONTROL_H
#define T0_KERNEL_DISPLAY_CONTROL_H

#include "ktypes.h"


void vga_clear_screen();
void vga_print_char(char symbol, u4 x, u4 y);

void reset_printer();
void print_hex(u4 value);
void print_char(char symbol);
void printfmt(char *fmt, ...);


#endif //T0_KERNEL_DISPLAY_CONTROL_H
