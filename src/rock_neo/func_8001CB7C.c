#include "common.h"

extern u16 D_800AD142;
extern u8 D_8009896C;
extern u8 D_800988D0;
extern u8 D_80098AB8;
extern u8 D_80098A98;

void func_8001CC08(void); // Forward declaration

void func_8001CB7C(void) {
    u8 i;
    
    // Loop through 0x7F to 0x00
    for (i = 0x7F; i > 0; i--) {
        func_8001D394(i);
    }
    
    // Clear flag and set hardware flag
    D_8009896C = 0;
    D_800AD142 |= 0x8000;
    
    // Set up CD-ROM callbacks
    CdReadyCallback();
    CdSyncCallback(func_8001CC08);
    
    // Call function with parameters
    func_8001D254(0, 0, D_80098A98);
    
    // Clear flags
    D_800988D0 = 0;
    D_80098AB8 = 0;
}
