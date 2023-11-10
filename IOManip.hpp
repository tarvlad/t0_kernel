#pragma once


enum NumPrintModifier : char {
    HEX,
    HEX_WITH_PREFIX,
    DEC,
    BIN_WITH_PREFIX,
    BIN
};
static_assert(sizeof(NumPrintModifier) == 1, "");