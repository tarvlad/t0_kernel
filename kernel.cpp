#include "DisplayPrinter.hpp"
#include "Heap.hpp"

static_assert(sizeof(int) == 4, "ERROR: DONT RUN IT ON PDP-11 PLS");
static_assert(sizeof(short) == 2, "");
static_assert(sizeof(char) == 1, "");

extern "C" void main(void) {
    DisplayPrinter display;
    Heap::initHeap();
 
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
        "cli\n"
        "hlt\n"
    );
}
