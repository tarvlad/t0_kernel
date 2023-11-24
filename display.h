#pragma once

#include "ktypes.h"


void vga_clear_screen();

void vga_print_char(char symb, u4 x, u4 y);

void vga_print_str(char *str, u4 x, u4 y);

void init_printer();

void print(char *str);

void print_u4(u4 value);

void print_u4_hex(u4 value);