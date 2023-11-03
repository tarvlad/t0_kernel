#include "DisplayPrinter.hpp"

static_assert(sizeof(int) == 4, "ERROR: DONT RUN IT ON PDP-11 PLS");
static_assert(sizeof(short) == 2, "");
static_assert(sizeof(char) == 1, "");


[[noreturn]]
extern "C" void main() {
    DisplayPrinter display;
    display << HEX_WITH_PREFIX;
    for (unsigned i = 0; i < 30; i++) {
        for (unsigned j = 0; j < i; j++) {
            display << ' ';
        }
        display << i << ' ' << "there is a string content :D" << '\n';
    }

    for(;;);
}
