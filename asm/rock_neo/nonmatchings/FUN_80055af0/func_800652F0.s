.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800652F0
    /* 55AF0 800652F0 801C8526 */  addiu      $a1, $s4, 0x1C80
    /* 55AF4 800652F4 B75D000C */  jal        .L800176DC
    /* 55AF8 800652F8 04000624 */   addiu     $a2, $zero, 0x4
    /* 55AFC 800652FC F404C426 */  addiu      $a0, $s6, 0x4F4
.size func_800652F0, . - func_800652F0
