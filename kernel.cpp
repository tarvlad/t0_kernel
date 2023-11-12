#include "DisplayPrinter.hpp"
#include "Heap.hpp"

static_assert(sizeof(int) == 4, "ERROR: DONT RUN IT ON PDP-11 PLS");
static_assert(sizeof(short) == 2, "");
static_assert(sizeof(char) == 1, "");

extern "C" int main(void) {
    DisplayPrinter display;
    Heap::initHeap();
    display << DEC;   
    unsigned a1 = Heap::allocateBlocks(42);
    display << a1 << '\n';
    unsigned a2 = Heap::allocateBlocks(54);
    display << a2 << '\n';
    Heap::deallocateBlocks(a1);

    a1 = Heap::allocateBlocks(21);
    display << a1 << '\n';

    unsigned a3 = Heap::allocateBlocks(19);
    display << a3 << '\n';
    unsigned a4 = Heap::allocateBlocks(2);
    display << a4 << '\n';

    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
        "cli\n"
        "hlt\n"
    );

    return 0;
}
