#include "display.h"
#include "ktypes.h"
#include "memory.h"


#define DISPLAY_MEM (0xB8000)


#define DISPLAY_ROWS 24
#define DISPLAY_COLUMNS 80
#define DISPLAY_NUM_SYMBOLS (DISPLAY_ROWS * DISPLAY_COLUMNS)


enum VGA_COLOR {
    BLACK,
    BLUE,
    GREEN,
    CYAN,
    RED,
    PURPLE,
    BROWN,
    GRAY,
    DARK_GRAY,
    LIGHT_BLUE,
    LIGHT_GREEN,
    LIGHT_CYAN,
    LIGHT_RED,
    LIGHT_PURPLE,
    YELLOW,
    WHITE
};


struct display_carriage {
    u1 x;
    u1 y;
};


static struct display_carriage display_carriage;


#pragma pack(push, 1)
struct display_symbol {
    char symbol_code;
    u1 front_color : 4;
    u1 back_color : 3;
    u1 flashing : 1;
};
#pragma pack(pop)


static void increment_display_carriage_y_with_possible_shift() {
    display_carriage.y++;
    if (display_carriage.y == DISPLAY_ROWS) {
        display_carriage.y--;
        u4 i;
        struct display_symbol *display_memory = __to_ptr_cast(struct display_symbol, DISPLAY_MEM);
        for (i = 0; i < DISPLAY_NUM_SYMBOLS - DISPLAY_COLUMNS; i++) {
            display_memory[i].symbol_code = display_memory[i + DISPLAY_COLUMNS].symbol_code;
        }
        for (; i < DISPLAY_NUM_SYMBOLS; i++) {
            display_memory[i].symbol_code = 0;
        }
    }   
}


static void increment_display_carriage() {
    if (++display_carriage.x == DISPLAY_COLUMNS) {
        display_carriage.x = 0;
        increment_display_carriage_y_with_possible_shift();
    }   
}


static void display_carriage_next_line() {
    display_carriage.x = 0;
    increment_display_carriage_y_with_possible_shift();
}


void vga_clear_screen() {
    for (u4 i = 0; i < DISPLAY_NUM_SYMBOLS; i++) {
        ((struct display_symbol *)DISPLAY_MEM)[i].symbol_code = 0;
    }
}


void vga_print_char(char symb, u4 x, u4 y) {
    u4 display_pos = y * DISPLAY_COLUMNS + x;
    ((struct display_symbol *)DISPLAY_MEM)[display_pos].symbol_code = symb;
}


void vga_print_str(char *str, u4 x, u4 y) {
    u4 display_pos = y * DISPLAY_COLUMNS + x;
    
    char buffer;
    do {
        buffer = *str++;
        ((struct display_symbol *)DISPLAY_MEM)[display_pos++].symbol_code = buffer;
    } while (buffer != 0);
}


void init_printer() {
    vga_clear_screen();
    display_carriage.x = 0;
    display_carriage.y = 0;
}


static void print_char(char symbol) {
    switch (symbol) {
        case '\t':
            print_char(' ');
            print_char(' ');
            print_char(' ');
            print_char(' ');
            break;
        case '\n':
            display_carriage_next_line();
            break;
        default:
            vga_print_char(symbol, display_carriage.x, display_carriage.y);
            increment_display_carriage();
    }
}

// currently supports
// %u, %x, %s
__attribute__((cdecl))
void printfmt(char *str, ...) {
    u4 *va_list = __to_ptr_cast(u4, &str);
    char symbol;
    u4 curr_arg = 1;
    do {
        symbol = *str++;
        if (symbol == 0) {
            break;
        }

        if (symbol == '%') {
            symbol = *str++;
            switch (symbol) {
            case 'x': {
                u4 value = va_list[curr_arg++];
                print_u4_hex(value);
                break;
            }
            case 'u': {
                u4 value = va_list[curr_arg++];
                print_u4(value);
                break;
            }
            case 's': {
                u4 value = va_list[curr_arg++];
                print(__to_ptr_cast(char, value));
                break;
            }
            default: {
                print_char('%');
                print_char(symbol);
            }
            }
        } else {
            print_char(symbol);
        }
    } while (1);
}


void print(char *str) {
    char symbol;
    do {
        symbol = *str++;
        if (symbol == 0) {
            break;
        }
        print_char(symbol);
    } while (1);
}


void print_u4(u4 value) {
    if (value == 0) {
        print_char('0');
        return;        
    }
    char buffer[10];
    u4 bufElemsUsed = 0;
    while (value > 0) {
        buffer[10 - ++bufElemsUsed] = value % 10 + 0x30;
        value /= 10;
    }

    for (u4 i = 10 - bufElemsUsed; i < 10; i++) {
        print_char(buffer[i]);
    }
}


void print_u4_hex(u4 value) {
    print("0x");
    if (value == 0) {
        print_char('0');
        return;        
    }
    char buffer[8];
    u4 bufElemsUsed = 0;
    while (value > 0) {
        buffer[8 - ++bufElemsUsed] = value % 0x10;
        value /= 0x10;
    }

    for (u4 i = 8 - bufElemsUsed; i < 8; i++) {
        if (buffer[i] > 9) {
            buffer[i] += 0x41 - 0x3A;
        }
        buffer[i] += 0x30;
        print_char(buffer[i]);
    }
}