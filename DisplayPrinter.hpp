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

    DisplayPrinter &operator<<(unsigned num) override {
        if (num == 0) {
            (*this) << '0';
            return *this;
        }

        constexpr unsigned maxNumDigitsInUnsigned = 10; //4 294 967 295 - 10 digits
        constexpr char asciiAlign = 0x30;

        char buffer[maxNumDigitsInUnsigned];
        unsigned bufferElementsUsed = 0;

        while (num > 0) {
            buffer[maxNumDigitsInUnsigned - ++bufferElementsUsed] = num % 10 + asciiAlign;
            num /= 10;
        }

        for (unsigned i = maxNumDigitsInUnsigned - bufferElementsUsed; i < maxNumDigitsInUnsigned; i++) {
            (*this) << buffer[i];
        }

        return *this;
    }
};