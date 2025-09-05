.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060200
    /* 50A00 80060200 21200002 */  addu       $a0, $s0, $zero
  .L80060204:
    /* 50A04 80060204 7781010C */  jal        func_800605DC
    /* 50A08 80060208 00000000 */   nop
    /* 50A0C 8006020C B083010C */  jal        Sub_screen_shift_check
    /* 50A10 80060210 21200002 */   addu      $a0, $s0, $zero
    /* 50A14 80060214 8D800108 */  j          .L80060234
.size func_80060200, . - func_80060200
