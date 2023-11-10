#pragma once

#include "DisplayPrinter.hpp"

typedef unsigned char byte;
static_assert(sizeof(byte) == 1, "");

class Heap {
    constexpr static unsigned _heapBeginAddr = 0x100000;
    constexpr static unsigned _heapEndAddr = 0x400000;
    constexpr static unsigned _heapSize = _heapEndAddr - _heapBeginAddr;
    constexpr static unsigned _heapBlockSize = 512;
    constexpr static unsigned _heapSectorUsed = 0xFFFFFFFF;
    constexpr static unsigned _numHeapSectors = _heapSize / (_heapBlockSize + 4);
    constexpr static unsigned _heapSectorsHeadersOffset = 4 * _numHeapSectors;
    constexpr static unsigned _heapDataBeginAddr = _heapBeginAddr + _heapSectorsHeadersOffset;

    //Zero-initialized for store in .bss in mid-object kernel file
    inline static unsigned *_heapBlocksHeaders = nullptr;
    inline static byte *_heapDataHeaders = nullptr;
    
public:
    static void viewConstants(DisplayPrinter *printer) {
        *printer << DEC 
            << "======================================================================\n"
            << "HeapBeginAddr = " << _heapBeginAddr << '\n'
            << "HeapEndAddr = " << _heapEndAddr << '\n'
            << "HeapSize = " << _heapSize << '\n'
            << "HeapSectorUsedFlag = " << _heapSectorUsed << '\n'
            << "NumHeapSectors = " << _numHeapSectors << '\n'
            << "HeapSectorsHeadersOffset = " << _heapSectorsHeadersOffset << '\n'
            << "HeapDataBeginAddr = " << _heapDataBeginAddr << '\n'
            << "======================================================================\n";
    }

    static void initHeap() {
        _heapBlocksHeaders = reinterpret_cast<unsigned *>(_heapBeginAddr);
        _heapDataHeaders = reinterpret_cast<byte *>(_heapDataBeginAddr);

        for (unsigned i = 0; i < _numHeapSectors; i++) {
            _heapBlocksHeaders[i] = 0;
        }
    }
};
