#include "DisplayPrinter.hpp"
#include "Heap.hpp"
#include "InterruptHandler.hpp"


static_assert(sizeof(int) == 4, "ERROR: DONT RUN IT ON PDP-11 PLS");
static_assert(sizeof(short) == 2, "");
static_assert(sizeof(char) == 1, "");


extern "C" int main(void) {
    InterruptHandler::init();
    
    DisplayPrinter display;
    Heap::initHeap();

    InterruptHandler::tramplin0x12();
    
    // volatile because barrier
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
        "cli\n"
        "hlt\n"
    );

    return 0;
}
