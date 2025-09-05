.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057BEC
    /* 483EC 80057BEC 1000B08F */  lw         $s0, 0x10($sp)
    /* 483F0 80057BF0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 483F4 80057BF4 0800E003 */  jr         $ra
    /* 483F8 80057BF8 00000000 */   nop
.size func_80057BEC, . - func_80057BEC
