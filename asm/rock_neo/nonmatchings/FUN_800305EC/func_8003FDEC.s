.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003FDEC
    /* 305EC 8003FDEC 21300000 */  addu       $a2, $zero, $zero
    /* 305F0 8003FDF0 AA01010C */  jal        func_800406A8
    /* 305F4 8003FDF4 21200002 */   addu      $a0, $s0, $zero
    /* 305F8 8003FDF8 03004014 */  bnez       $v0, .L8003FE08
    /* 305FC 8003FDFC 00000000 */   nop
    /* 30600 8003FE00 090000A2 */  sb         $zero, 0x9($s0)
    /* 30604 8003FE04 0A0000A6 */  sh         $zero, 0xA($s0)
  .L8003FE08:
    /* 30608 8003FE08 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3060C 8003FE0C 1000B08F */  lw         $s0, 0x10($sp)
    /* 30610 8003FE10 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 30614 8003FE14 0800E003 */  jr         $ra
    /* 30618 8003FE18 00000000 */   nop
.size func_8003FDEC, . - func_8003FDEC
