.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800133D8
    /* 3BD8 800133D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3BDC 800133DC 0180043C */  lui        $a0, %hi(func_80013420)
    /* 3BE0 800133E0 20348424 */  addiu      $a0, $a0, %lo(func_80013420)
    /* 3BE4 800133E4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3BE8 800133E8 0A80013C */  lui        $at, %hi(Code800133D8_work)
    /* 3BEC 800133EC A88A20AC */  sw         $zero, %lo(Code800133D8_work)($at)
    /* 3BF0 800133F0 0A80013C */  lui        $at, %hi(Code800133D8_work + 0x4)
    /* 3BF4 800133F4 AC8A20AC */  sw         $zero, %lo(Code800133D8_work + 0x4)($at)
    /* 3BF8 800133F8 0A80013C */  lui        $at, %hi(Code800133D8_work + 0x8)
    /* 3BFC 800133FC B08A20AC */  sw         $zero, %lo(Code800133D8_work + 0x8)($at)
    /* 3C00 80013400 DE4B000C */  jal        func_80012F78
    /* 3C04 80013404 00000000 */   nop
    /* 3C08 80013408 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3C0C 8001340C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3C10 80013410 0800E003 */  jr         $ra
    /* 3C14 80013414 00000000 */   nop
.size func_800133D8, . - func_800133D8
