.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058600
    /* 48E00 80058600 0100A524 */  addiu      $a1, $a1, 0x1
    /* 48E04 80058604 6C00E28C */  lw         $v0, 0x6C($a3)
    /* 48E08 80058608 00000000 */  nop
    /* 48E0C 8005860C 02004224 */  addiu      $v0, $v0, 0x2
    /* 48E10 80058610 6C00E2AC */  sw         $v0, 0x6C($a3)
    /* 48E14 80058614 0800E003 */  jr         $ra
    /* 48E18 80058618 01000224 */   addiu     $v0, $zero, 0x1
.size func_80058600, . - func_80058600
