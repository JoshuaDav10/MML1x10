#include "common.h"

extern u8 D_800988EC;
extern u8 D_80098A98;
extern u8 D_800988DC;
extern u32 D_80098998;
extern u8 D_800988C0;
extern u8 D_80098B42;
extern u8 D_80098AA0;
extern u8 D_80098964;
extern u32 D_800A3A40;
extern u32 D_80098A84;
extern u32 unknown_Cd_strucptr;
extern u32 D_80098828;
extern u32 D_80098968;
extern u32 D_800989C8;
extern u32 D_800989C4;
extern u8 D_800988D0;

void func_8001B3E4(void) {
    u32 i;
    
    // CD-ROM initialization with retry loop
    while (CdInit() == 0) {
        // Retry until successful
    }
    
    // Initialize global variables
    D_800988DC = 0;
    D_80098998 = 0;
    D_800988C0 = 0;
    D_80098B42 = 7;
    D_800988EC = 0;
    D_80098AA0 = 0;
    D_800988DC = 0;
    
    // Call initialization function
    func_8001D2BC(0xE);
    
    // Initialize memory array
    for (i = 0xF0; i >= 0; i -= 0x10) {
        *(u32*)(D_800A3A40 + i) = 0;
    }
    
    // Set up CD-ROM structure pointer
    D_80098A84 = D_800A3A40;
    unknown_Cd_strucptr = D_800A3A40;
    
    // Clear additional flags
    D_80098828 = 0;
    D_80098968 = 0;
    D_800989C8 = 0;
    D_800989C4 = 0;
    D_800988D0 = 0;
    
    // Set initialization flag
    D_80098964 = 1;
}
