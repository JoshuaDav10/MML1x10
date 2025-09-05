.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060E80
    /* 51680 80060E80 21100000 */  addu       $v0, $zero, $zero
  .L80060E84:
    /* 51684 80060E84 83000424 */  addiu      $a0, $zero, 0x83
    /* 51688 80060E88 01000524 */  addiu      $a1, $zero, 0x1
    /* 5168C 80060E8C 0268000C */  jal        Sound_call
    /* 51690 80060E90 21300000 */   addu      $a2, $zero, $zero
.size func_80060E80, . - func_80060E80
