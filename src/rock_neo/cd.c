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

// Very complex state machine function for CD-ROM system
// Original MIPS function: func_8001B89C
void func_8001B89C(void) {
    u32 state;
    u8 tempValue;
    u32 timerValue;
    u32* ptr;
    u32 temp1, temp2;
    u16 hardwareValue;
    s16 counter;
    u8 stackData[2];
    u32 addr1, value1, value2;
    
    // Get current state from global variable
    state = D_800989C4;
    
    if (state == 0) {
        // State 0: Check system readiness
        tempValue = D_80098964;
        
        if (tempValue == 0) {
            // System not ready, call initialization function
            func_8001CB7C();
        }
        
        // Set flag and increment state
        D_800988D0 = 2;
        D_800989C4 = state + 1;
        
    } else if (state == 1) {
        // State 1: Check system status and set hardware
        tempValue = D_80098964;
        
        if (tempValue != 0) {
            // System is ready, set hardware register and call function
            D_800AD14E = 0x7F;
            func_8001D324(0xC8);
            
            // Increment state to 2
            D_800989C4 = state + 1;
        }
        
    } else if (state == 2) {
        // State 2: Handle countdown timer and complex data processing
        timerValue = D_80098828;
        
        if (timerValue != 0) {
            // Decrement timer
            D_80098828 = timerValue - 1;
        } else {
            // Timer expired, perform complex data processing
            D_800988C0 = 0;
            D_8009896C = 0;
            D_80098964 = D_800988C0;
            
            if (D_80098B42 == 2) {
                // Complex data structure manipulation
                ptr = (u32*)D_80098A84;
                
                // Store values on stack for function calls
                stackData[0] = 1;
                stackData[1] = ptr[0xB] & 0x1F;  // Offset 0xB, mask with 0x1F
                
                // Complex pointer arithmetic
                temp1 = ptr[1];  // Offset 4
                temp2 = ptr[2];  // Offset 8
                
                // Calculate address: (temp1 * 3 * 4) + (temp2 & 0xFFFFFF)
                addr1 = ((temp1 * 3) << 2) + (temp2 & 0xFFFFFF);
                value1 = *(u32*)(0x80082CD0 + ((temp1 * 3) << 2)) + (temp2 & 0xFFFFFF);
                
                // Calculate second address
                temp1 = ptr[1];  // Offset 4
                temp2 = ptr[3];  // Offset 0xC
                value2 = *(u32*)(0x80082CD0 + ((temp1 * 3) << 2)) + (temp2 & 0xFFFFFF);
                
                // Store calculated values
                D_800989B0 = value2;
                
                // Call CD-ROM functions
                CdIntToPos(value1, (u8*)stackData);
                
                func_8001D2BC(0xD, (u8*)stackData, &D_80098A98);
                func_8001D2BC(0x2, (u8*)stackData, &D_80098A98);
                func_8001D2BC(0x1B, 0, &D_80098A98);
                
                // Update variables
                D_80098828 = 0;
                D_80098AB8 = D_80098A98;
            }
            
            // Increment state to 3
            D_800989C4 = state + 1;
        }
        
    } else if (state == 3) {
        // State 3: Handle bit checking and timer incrementing
        tempValue = D_80098AB8;
        
        if ((tempValue & 0x20) == 0) {
            // Bit not set, increment timer
            timerValue = D_80098828;
            D_80098828 = timerValue + 1;
            
            if (timerValue + 1 >= 0x96) {  // 150
                // Timer reached target, set system flag
                D_8009896C |= 0x10;
            }
        } else {
            // Bit is set, run counter loop
            counter = 0;
            do {
                func_8001D394(counter & 0xFF);
                counter++;
            } while (counter < 0x7F);
            
            // Clear hardware register bit and call function
            D_80098B42 = 0;
            hardwareValue = D_800AD142;
            D_800AD142 = hardwareValue & 0x7FFF;  // Clear bit 0x8000
            func_8001CAAC();
        }
    }
    // For any other state, do nothing
}

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", func_8001BB4C);

// State increment and CD-ROM callback cleanup function
// Original MIPS function: func_8001C7F0
void func_8001C7F0(void) {
    // Increment the CD-ROM system state variable
    D_800989C4 = D_800989C4 + 1;
    
    // Disable CD-ROM sync callback by setting it to NULL
    // This cleans up any previous callback function
    CdSyncCallback(0);
}

// CD-ROM main state machine controller function
// Original MIPS function: func_8001C824
// This function controls the main CD-ROM system state machine
void func_8001C824(void) {
    u32 currentState;
    u32 timerValue;
    
    // Get current state
    currentState = D_800989C4;
    
    if (currentState == 1) {
        // State 1: Check if system is ready
        if (D_80098964 != 0) {
            // System ready, set up sync callback and execute commands
            D_800988D0 = 0;  // Clear flag
            
            // Set sync callback to our function
            CdSyncCallback(func_8001C7F0);
            
            // Get sector number from D_80098A84 and convert to position
            CdIntToPos();
            
            // Execute CD-ROM command 0x16 with position buffer
            func_8001D254(0x16, (u32)((u8*)&D_80098A84 + 0x10), D_80098A98);
            
            // Reset timer and increment state
            D_80098828 = 0;
            D_800989C4 = currentState + 1;
        }
        
    } else if (currentState == 0) {
        // State 0: Initialize system if needed
        if (D_80098964 == 0) {
            // System not ready, call initialization function
            func_8001CB7C();
        }
        
        // Increment state
        D_800989C4 = currentState + 1;
        
    } else if (currentState == 2) {
        // State 2: Timer-based state
        timerValue = D_80098828;
        timerValue++;
        D_80098828 = timerValue;
        
        // Check if timer has reached threshold (0x96 = 150)
        if (timerValue == 0x96) {
            // Timer expired, set flag in status register
            D_8009896C |= 0x2;
        }
        
    } else if (currentState == 3) {
        // State 3: Call memory cleanup function
        func_8001CAAC();
    }
    
    // For any other state, do nothing
}

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

// CD-ROM memory cleanup and defragmentation function
// Original MIPS function: func_8001CAAC
// This function compacts CD-ROM memory by moving data blocks and resetting pointers
void func_8001CAAC(void) {
    u32* sourcePtr;
    u32* destPtr;
    u32* currentPtr;
    u32 temp1, temp2, temp3;
    
    // Get destination pointer (D_800A3A40)
    destPtr = D_800A3A40;
    
    // Check if there's data to move
    if (*destPtr != 0) {
        // Set source pointer 12 bytes ahead
        sourcePtr = (u32*)((u8*)destPtr + 0xC);
        
        // Loop to move data blocks
        do {
            // Load 3 words from source
            temp1 = sourcePtr[1];  // offset 4
            temp2 = sourcePtr[2];  // offset 8
            temp3 = sourcePtr[3];  // offset 12
            
            // Write to destination
            *destPtr = temp1;
            
            // Advance destination pointer by 16 bytes
            destPtr = (u32*)((u8*)destPtr + 0x10);
            
            // Write remaining data to source-relative positions
            sourcePtr[-2] = temp1;  // offset -8
            sourcePtr[-1] = temp2;  // offset -4
            sourcePtr[0] = temp3;   // offset 0
            
            // Check if more data exists
            if (*destPtr != 0) {
                // Advance source pointer by 16 bytes
                sourcePtr = (u32*)((u8*)sourcePtr + 0x10);
            }
        } while (*destPtr != 0);
    }
    
    // Reset destination pointer to zero
    *destPtr = 0;
    
    // Reset global state variables
    D_800989C8 = 0;
    D_800989C4 = 0;
    
    // Move CD structure pointer backward by 16 bytes
    unknown_Cd_strucptr = (void*)((u8*)unknown_Cd_strucptr - 0x10);
}

// CD-ROM callback setup and initialization function
// Original MIPS function: func_8001CB30
void func_8001CB30(void) {
    // Clear the CD-ROM status flag
    D_8009896C = 0;
    
    // Set CD-ROM ready callback to NULL (disable it)
    CdReadyCallback(0);
    
    // Set CD-ROM sync callback to our handler function
    CdSyncCallback(func_8001CC08);
    
    // Call function to initialize CD-ROM with command 9, parameter 0, and status buffer
    func_8001D254(9, 0, &D_80098A98);
}

// CD-ROM system initialization and audio setup function
// Original MIPS function: func_8001CB7C
// This function initializes the CD-ROM system and sets up audio parameters
void func_8001CB7C(void) {
    s16 audioIndex;
    
    // Loop through audio indices from 0x7F down to 0
    for (audioIndex = 0x7F; audioIndex > 0; audioIndex--) {
        // Call audio setup function for each index
        func_8001D394(audioIndex & 0xFF);
    }
    
    // Set hardware register flag (bit 15)
    D_800AD142 |= 0x8000;
    
    // Clear CD-ROM status flag
    D_8009896C = 0;
    
    // Set CD-ROM ready callback to NULL (disable it)
    CdReadyCallback(0);
    
    // Set CD-ROM sync callback to our handler function
    CdSyncCallback(func_8001CC08);
    
    // Initialize CD-ROM system with command 9, parameter 0, and status buffer
    func_8001D254(9, 0, &D_80098A98);
    
    // Clear system state variables
    D_800988D0 = 0;
    D_80098AB8 = 0;
}

// CD-ROM sync callback handler function
// Original MIPS function: func_8001CC08
// This function handles CD-ROM synchronization results and updates system state
void func_8001CC08(u32 syncResult) {
    // Disable the CD-ROM sync callback
    CdSyncCallback(0);
    
    // Mask the sync result to 8 bits
    syncResult = syncResult & 0xFF;
    
    // Check if sync was successful (result == 2)
    if (syncResult == 2) {
        // Success: Set system ready flag and clear error flag
        D_80098964 = 1;
        D_800988C0 = 0;
    } else {
        // Failure: Set error flag and update status register
        D_800988C0 = 0x80;
        D_8009896C |= 0x8;
    }
}

// CD-ROM read initialization and setup function
// Original MIPS function: func_8001CC7C
// This function initializes CD-ROM read operations using table lookups
void func_8001CC7C(u32 index, u32 param1) {
    u32 tableOffset;
    u32 tableValue1, tableValue2;
    
    // Calculate table offset: index * 3 * 4 (familiar pattern from our knowledge base!)
    tableOffset = (index * 3) << 2;
    
    // Load first value from D_80082CD0 table
    tableValue1 = D_80082CD0[tableOffset >> 2];
    
    // Set system state variables
    D_800988C0 = 1;      // Set flag
    D_80098B42 = 7;      // Set counter
    D_8009896C = 0;      // Clear status
    D_80098828 = 0;      // Clear timer
    D_80098964 = 0;      // Clear ready flag
    D_80098A7C = tableValue1;  // Store table value
    
    // Convert sector number to CD position
    CdIntToPos();
    
    // Load second value from D_80082CD0 table (offset + 4)
    tableValue2 = D_80082CD0[(tableOffset + 4) >> 2];
    
    // Store callback function pointer and parameter
    D_800987A4 = param1;
    D_8009881C = tableValue2;
    
    // Set CD-ROM ready callback to NULL (disable it)
    CdReadyCallback(0);
    
    // Execute CD-ROM command 2 with position buffer
    func_8001D2BC(2, D_80098814, D_80098A98);
    
    // Execute CD-ROM command 6 with parameter 0
    func_8001D2BC(6, 0, D_80098A98);
}

// CD-ROM sector reading and data processing callback function
// Original MIPS function: func_8001CD60
// This function handles CD-ROM sector reading with complex data processing
void func_8001CD60(u32 operation) {
    u32* sectorBuffer;
    u32 convertedPos;
    u32 expectedPos;
    u32 callbackPtr;
    u32 tableOffset;
    u32 tableValue;
    u32 dataValue;
    u32 copyLength;
    u8* sourcePtr;
    u8* destPtr;
    
    // Mask operation to 8 bits
    operation = operation & 0xFF;
    
    // Reset timer
    D_80098828 = 0;
    
    if (operation == 1) {
        // Sector reading operation
        sectorBuffer = D_800B5DB0;
        
        // Read sector from CD-ROM
        CdGetSector(sectorBuffer, 3);
        
        // Convert position back to integer for verification
        convertedPos = CdPosToInt(sectorBuffer);
        
        // Check if converted position matches expected value
        expectedPos = D_80098A7C;
        if (convertedPos == expectedPos) {
            // Position matches, increment expected position
            D_80098A7C = convertedPos + 1;
            
            // Check if callback pointer is less than 0x800
            callbackPtr = D_8009881C;
            if (callbackPtr < 0x800) {
                // Callback pointer is small, perform data processing
                if (D_800989C8 == 0) {
                    // Process data from D_80098A84 structure
                    dataValue = ((u32*)D_80098A84)[1];  // offset 4
                    
                    // Calculate table offset: (dataValue * 3) * 4
                    tableOffset = (dataValue * 3) << 2;
                    
                    // Look up value from D_80082CD0 table (offset + 8)
                    tableValue = D_80082CD0[(tableOffset + 8) >> 2];
                    
                    // Check if table value matches callback parameter
                    if (tableValue == D_800987A4) {
                        // Values match, set flag
                        D_800989C8 = operation;
                    } else {
                        // Values don't match, set error flag
                        D_8009896C |= 0x20;
                    }
                }
                
                // Decrement callback pointer by 0x800
                D_8009881C = callbackPtr - 0x800;
                
                if (D_8009881C == 0) {
                    // Callback pointer reached 0, reset system
                    CdReadyCallback(0);
                    CdSyncCallback(func_8001CC08);
                    func_8001D254(9, 0, D_80098A98);
                } else {
                    // Increment callback parameter by 0x800
                    D_800987A4 = D_800987A4 + 0x800;
                }
            } else {
                // Callback pointer is large, read sector and copy data
                CdGetSector(sectorBuffer, 0x200);
                
                // Copy data from sector buffer to destination
                copyLength = D_8009881C;
                if (copyLength != 0) {
                    sourcePtr = (u8*)sectorBuffer;
                    destPtr = (u8*)D_800987A4;
                    
                    do {
                        *destPtr = *sourcePtr;
                        destPtr++;
                        sourcePtr++;
                        copyLength--;
                    } while (copyLength != 0);
                    
                    // Update destination pointer
                    D_800987A4 = (u32)destPtr;
                }
                
                // Set up callbacks
                CdSyncCallback(func_8001CC08);
                func_8001D254(9, 0, D_80098A98);
            }
        } else {
            // Position mismatch, set error flag
            D_8009896C |= 0x40;
        }
    } else {
        // Non-sector operation, set error flag
        D_8009896C |= 0x4;
    }
    
    // Set error flag and set up callbacks
    D_800988C0 = 0x80;
    CdReadyCallback(0);
}

// CD-ROM read initialization function (variant with memory clearing)
// Original MIPS function: func_8001CF98
// This function is nearly identical to func_8001CC7C but clears memory and uses different callback
void func_8001CF98(u32 index) {
    u32 tableOffset;
    u32 tableValue1, tableValue2;
    u8* memoryPtr;
    s32 i;
    
    // Clear 10 bytes of memory starting from D_80098B41 down to D_80098B38
    memoryPtr = &D_80098B41;
    for (i = 9; i >= 0; i--) {
        memoryPtr[i] = 0;
        memoryPtr--;
    }
    
    // Calculate table offset: index * 3 * 4 (same pattern as func_8001CC7C)
    tableOffset = (index * 3) << 2;
    
    // Load first value from D_80082CD0 table
    tableValue1 = D_80082CD0[tableOffset >> 2];
    
    // Set system state variables (identical to func_8001CC7C)
    D_800988C0 = 1;      // Set flag
    D_80098B42 = 7;      // Set counter
    D_8009896C = 0;      // Clear status
    D_80098828 = 0;      // Clear timer
    D_80098964 = 0;      // Clear ready flag
    D_80098998 = 0;      // Clear additional flag
    D_80098A7C = tableValue1;  // Store table value
    
    // Convert sector number to CD position
    CdIntToPos();
    
    // Load second value from D_80082CD0 table (offset + 4)
    tableValue2 = D_80082CD0[(tableOffset + 4) >> 2];
    
    // Store callback function pointer (different from func_8001CC7C)
    D_8009881C = tableValue2;
    
    // Set CD-ROM ready callback to NULL (disable it)
    CdReadyCallback(0);
    
    // Execute CD-ROM command 6 only (vs. commands 2 and 6 in func_8001CC7C)
    func_8001D2BC(6, D_80098814, D_80098A98);
}

// CD-ROM sector reading and error handling callback function
// Original MIPS function: func_8001D078
// This function handles CD-ROM sector reading operations and error conditions
void func_8001D078(u32 operation) {
    u32 sectorIndex;
    u32 sectorOffset;
    u32* sectorBuffer;
    u32 sectorValue;
    u32 convertedPos;
    
    // Mask operation to 8 bits
    operation = operation & 0xFF;
    
    // Reset timer
    D_80098828 = 0;
    
    if (operation == 1) {
        // Sector reading operation
        sectorIndex = D_80098998;
        
        // Check if sector is already marked as read
        if (*(u8*)(D_80098B38 + sectorIndex) == 0) {
            // Sector not read yet, perform reading operation
            sectorOffset = sectorIndex << 11;  // Multiply by 2048 (sector size)
            sectorBuffer = (u32*)(D_800B5DB0 + sectorOffset);
            
            // Read sector from CD-ROM
            CdGetSector(sectorBuffer, 3);
            
            // Convert position back to integer for verification
            convertedPos = CdPosToInt(sectorBuffer);
            
            // Check if converted position matches expected value
            if (convertedPos == D_80098A7C) {
                // Position matches, increment sector value
                D_80098A7C = convertedPos + 1;
                
                // Read next sector
                CdGetSector(sectorBuffer, 3);
                
                // Mark sector as read
                *(u8*)(D_80098B38 + sectorIndex) = 1;
                
                // Increment sector index
                D_80098998 = sectorIndex + 1;
                
                // Wrap around if index reaches 10
                if (D_80098998 == 10) {
                    D_80098998 = 0;
                }
                
                // Update callback pointer
                D_8009881C = D_8009881C - 0x800;
                
                // Check if callback pointer is still valid
                if (D_8009881C > 0) {
                    // Continue with normal operation
                } else {
                    // Reset system and set up callbacks
                    CdReadyCallback(0);
                    func_8001D254(9, 0, D_80098A98);
                    CdSyncCallback(func_8001CC08);
                }
            } else {
                // Position mismatch, set error flag
                D_8009896C |= 0x40;
            }
        } else {
            // Sector already read, set error flag
            D_800988C0 = 0x80;
            D_8009896C |= 0x1;
        }
    } else {
        // Non-sector operation, set different error flag
        D_8009896C |= 0x4;
        D_800988C0 = 0x80;
    }
    
    // Set up callbacks for error conditions
    CdReadyCallback(0);
    CdSyncCallback(func_8001CC08);
    func_8001D254(9, 0, D_80098A98);
}

// Robust CD-ROM command execution function
// Original MIPS function: func_8001D254
// This function ensures CD-ROM synchronization and command execution succeed
void func_8001D254(u32 command, u32 param1, void* param2) {
    // First loop: Wait for CD-ROM synchronization to succeed
    do {
        // Try to sync with CD-ROM, passing param2 as the status buffer
        if (CdSync(1, param2) != 0) {
            break;  // Success, exit loop
        }
    } while (1);
    
    // Second loop: Wait for CD-ROM command to succeed
    do {
        // Execute CD-ROM command with masked command value
        if (CdControl(command & 0xFF, param1, param2) != 0) {
            break;  // Success, exit loop
        }
    } while (1);
}

// Blocking CD-ROM command execution function
// Original MIPS function: func_8001D2BC
// This function ensures CD-ROM synchronization and blocking command execution succeed
// Similar to func_8001D254 but uses CdControlB (blocking) instead of CdControl (non-blocking)
void func_8001D2BC(u32 command, u32 param1, void* param2) {
    // First loop: Wait for CD-ROM synchronization to succeed
    do {
        // Try to sync with CD-ROM, passing param2 as the status buffer
        if (CdSync(1, param2) != 0) {
            break;  // Success, exit loop
        }
    } while (1);
    
    // Second loop: Wait for blocking CD-ROM command to succeed
    do {
        // Execute blocking CD-ROM command with masked command value
        if (CdControlB(command & 0xFF, param1, param2) != 0) {
            break;  // Success, exit loop
        }
    } while (1);
}

// CD-ROM state management and timing control function
// Original MIPS function: func_8001D324
// This function manages CD-ROM state transitions and timing
void func_8001D324(u32 newState) {
    u8 currentState;
    u8 newStateMasked;
    u8 currentStateMasked;
    
    // Save parameter and get current state
    currentState = D_800988EC;
    newStateMasked = newState & 0xFF;
    currentStateMasked = currentState & 0xFF;
    
    // Reset the timer
    D_80098828 = 0;
    
    // Early return if state hasn't changed (low 8 bits match)
    if (currentStateMasked == newStateMasked) {
        return;
    }
    
    // Set timer to 2 if high bit (0x80) has changed
    if ((currentState & 0x80) != (newState & 0x80)) {
        D_80098828 = 2;
    }
    
    // Update the global state variable
    D_800988EC = newState;
    
    // Call blocking CD-ROM command function with command 0xE
    func_8001D2BC(0xE, D_800988EC, &D_80098A98);
}

// Audio SPU register control function
// Original MIPS function: func_8001D394
// This function controls SPU (Sound Processing Unit) registers based on hardware flags
void func_8001D394(u32 audioValue) {
    u16 hardwareFlag;
    
    // Check hardware flag (bit 0 of D_800AD142)
    hardwareFlag = D_800AD142 & 0x1;
    
    // Set SPU register 0 (D_800AD154)
    D_800AD154 = audioValue;
    
    if (hardwareFlag != 0) {
        // Flag set: Set all registers to the audio value
        D_800AD155 = audioValue;
        D_800AD156 = audioValue;
        D_800AD157 = audioValue;
    } else {
        // Flag clear: Set registers 1,3 to 0, register 2 to audio value
        D_800AD155 = 0;
        D_800AD156 = audioValue;
        D_800AD157 = 0;
    }
    
    // Call audio mixing function with SPU buffer pointer
    CdMix((void*)(D_800AD140 + 0x14));
}

// CD-ROM command queue enqueue function
// Original MIPS function: func_8001D414
// This function adds a command to the CD-ROM command queue
void func_8001D414(u32 param1, u32 param2) {
    // Get current CD-ROM structure pointer
    void* cdStructPtr = unknown_Cd_strucptr;
    
    // Write command data to the structure
    ((u32*)cdStructPtr)[0] = 4;           // Command type/identifier
    ((u32*)cdStructPtr)[1] = param1;      // First parameter
    ((u32*)cdStructPtr)[2] = param2;      // Second parameter
    
    // Advance pointer by 16 bytes (4 words) to next queue position
    cdStructPtr = (void*)((u8*)cdStructPtr + 0x10);
    
    // Update global pointer to next available position
    unknown_Cd_strucptr = cdStructPtr;
}

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", Cd_read_comb);

// CD-ROM command queue enqueue function (type 1)
// Original MIPS function: func_8001D468
// This function adds a different type of command to the CD-ROM command queue
void func_8001D468(u32 param1, u32 param2) {
    // Get current CD-ROM structure pointer
    void* cdStructPtr = unknown_Cd_strucptr;
    
    // Write command data to the structure
    ((u32*)cdStructPtr)[0] = 1;           // Command type/identifier (different from func_8001D414)
    ((u32*)cdStructPtr)[1] = param1;      // First parameter
    ((u32*)cdStructPtr)[2] = param2;      // Second parameter
    
    // Advance pointer by 16 bytes (4 words) to next queue position
    cdStructPtr = (void*)((u8*)cdStructPtr + 0x10);
    
    // Update global pointer to next available position
    unknown_Cd_strucptr = cdStructPtr;
}

// CD-ROM conditional command queue processor function
// Original MIPS function: func_8001D494
// This function processes the CD-ROM command queue with conditional logic for command type 2
void func_8001D494(u32 param1, u32 param2, u32 param3) {
    void* cdStructPtr;
    void* searchPtr;
    void* movePtr;
    u32* currentPtr;
    u32* destPtr;
    u32 temp1, temp2, temp3;
    
    // Early return if param2 is not 1
    if (param2 != 1) {
        goto create_structure;
    }
    
    // Get current CD structure pointer
    cdStructPtr = unknown_Cd_strucptr;
    
    // Start search from D_800A3A40 + 0x10
    searchPtr = (void*)(D_800A3A40 + 0x10);
    
    // Check if search pointer is before CD structure pointer
    if (searchPtr >= cdStructPtr) {
        goto create_structure;
    }
    
    // Search for command type 2 in the queue
    do {
        // Check if current command is type 2
        if (*(u32*)searchPtr == 2) {
            // Found command type 2, check additional condition
            movePtr = searchPtr + 0x10;
            
            // Check if value at offset -8 is 1
            if (*(u32*)((u8*)movePtr - 8) == 1) {
                // Check if move pointer is before CD structure pointer
                if (movePtr < cdStructPtr) {
                    // Move data blocks (similar to other functions)
                    currentPtr = (u32*)movePtr;
                    destPtr = (u32*)searchPtr;
                    
                    do {
                        // Load 4 words from source
                        temp1 = currentPtr[0];
                        temp2 = currentPtr[1];
                        temp3 = currentPtr[2];
                        
                        // Write to destination (overwriting the command type 2)
                        destPtr[0] = temp1;
                        destPtr[1] = temp2;
                        destPtr[2] = temp3;
                        
                        // Write back to source positions
                        currentPtr[-4] = temp1;  // offset -16
                        currentPtr[-3] = temp2;  // offset -12
                        currentPtr[-2] = temp3;  // offset -8
                        
                        // Advance pointers
                        currentPtr += 4;
                        destPtr += 4;
                        
                        // Check if we've reached the end
                    } while (currentPtr < (u32*)cdStructPtr);
                    
                    // Adjust CD structure pointer backward by 16 bytes
                    unknown_Cd_strucptr = (void*)((u8*)unknown_Cd_strucptr - 0x10);
                }
            }
        }
        
        // Advance search pointer by 16 bytes
        searchPtr = (void*)((u8*)searchPtr + 0x10);
        
        // Check if search pointer is still before CD structure pointer
    } while (searchPtr < cdStructPtr);
    
create_structure:
    // Create new command structure
    cdStructPtr = unknown_Cd_strucptr;
    
    // Set command type to 2
    ((u32*)cdStructPtr)[0] = 2;
    
    // Set parameters
    ((u32*)cdStructPtr)[1] = param1;  // offset 4
    ((u32*)cdStructPtr)[2] = param2;  // offset 8
    ((u32*)cdStructPtr)[3] = param3;  // offset 12
    
    // Advance CD structure pointer by 16 bytes
    unknown_Cd_strucptr = (void*)((u8*)cdStructPtr + 0x10);
}

// CD-ROM command structure builder function
// Original MIPS function: func_8001D58C
// This function builds CD-ROM command structures and advances the command queue
void func_8001D58C(u32 address) {
    u32 highBits, middleBits, lowBits;
    u32 tableIndex, offset1, offset2;
    u32* table1Ptr, *table2Ptr;
    u32 value1, value2, finalValue;
    void* cdStructPtr;
    
    // Extract high 2 bits (bits 28-29) for table index
    highBits = (address >> 28) & 0x3;
    
    // Calculate table offset
    tableIndex = highBits * 4;  // 4 bytes per entry
    
    // Get current CD structure pointer
    cdStructPtr = unknown_Cd_strucptr;
    
    // Set command type to 4
    ((u32*)cdStructPtr)[0] = 4;
    
    // Store address in global variable
    D_800989B8 = address;
    
    // Extract middle 16 bits (bits 4-19) for offset calculation
    middleBits = (address << 4) >> 20;
    
    // Look up value from first table (D_80088F9C)
    table1Ptr = (u32*)(D_80088F9C + tableIndex);
    value1 = table1Ptr[middleBits];
    
    // Store first value in structure
    ((u32*)cdStructPtr)[1] = value1;
    
    // Check high bit (bit 30) for flag
    if (address & 0x40000000) {
        // Look up value from second table (D_80088EF8)
        table2Ptr = (u32*)(D_80088EF8 + tableIndex);
        value2 = table2Ptr[middleBits];
        
        // Extract low 16 bits for final offset
        lowBits = address & 0xFFFF;
        
        // Calculate final address and load value
        finalValue = value2 + (lowBits << 3);
        value1 = *(u32*)finalValue;
        
        // Store second value in structure
        ((u32*)cdStructPtr)[2] = value1;
        
        // Load additional value and combine with flag
        value2 = *(u32*)(finalValue + 4);
        value2 |= 0x40000000;  // Set high bit flag
        
        // Store third value in structure
        ((u32*)cdStructPtr)[3] = value2;
    } else {
        // No flag set, use simpler logic
        table2Ptr = (u32*)(D_80088EF8 + tableIndex);
        value2 = table2Ptr[middleBits];
        
        lowBits = address & 0xFFFF;
        finalValue = value2 + (lowBits << 3);
        value1 = *(u32*)finalValue;
        
        ((u32*)cdStructPtr)[2] = value1;
        ((u32*)cdStructPtr)[3] = *(u32*)(finalValue + 4);
    }
    
    // Store values from D_80098A84 structure
    D_800989BC = ((u32*)D_80098A84)[2];  // offset 8
    D_800989C0 = ((u32*)D_80098A84)[3];  // offset 12
    
    // Advance CD structure pointer by 16 bytes
    unknown_Cd_strucptr = (void*)((u8*)cdStructPtr + 0x10);
}

// CD-ROM address calculation and lookup function
// Original MIPS function: func_8001D648
// This function performs complex address calculations using multiple lookup tables
void func_8001D648(u32 address) {
    u32 highBits, middleBits, lowBits;
    u32 tableIndex, offset1, offset2;
    u32* table1Ptr, *table2Ptr;
    u32 value1, value2, finalOffset;
    
    // Extract high 4 bits (bits 28-31) for table index
    highBits = (address >> 28) & 0xF;
    
    // Extract middle 20 bits (bits 4-23) for offset calculation
    middleBits = (address << 4) >> 20;
    
    // Extract low 16 bits (bits 0-15) for final offset
    lowBits = address & 0xFFFF;
    
    // Calculate table offsets
    tableIndex = highBits * 4;  // 4 bytes per entry
    
    // Look up values from first table (D_80088F9C)
    table1Ptr = (u32*)(D_80088F9C + tableIndex);
    value1 = *table1Ptr;
    
    // Look up values from second table (D_80088EF8)
    table2Ptr = (u32*)(D_80088EF8 + tableIndex);
    value2 = *table2Ptr;
    
    // Calculate offsets
    offset1 = value1 + middleBits;
    offset2 = value2 + middleBits;
    
    // Load values from calculated addresses
    value1 = *(u32*)offset1;
    value2 = *(u32*)offset2;
    
    // Calculate final offset: (value1 * 3) * 4 + lowBits
    finalOffset = ((value1 * 3) << 2) + lowBits;
    
    // Look up final value from D_80082CD0 table
    value2 = D_80082CD0[finalOffset >> 2];  // Divide by 4 since it's a u32 array
    
    // Call function with calculated address
    func_8001D6D8(value2 + (value2 & 0xFFFFFF));
}

// CD-ROM command queue processor function
// Original MIPS function: func_8001D6D8
// This function processes the CD-ROM command queue and handles command type 7
void func_8001D6D8(u32 parameter) {
    void* cdStructPtr;
    void* searchPtr;
    void* movePtr;
    u32* currentPtr;
    u32 temp1, temp2, temp3;
    
    // Get current CD structure pointer
    cdStructPtr = unknown_Cd_strucptr;
    
    // Start search from D_800A3A40 + 0x10
    searchPtr = (void*)(D_800A3A40 + 0x10);
    
    // Check if search pointer is before CD structure pointer
    if (searchPtr >= cdStructPtr) {
        goto create_command;
    }
    
    // Search for command type 7 in the queue
    do {
        // Check if current command is type 7
        if (*(u32*)searchPtr == 7) {
            // Found command type 7, move data blocks
            movePtr = searchPtr + 0x10;
            
            // Check if move pointer is before CD structure pointer
            if (movePtr >= cdStructPtr) {
                // Skip to next iteration
            } else {
                // Move data blocks (similar to func_8001CAAC)
                currentPtr = (u32*)movePtr;
                do {
                    // Load 4 words from source
                    temp1 = currentPtr[0];
                    temp2 = currentPtr[1];
                    temp3 = currentPtr[2];
                    
                    // Write to destination (overwriting the command type 7)
                    currentPtr[-4] = temp1;  // offset -16
                    currentPtr[-3] = temp2;  // offset -12
                    currentPtr[-2] = temp3;  // offset -8
                    
                    // Advance pointers
                    currentPtr += 4;
                    
                    // Check if we've reached the end
                } while (currentPtr < (u32*)cdStructPtr);
                
                // Adjust CD structure pointer backward by 16 bytes
                unknown_Cd_strucptr = (void*)((u8*)unknown_Cd_strucptr - 0x10);
            }
        }
        
        // Advance search pointer by 16 bytes
        searchPtr = (void*)((u8*)searchPtr + 0x10);
        
        // Check if search pointer is still before CD structure pointer
    } while (searchPtr < cdStructPtr);
    
create_command:
    // Create new command structure
    cdStructPtr = unknown_Cd_strucptr;
    
    // Set command type to 7
    ((u32*)cdStructPtr)[0] = 7;
    
    // Set parameter in offset 8
    ((u32*)cdStructPtr)[2] = parameter;
    
    // Advance CD structure pointer by 16 bytes
    unknown_Cd_strucptr = (void*)((u8*)cdStructPtr + 0x10);
}

// Table lookup and function call function
// Original MIPS function: func_8001D7AC
// This function looks up a value in a table and calls another function with it
void func_8001D7AC(u32 index) {
    // Calculate array offset: index * 12 (3 * 4 bytes)
    u32 offset = index * 12;
    
    // Load value from table D_80082CD0 at calculated offset
    u32 tableValue = D_80082CD0[offset >> 2];  // Divide by 4 since it's a u32 array
    
    // Call function with the loaded value
    func_8001D6D8(tableValue);
}

// CD-ROM structure pointer synchronization function
// Original MIPS function: func_8001D7E4
// This function waits for the CD-ROM structure pointer to reach a specific value
void func_8001D7E4(void) {
    void* cdStructPtr;
    void* targetPtr;
    
    // Get current CD-ROM structure pointer and target pointer
    cdStructPtr = unknown_Cd_strucptr;
    targetPtr = D_800A3A40;
    
    // If pointers already match, no need to wait
    if (cdStructPtr == targetPtr) {
        return;
    }
    
    // Wait for pointers to match by calling function in a loop
    do {
        func_80012E98(1);
        cdStructPtr = unknown_Cd_strucptr;
    } while (cdStructPtr != targetPtr);
}

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/cd", Cd_read_sync2);
