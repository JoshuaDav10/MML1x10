#include "common.h"
#include "rock_neo.h"

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001B3E4);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001B4C4);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001B4CC);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001B63C);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001B644);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001B6FC);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001B7B4);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001B858);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001B89C);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001BB4C);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001C7F0);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001C824);

// CD-ROM system initialization and status checking function
// Original MIPS function: func_8001C95C
void func_8001C95C(void) {
    u32 cdPos;
    u32 statusIndex;
    u32 funcIndex;
    void (*funcPtr)(void);
    
    // Check if CD-ROM system needs initialization
    if (D_8009896C != 0) {
        // Reset CD-ROM system flags
        D_80098964 = 0;
        D_800988EC = 0;
        D_8009896C = 0;
        D_800989C8 = 0;
        D_800989C4 = 0;
        
        // Set CD-ROM callback functions to NULL
        CdSyncCallback(0);
        CdReadyCallback(0);
        
        // Reset CD-ROM until successful
        while (CdReset(0) == 0) {
            // Keep trying until reset succeeds
        }
    }
    
    // Check CD-ROM status
    if (D_800988D0 == 2) {
        // Get CD-ROM status information
        func_8001D2BC(1, 0, &D_80098A98);
        
        // Store status byte
        D_80098AB8 = D_80098A98;
        
        // Check if specific bit is set (0x20)
        if (D_80098A98 & 0x20) {
            // Get additional status information
            func_8001D2BC(0x11, 0, &D_80098A98);
            
            // Convert CD position to integer
            cdPos = CdPosToInt(&D_80098A98);
            D_800989D8 = cdPos;
            
            // Check if position is within valid range
            if (cdPos < D_800989B0) {
                // Check if specific flag is set (0x40000000)
                if (D_800989C0 & 0x40000000) {
                    // Call function with CD-ROM buffer
                    func_8001D58C(D_800989B8);
                } else {
                    // Call alternative function
                    func_8001CB7C();
                }
            }
        }
    }
    
    // Call function pointer based on status
    statusIndex = D_80098A84;
    funcIndex = statusIndex << 2; // Multiply by 4 (word size)
    
    // Get function pointer from table and call it
    funcPtr = (void (*)(void))D_80087680[funcIndex];
    if (funcPtr != 0) {
        funcPtr();
    }
}

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001CAAC);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001CB30);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001CB7C);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001CC08);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001CC7C);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001CD60);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001CF98);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001D078);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001D254);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001D2BC);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001D324);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001D394);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001D414);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", Cd_read_comb);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001D468);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001D494);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001D58C);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001D648);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001D6D8);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001D7AC);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001D7E4);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", Cd_read_sync2);
