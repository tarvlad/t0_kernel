#pragma once


#define u1 unsigned char
#define u2 unsigned short
#define u4 unsigned int
#define u8 unsigned long long

#define i1 char
#define i2 short
#define i4 int
#define i8 long long

#ifdef _WIN32
#define __asm__
#define __volatile__(smth, ...)
#define __EXTERN_DEF { return; } // for code analysis in visual studio
#else
#define __EXTERN_DEF ;
#endif