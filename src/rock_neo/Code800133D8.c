#include "common.h"
#include "rock_neo.h"
#include "rock_neo/Code800133D8.h"

// clang-format off

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/Code800133D8", func_800133D8);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/Code800133D8", func_80013418);

// Main game loop/state machine function
// Original MIPS function: func_80013420
void func_80013420(void) {
    CODE_800133D8_WORK* work = &Code800133D8_work;
    void (*stateFunc)(CODE_800133D8_WORK*);
    u32 stateIndex;
    u32 funcIndex;
    u16 joyInput;
    s16 value1;
    s16 value2;
    
    // Set hardware register 0x1F800001 to 2
    *(u8*)0x1F800001 = 2;
    
    // Clear work structure fields (x0C is at offset 12, which is x6 in s16 array)
    work->x6 = 0;
    
    // Clear game work fields (using direct memory access for now)
    // Note: Game_work structure needs to be defined
    *(u8*)(0x80098A70 + 0x52) = 0;  // Game_work + 0x52
    *(u8*)(0x80098A70 + 0x53) = 0;  // Game_work + 0x53
    *(u8*)(0x80098A70 + 0x82) = 0;  // Game_work + 0x82
    
    // Initialize various game systems
    func_8005C258();
    Cd_read_comb(0x14);
    func_8001D888(1);
    func_80019FB4();
    MojiTaskKill();
    func_80063BA8();
    func_80063EF0();
    func_80017994();
    
    // Main game loop
    while (1) {
        // Check if work state is 2
        if (work->x0 == 2) {
            // Check joystick input (buttons 0x4008)
            joyInput = D_800C0C2A;
            if (joyInput & 0x4008) {
                // Play sound effect
                Sound_call(0x82, 1, 0);
                
                // Update game state based on conditions
                value1 = D_80098A72;
                value2 = D_80098A70;
                
                if (value1 > 0) {
                    work->x1 = 1;
                } else if (value1 != 0 || value2 != 0) {
                    work->x1 = 0;
                } else {
                    work->x1 = 1;
                }
                
                // Set state to 4
                work->x0 = 4;
            }
        }
        
        // Get function pointer from state table
        stateIndex = work->x0;
        funcIndex = stateIndex << 2; // Multiply by 4 (word size)
        
        // Call state-specific function
        stateFunc = (void (*)(CODE_800133D8_WORK*))Code800133D8_main_tbl[funcIndex];
        if (stateFunc != 0) {
            stateFunc(work);
        }
        
        // Update game systems
        func_80031AA4();
        func_80012E98(1);
        
        // Continue loop
    }
}

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/Code800133D8", func_80013578);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/Code800133D8", func_800135DC);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/Code800133D8", func_800136B8);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/Code800133D8", func_800137D4);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/Code800133D8", func_80013890);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/Code800133D8", func_8001389C);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/Code800133D8", func_80013CA0);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/Code800133D8", func_80013E0C);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/Code800133D8", func_80013F60);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/Code800133D8", func_80013F8C);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/Code800133D8", func_80013FB8);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/Code800133D8", func_80014394);

INCLUDE_ASM("config/../asm/rock_neo/nonmatchings/Code800133D8", func_8001456C);
