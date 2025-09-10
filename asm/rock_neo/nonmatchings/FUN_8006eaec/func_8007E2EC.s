.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8007E2EC
    /* 6EAEC 8007E2EC FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 6EAF0 8007E2F0 BFF80108 */  j          .L8007E2FC
    /* 6EAF4 8007E2F4 21108000 */   addu      $v0, $a0, $zero
  .L8007E2F8:
    /* 6EAF8 8007E2F8 21100000 */  addu       $v0, $zero, $zero
.size func_8007E2EC, . - func_8007E2EC
