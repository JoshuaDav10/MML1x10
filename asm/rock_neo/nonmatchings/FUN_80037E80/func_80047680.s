.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80047680
    /* 37E80 80047680 A1000424 */  addiu      $a0, $zero, 0xA1
    /* 37E84 80047684 1468000C */  jal        Sound_call2
    /* 37E88 80047688 21282002 */   addu      $a1, $s1, $zero
  .L8004768C:
    /* 37E8C 8004768C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 37E90 80047690 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 37E94 80047694 1800B08F */  lw         $s0, 0x18($sp)
    /* 37E98 80047698 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 37E9C 8004769C 0800E003 */  jr         $ra
    /* 37EA0 800476A0 00000000 */   nop
.size func_80047680, . - func_80047680
