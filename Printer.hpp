#pragma once

#include "String.hpp"
#include "PureVirtual.hpp"

class Printer {
    
public:
    virtual Printer &operator<<(unsigned number) __PURE_VIRT;
    
    virtual Printer &operator<<(char symbol) __PURE_VIRT;

    virtual Printer &operator<<(const String &str) __PURE_VIRT;

    virtual Printer &operator<<(const char *str) __PURE_VIRT;
};