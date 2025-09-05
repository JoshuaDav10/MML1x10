.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80040F7C
    /* 3177C 80040F7C 05006214 */  bne        $v1, $v0, .L80040F94
    /* 31780 80040F80 21200002 */   addu      $a0, $s0, $zero
    /* 31784 80040F84 04018590 */  lbu        $a1, 0x104($a0)
    /* 31788 80040F88 21300000 */  addu       $a2, $zero, $zero
    /* 3178C 80040F8C 7707010C */  jal        func_80041DDC
    /* 31790 80040F90 01000724 */   addiu     $a3, $zero, 0x1
  .L80040F94:
    /* 31794 80040F94 1400BF8F */  lw         $ra, 0x14($sp)
    /* 31798 80040F98 1000B08F */  lw         $s0, 0x10($sp)
    /* 3179C 80040F9C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 317A0 80040FA0 0800E003 */  jr         $ra
    /* 317A4 80040FA4 00000000 */   nop
.size func_80040F7C, . - func_80040F7C
