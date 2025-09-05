.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060600
    /* 50E00 80060600 21280000 */  addu       $a1, $zero, $zero
    /* 50E04 80060604 1400BF8F */  lw         $ra, 0x14($sp)
    /* 50E08 80060608 1000B08F */  lw         $s0, 0x10($sp)
    /* 50E0C 8006060C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 50E10 80060610 0800E003 */  jr         $ra
    /* 50E14 80060614 00000000 */   nop
.size func_80060600, . - func_80060600
