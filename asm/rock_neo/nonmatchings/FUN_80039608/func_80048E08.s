.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80048E08
    /* 39608 80048E08 21100000 */  addu       $v0, $zero, $zero
    /* 3960C 80048E0C FFFF0224 */  addiu      $v0, $zero, -0x1
  .L80048E10:
    /* 39610 80048E10 0800E003 */  jr         $ra
    /* 39614 80048E14 00000000 */   nop
.size func_80048E08, . - func_80048E08
