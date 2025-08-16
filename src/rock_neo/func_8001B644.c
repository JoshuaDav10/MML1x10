#include "common.h"

extern u32 D_800989C4;
extern u16 D_800AD142;
extern u8 D_800988D0;
extern u8 D_80098964;
extern u8 D_80098B42;

void func_8001B644(void) {
    u32 state = D_800989C4;
    
    if (state == 0) {
        // Loop through 0x7F to 0x00
        u8 i;
        for (i = 0x7F; i > 0; i--) {
            func_8001D394(i);
        }
        
        // Set hardware flag
        D_800AD142 |= 0x8000;
        func_8001CB7C();
        
        // Update state
        D_800988D0 = 1;
        D_800989C4 = state + 1;
    }
    
    if (state == 1) {
        if (D_80098964 != 0) {
            D_80098B42 = 1;
            func_8001CAAC();
        }
    }
}
