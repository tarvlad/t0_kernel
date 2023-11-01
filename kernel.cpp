#include "Display.hpp"

static_assert(sizeof(int) == 4, "ERROR: DONT RUN IT ON PDP-11 PLS");
static_assert(sizeof(short) == 2, "");
static_assert(sizeof(char) == 1, "");

[[noreturn]]
extern "C" void main() {
    Display display;
    display.clearScreen();

    display.printChar('A', 0, 1);
    for(;;);
}
