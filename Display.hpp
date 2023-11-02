#pragma once


enum DisplayColor : char {
    BLACK = 0,
    BLUE = 1,
    GREEN = 2,
    CYAN = 3,
    RED = 4,
    PURPLE = 5,
    BROWN = 6,
    GRAY = 7,
    DARK_GRAY = 8,
    LIGHT_BLUE = 9,
    LIGHT_GREEN = 0xA,
    LIGHT_CYAN = 0xB,
    LIGHT_RED = 0xC,
    LIGHT_PURPLE = 0xD,
    YELLOW = 0xE,
    WHITE = 0xF
};


struct DisplaySymbol {
    unsigned short code : 7;
    unsigned short foregroundColor : 4;
    unsigned short backgroundColor : 3;
    unsigned short controlBit : 1;
};
static_assert(sizeof(DisplaySymbol) == 2, "");


// WARNING: LOW LEVEL API, FOR USUAL PRINT USE DisplayPrinter
class Display {
    constexpr static unsigned _vgaMemBegin = 0xB8000;
    constexpr static unsigned _vgaMemSize = 0xB8FA0 - 0xB8000;
    constexpr static unsigned _numColumns = 80;
    constexpr static unsigned _numRows = 25;
    constexpr static unsigned _tabSize = 4;

    static unsigned _getSymbolAddress(unsigned x, unsigned y) {
        return _vgaMemBegin + 2 * (y * 80 + x);
    }

public:
    static unsigned tabSize() {
        return _tabSize;
    }

    static unsigned numColumns() {
        return _numColumns;
    }

    static unsigned numRows() {
        return _numRows;
    }

    static unsigned numElements() {
        return numColumns() * numRows();
    }

    static void clearScreen() {
        static_assert(_vgaMemSize % 4 == 0, "");
        for (unsigned i = 0; i < numElements(); i++) {
            reinterpret_cast<DisplaySymbol *>(_vgaMemBegin)[i].code = 0;
        }
    }

    static void printChar(unsigned x, unsigned y, char symbol) {
        reinterpret_cast<DisplaySymbol *>(_getSymbolAddress(x, y))->code = symbol;
    }

    static void printString(unsigned x, unsigned y, const char *str, unsigned length) {
        for (unsigned i = 0; i < length; i++) {
            reinterpret_cast<DisplaySymbol *>(_getSymbolAddress(x, y))[i].code = str[i];
        }
    }

    static void shiftOneLineUp() {
        DisplaySymbol *memory = reinterpret_cast<DisplaySymbol *>(_vgaMemBegin);

        for (unsigned i = 0; i < numElements() - numColumns(); i++) {
            memory[i] = memory[i + numColumns()];
        }
        for (unsigned i = numElements() - numColumns(); i < numElements(); i++) {
            memory[i].code = 0;
        }
    }
};