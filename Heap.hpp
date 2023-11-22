#pragma once

#include "DisplayPrinter.hpp"
#include "Misc.hpp"

class Heap {
    constexpr static unsigned _heapBeginAddr = 0x100000;
    constexpr static unsigned _heapEndAddr = 0x400000;
    constexpr static unsigned _heapSize = _heapEndAddr - _heapBeginAddr;
    constexpr static unsigned _heapBlockSize = 512;
    constexpr static unsigned _heapSectorFree = 0xFFFFFFFF;
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
            << "HeapSectorFreeFlag = " << _heapSectorFree << '\n'
            << "NumHeapSectors = " << _numHeapSectors << '\n'
            << "HeapSectorsHeadersOffset = " << _heapSectorsHeadersOffset << '\n'
            << "HeapDataBeginAddr = " << _heapDataBeginAddr << '\n'
            << "======================================================================\n";
    }

    static void initHeap() {
        _heapBlocksHeaders = reinterpret_cast<unsigned *>(_heapBeginAddr);
        _heapDataHeaders = reinterpret_cast<byte *>(_heapDataBeginAddr);

        for (unsigned i = 0; i < _numHeapSectors; i++) {
            _heapBlocksHeaders[i] = _heapSectorFree;
        }
    }

    static unsigned allocateBlocks(unsigned numBlocks) {
        unsigned ret = 0;
        unsigned numFreeBlocks = 0;
        unsigned firstFreeBlockIdx = 0;
        unsigned *headersTable = reinterpret_cast<unsigned *>(_heapBeginAddr);
        for (unsigned i = 0; i < _numHeapSectors; i++) {
            if (headersTable[i] == _heapSectorFree) {
                if (numFreeBlocks == 0) {
                    firstFreeBlockIdx = i;
                }
                numFreeBlocks++;
            } else {
                numFreeBlocks = 0;
                i += headersTable[i] - 1;
            }

            if (numFreeBlocks == numBlocks) {
                headersTable[firstFreeBlockIdx] = numBlocks;
                ret = _heapDataBeginAddr + firstFreeBlockIdx * _heapBlockSize;
                break;
            }
        }

        if (ret == 0) {
            //TODO kernel panic
        }

        return ret;
    }

    static void deallocateBlocks(unsigned regionAddr) {
        unsigned *headersTable = reinterpret_cast<unsigned *>(_heapBeginAddr);
        unsigned blockIdx = (regionAddr - _heapDataBeginAddr) / _heapBlockSize;
        headersTable[blockIdx] = _heapSectorFree;
    }
};
