#include "common.h"
#include "rock_neo.h"

// CD-ROM system initialization function
// Original MIPS function: func_8001B3E4
void func_8001B3E4(void) {
    s32 retryCount;
    s32 memoryIndex;
    void* cdStructPtr;
    
    // Initialize CD-ROM system with retry logic
    do {
        retryCount = CdInit();
    } while (retryCount == 0);
    
    // Set return value to 7 (success)
    retryCount = 7;
    
    // Initialize CD-ROM global variables
    D_800988EC = 0;
    D_80098A98 = 0;
    D_800988DC = 0;
    D_80098998 = 0;
    D_800988C0 = 0;
    D_80098B42 = retryCount;  // Set to 7
    D_800988EC = 0;
    D_80098AA0 = 0;
    D_800988DC = 0;
    
    // Call CD-ROM function with parameter 0xE
    func_8001D2BC(0xE);
    
    // Initialize memory area at D_800A3A40
    memoryIndex = 0xF0;
    do {
        D_800A3A40[memoryIndex >> 2] = 0;  // Divide by 4 since it's a u32 array
        memoryIndex -= 0x10;
    } while (memoryIndex >= 0);
    
    // Set up CD-ROM structure pointers
    cdStructPtr = &D_800A3A40;
    D_80098A84 = (u32)cdStructPtr;
    unknown_Cd_strucptr = cdStructPtr;
    
    // Initialize additional CD-ROM variables
    D_80098828 = 0;
    D_80098968 = 0;
    D_800989C8 = 0;
    D_800989C4 = 0;
    D_800988D0 = 0;
}

// No-operation function (placeholder/callback stub)
// Original MIPS function: func_8001B4C4
void func_8001B4C4(void) {
    // This function does nothing - it's a placeholder
    // that gets called by other code expecting a function pointer
}

// Complex state machine function for CD-ROM system
// Original MIPS function: func_8001B4CC
void func_8001B4CC(void) {
    u32 state;
    u8 tempValue;
    u32 timerValue;
    
    // Get current state from global variable
    state = D_800989C4;
    
    if (state == 0) {
        // State 0: Check system readiness
        tempValue = D_80098964;
        
        if (tempValue == 0) {
            // System not ready, call initialization function
            func_8001CB7C();
        }
        
        // Increment state to 1
        D_800989C4 = state + 1;
        
    } else if (state == 1) {
        // State 1: Check system status
        tempValue = D_80098964;
        
        if (tempValue != 0) {
            // System is ready, call function with parameter 0xA0
            func_8001D324(0xA0);
            
            // Increment state to 2
            D_800989C4 = state + 1;
        }
        
    } else if (state == 2) {
        // State 2: Handle countdown timer
        timerValue = D_80098828;
        
        if (timerValue != 0) {
            // Decrement timer
            D_80098828 = timerValue - 1;
        } else {
            // Timer expired, process data
            u32* ptr = (u32*)D_80098A84;
            func_8001CC7C(ptr[1], ptr[2]);  // Pass values from offsets 4 and 8
            
            // Clear flags and increment state
            D_800988D0 = 0;
            D_80098828 = 0;
            D_800989C4 = state + 1;
        }
        
    } else if (state == 3) {
        // State 3: Handle incrementing timer
        timerValue = D_80098828;
        D_80098828 = timerValue + 1;
        
        if (timerValue + 1 == 0x96) {  // 150
            // Timer reached target, set system flag
            D_8009896C |= 0x2;
        } else {
            // Check if we should call function
            tempValue = D_800988C0;
            if (tempValue == 0) {
                func_8001CAAC();
            }
        }
    }
    // For any other state, do nothing
}

// No-operation function (placeholder/callback stub)
// Original MIPS function: func_8001B63C
void func_8001B63C(void) {
    // This function does nothing - it's a placeholder
    // that gets called by other code expecting a function pointer
}

// State machine function for CD-ROM system
// Original MIPS function: func_8001B644
void func_8001B644(void) {
    u32 state;
    u32 counter;
    u8 tempValue;
    
    // Get current state from global variable
    state = D_800989C4;
    
    if (state == 0) {
        // State 0: Initialize system with counter loop
        counter = 0x7F;  // Start with 127
        
        // Loop: call func_8001D394 with counter values from 127 down to 1
        do {
            func_8001D394(counter & 0xFF);  // Pass counter as parameter
            counter--;
        } while (counter > 0);
        
        // Set hardware register D_800AD142 with bit 0x8000 set
        D_800AD142 |= 0x8000;
        
        // Call function to handle hardware setup
        func_8001CB7C();
        
        // Update state variable and set flag
        D_800988D0 = 1;  // Set flag
        D_800989C4 = state + 1;  // Increment state to 1
        
    } else if (state == 1) {
        // State 1: Check if system is ready
        tempValue = D_80098964;
        
        if (tempValue != 0) {
            // System is ready, set flag and call function
            D_80098B42 = 1;
            func_8001CAAC();
        }
    }
    // For any other state, do nothing
}

// State machine function for CD-ROM system (phase 2)
// Original MIPS function: func_8001B6FC
// Note: This is very similar to func_8001B644 but handles different state
void func_8001B6FC(void) {
    u32 state;
    u32 counter;
    u8 tempValue;
    
    // Get current state from global variable
    state = D_800989C4;
    
    if (state == 0) {
        // State 0: Initialize system with counter loop
        counter = 0x7F;  // Start with 127
        
        // Loop: call func_8001D394 with counter values from 127 down to 1
        do {
            func_8001D394(counter & 0xFF);  // Pass counter as parameter
            counter--;
        } while (counter > 0);
        
        // Set hardware register D_800AD142 with bit 0x8000 set
        D_800AD142 |= 0x8000;
        
        // Call function to handle hardware setup
        func_8001CB7C();
        
        // Update state variable and set flag
        D_800988D0 = 1;  // Set flag
        D_800989C4 = state + 1;  // Increment state to 1
        
    } else if (state == 1) {
        // State 1: Check if system is ready
        tempValue = D_80098964;
        
        if (tempValue != 0) {
            // System is ready, set flag to 2 (different from func_8001B644)
            D_80098B42 = 2;
            func_8001CAAC();
        }
    }
    // For any other state, do nothing
}

// Hardware initialization function with toggle mechanism
// Original MIPS function: func_8001B7B4
void func_8001B7B4(void) {
    u32 counter;
    u16 hardwareValue;
    u8 toggleFlag;
    u16 tempValue;
    
    // Initialize counter to 127
    counter = 0x7F;
    
    // Loop: call func_8001D394 with counter values from 127 down to 1
    do {
        func_8001D394(counter & 0xFF);  // Pass counter as parameter
        counter--;
    } while (counter > 0);
    
    // Set hardware register D_800AD142 with bit 0x8000
    D_800AD142 |= 0x8000;
    
    // Check toggle flag
    toggleFlag = D_800988DC;
    
    if (toggleFlag != 0) {
        // Path 1: Toggle flag is set
        // Load value from D_80098994
        tempValue = D_80098994;
        
        // Clear the toggle flag
        D_800988DC = 0;
        
        // Store value to hardware register D_800AD146
        D_800AD146 = tempValue;
        
    } else {
        // Path 2: Toggle flag is clear
        // Load current value from hardware register D_800AD146
        tempValue = D_800AD146;
        
        // Clear hardware register
        D_800AD146 = 0;
        
        // Set toggle flag
        D_800988DC = 1;
        
        // Store previous value to D_80098994
        D_80098994 = tempValue;
    }
    
    // Call final function
    func_8001CAAC();
}

// Function pointer table lookup and call
// Original MIPS function: func_8001B858
void func_8001B858(void) {
    u32* ptr;
    u32 index;
    void (*funcPtr)(void);
    
    // Get pointer from global variable
    ptr = (u32*)D_80098A84;
    
    // Read index value from offset 0x8
    index = ptr[2];  // 0x8 / 4 = 2 (since u32 is 4 bytes)
    
    // Multiply index by 4 (shift left by 2)
    index = index << 2;
    
    // Use index to get function pointer from table
    funcPtr = (void (*)(void))D_80087670[index >> 2];  // Divide by 4 since we multiplied by 4 above
    
    // Call the function pointer
    if (funcPtr != 0) {
        funcPtr();
    }
}

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
