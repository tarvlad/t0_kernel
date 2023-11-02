#pragma once

// behavior same as __cxa_pure_virtual() in Itanium ABI
#define __PURE_VIRT { for(;;); }
