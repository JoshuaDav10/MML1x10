.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80066680
    /* 56E80 80066680 000002A6 */  sh         $v0, 0x0($s0)
    /* 56E84 80066684 02000224 */  addiu      $v0, $zero, 0x2
    /* 56E88 80066688 040002A2 */  sb         $v0, 0x4($s0)
    /* 56E8C 8006668C 050000A2 */  sb         $zero, 0x5($s0)
    /* 56E90 80066690 219E010C */  jal        func_80067884
    /* 56E94 80066694 060000A6 */   sh        $zero, 0x6($s0)
    /* 56E98 80066698 C599010C */  jal        func_80066714
    /* 56E9C 8006669C 21200002 */   addu      $a0, $s0, $zero
    /* 56EA0 800666A0 B1990108 */  j          .L800666C4
    /* 56EA4 800666A4 00000000 */   nop
  .L800666A8:
    /* 56EA8 800666A8 01000224 */  addiu      $v0, $zero, 0x1
    /* 56EAC 800666AC 040002A2 */  sb         $v0, 0x4($s0)
    /* 56EB0 800666B0 050000A2 */  sb         $zero, 0x5($s0)
    /* 56EB4 800666B4 219E010C */  jal        func_80067884
    /* 56EB8 800666B8 060000A6 */   sh        $zero, 0x6($s0)
    /* 56EBC 800666BC B699010C */  jal        func_800666D8
    /* 56EC0 800666C0 21200002 */   addu      $a0, $s0, $zero
  .L800666C4:
    /* 56EC4 800666C4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 56EC8 800666C8 1000B08F */  lw         $s0, 0x10($sp)
    /* 56ECC 800666CC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 56ED0 800666D0 0800E003 */  jr         $ra
    /* 56ED4 800666D4 00000000 */   nop
.size func_80066680, . - func_80066680
