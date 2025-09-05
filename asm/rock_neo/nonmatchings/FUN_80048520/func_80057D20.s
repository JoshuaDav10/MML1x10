.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057D20
    /* 48520 80057D20 4C0062AC */  sw         $v0, 0x4C($v1)
    /* 48524 80057D24 6C00828C */  lw         $v0, 0x6C($a0)
    /* 48528 80057D28 00000000 */  nop
    /* 4852C 80057D2C 01004290 */  lbu        $v0, 0x1($v0)
    /* 48530 80057D30 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 48534 80057D34 21082200 */  addu       $at, $at, $v0
    /* 48538 80057D38 F8E22290 */  lbu        $v0, %lo(D_800BE2F8)($at)
    /* 4853C 80057D3C 00000000 */  nop
    /* 48540 80057D40 80100200 */  sll        $v0, $v0, 2
    /* 48544 80057D44 0980013C */  lui        $at, %hi(D_8008CE10)
    /* 48548 80057D48 21082200 */  addu       $at, $at, $v0
    /* 4854C 80057D4C 10CE228C */  lw         $v0, %lo(D_8008CE10)($at)
    /* 48550 80057D50 00000000 */  nop
    /* 48554 80057D54 6C0082AC */  sw         $v0, 0x6C($a0)
    /* 48558 80057D58 0800E003 */  jr         $ra
    /* 4855C 80057D5C 01000224 */   addiu     $v0, $zero, 0x1
.size func_80057D20, . - func_80057D20
