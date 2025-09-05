.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80045074
    /* 35874 80045074 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 35878 80045078 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3587C 8004507C 08008290 */  lbu        $v0, 0x8($a0)
    /* 35880 80045080 00000000 */  nop
    /* 35884 80045084 80100200 */  sll        $v0, $v0, 2
    /* 35888 80045088 0980013C */  lui        $at, %hi(D_8008A288)
    /* 3588C 8004508C 21082200 */  addu       $at, $at, $v0
    /* 35890 80045090 88A2228C */  lw         $v0, %lo(D_8008A288)($at)
    /* 35894 80045094 00000000 */  nop
    /* 35898 80045098 09F84000 */  jalr       $v0
    /* 3589C 8004509C 00000000 */   nop
    /* 358A0 800450A0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 358A4 800450A4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 358A8 800450A8 0800E003 */  jr         $ra
    /* 358AC 800450AC 00000000 */   nop
.size func_80045074, . - func_80045074
