#pragma once


typedef unsigned char byte;
static_assert(sizeof(byte) == 1, "");


#define __ptr_value(x) ((unsigned)(unsigned long long)x)