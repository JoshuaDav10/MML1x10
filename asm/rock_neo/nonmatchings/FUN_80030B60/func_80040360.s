.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80040360
    /* 30B60 80040360 01000324 */  addiu      $v1, $zero, 0x1
    /* 30B64 80040364 090083A0 */  sb         $v1, 0x9($a0)
    /* 30B68 80040368 00010324 */  addiu      $v1, $zero, 0x100
    /* 30B6C 8004036C DE000108 */  j          .L80040378
    /* 30B70 80040370 0A0083A4 */   sh        $v1, 0xA($a0)
  .L80040374:
    /* 30B74 80040374 21100000 */  addu       $v0, $zero, $zero
  .L80040378:
    /* 30B78 80040378 0800E003 */  jr         $ra
    /* 30B7C 8004037C 00000000 */   nop
.size func_80040360, . - func_80040360
