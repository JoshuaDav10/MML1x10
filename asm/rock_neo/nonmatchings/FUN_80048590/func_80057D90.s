.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057D90
    /* 48590 80057D90 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 48594 80057D94 21082200 */  addu       $at, $at, $v0
    /* 48598 80057D98 F8E22290 */  lbu        $v0, %lo(D_800BE2F8)($at)
    /* 4859C 80057D9C 00000000 */  nop
    /* 485A0 80057DA0 80100200 */  sll        $v0, $v0, 2
    /* 485A4 80057DA4 0980013C */  lui        $at, %hi(D_8008CE10)
    /* 485A8 80057DA8 21082200 */  addu       $at, $at, $v0
    /* 485AC 80057DAC 10CE228C */  lw         $v0, %lo(D_8008CE10)($at)
    /* 485B0 80057DB0 0800E003 */  jr         $ra
    /* 485B4 80057DB4 140082AC */   sw        $v0, 0x14($a0)
.size func_80057D90, . - func_80057D90
