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


class Display {
    constexpr static unsigned _vgaMemBegin = 0xB8000;
    constexpr static unsigned _vgaMemSize = 0xB8FA0 - 0xB8000;
    constexpr static unsigned _numColumns = 25;
    constexpr static unsigned _numRows = 80;

    unsigned _getSymbolAddress(unsigned x, unsigned y) {
        return _vgaMemBegin + 2 * (y * 80 + x);
    }

public:
    unsigned numColumns() const {
        return _numColumns;
    }

    unsigned numRows() const {
        return _numRows;
    }

    unsigned numElements() const {
        return numColumns() * numRows();
    }

    void clearScreen() {
        static_assert(_vgaMemSize % 4 == 0, "");
        for (unsigned i = 0; i < numElements(); i++) {
            reinterpret_cast<DisplaySymbol *>(_vgaMemBegin)[i].code = 0;
        }
    }

    void printChar(char symbol, unsigned x, unsigned y) {
        reinterpret_cast<DisplaySymbol *>(_getSymbolAddress(x, y))->code = symbol;
    }

    void printStr(char *str, unsigned x, unsigned y) {

    }
};