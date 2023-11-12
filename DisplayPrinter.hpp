#pragma once

#include "Printer.hpp"
#include "Display.hpp"

class DisplayCarriage {
    unsigned _x;
    unsigned _y;

    void incrementYWithPossibleShift() {
        if (++_y == Display::numRows()) {
            Display::shiftOneLineUp();
            _y--;
        }
    }

public:
    unsigned x() const {
        return _x;
    }

    unsigned y() const {
        return _y;
    }

    void reset() {
        _x = 0;
        _y = 0;
    }

    DisplayCarriage() {
        reset();
    }

    void nextLine() {
        _x = 0;
        incrementYWithPossibleShift();
    }

    DisplayCarriage operator++(int) {
        if (++_x == Display::numColumns()) {
            _x = 0;
            incrementYWithPossibleShift();
        }

        return *this;
    }
};


class DisplayPrinter : Printer {
    DisplayCarriage carriagePos;
    NumPrintModifier modifier_;

public:
    DisplayPrinter() {
        carriagePos.reset();
        Display::clearScreen();
    }

    DisplayPrinter &operator<<(char symbol) override {
        switch (symbol) {
        case '\n': {
            carriagePos.nextLine();
            break;
        }
        case '\t': {
            for (unsigned i = 0; i < Display::tabSize(); i++) {
                (*this) << ' ';
            }
            break;
        }
        default: {
            Display::printChar(carriagePos.x(), carriagePos.y(), symbol);
            carriagePos++;
        }
        }
        return *this;
    }

    DisplayPrinter &operator<<(const String &str) override {
        for (unsigned i = 0; i < str.length(); i++) {
            (*this) << str[i];
        }
        return *this;
    }

    DisplayPrinter &operator<<(const char *str) override {
        unsigned i = 0;

        while (str[i] != 0) {
            (*this) << str[i++];
        }

        return *this;
    }
    
    DisplayPrinter &operator<<(NumPrintModifier modifier) override {
        modifier_ = modifier;
        return *this;
    }

    DisplayPrinter &operator<<(unsigned num) override {
        if (num == 0) {
            (*this) << '0';
            return *this;
        }

        constexpr char asciiAlign = 0x30;

        unsigned bufferElementsUsed = 0;
        switch (modifier_) {
        case DEC: {
            constexpr unsigned maxNumDigitsInUnsigned = 10; 
                //4 294 967 295 - 10 digits
            char buffer[maxNumDigitsInUnsigned];

            while (num > 0) {
                buffer[maxNumDigitsInUnsigned - ++bufferElementsUsed] 
                    = num % 10 + asciiAlign;
                num /= 10;
            }

            for (
                unsigned i = maxNumDigitsInUnsigned - bufferElementsUsed; 
                i < maxNumDigitsInUnsigned; 
                i++
            ) {
                (*this) << buffer[i];
            }
            break;
        }
        case HEX_WITH_PREFIX: {
            (*this) << "0x";
        }
        case HEX: {
            constexpr unsigned maxNumDigitsInUnsignedHex = 8; 
                // 0x FF FF FF FF - 8 digits
            char buffer[maxNumDigitsInUnsignedHex];
            constexpr unsigned asciiAdditionalAlignForHexLetter = 0x41 - 0x3A;

            while (num > 0) {
                buffer[maxNumDigitsInUnsignedHex - ++bufferElementsUsed] 
                    = num % 0x10;
                num /= 0x10;
            }

            for (
                unsigned i = maxNumDigitsInUnsignedHex - bufferElementsUsed; 
                i < maxNumDigitsInUnsignedHex; 
                i++
            ) {
                if (buffer[i] > 9) {
                    buffer[i] += asciiAdditionalAlignForHexLetter;
                }
                buffer[i] += asciiAlign;
                (*this) << buffer[i];
            }
            break;
        }
        case BIN_WITH_PREFIX: {
            (*this) << "0b";
        }
        case BIN: {
            constexpr unsigned maxNumBitsInUnsigned = 32;
            char buffer[maxNumBitsInUnsigned];

            while (num > 0) {
                buffer[maxNumBitsInUnsigned - ++bufferElementsUsed] 
                    = num % 2 + asciiAlign;
                num >>= 1;
            }

            for (
                unsigned i = maxNumBitsInUnsigned - bufferElementsUsed; 
                i < maxNumBitsInUnsigned; 
                i++
            ) {
                (*this) << buffer[i];
            }
            break;
        }
        }
        return *this;
    }
};
