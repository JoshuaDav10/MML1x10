.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80040B34
    /* 31334 80040B34 1C018394 */  lhu        $v1, 0x11C($a0)
    /* 31338 80040B38 3E018294 */  lhu        $v0, 0x13E($a0)
    /* 3133C 80040B3C 00000000 */  nop
    /* 31340 80040B40 24104300 */  and        $v0, $v0, $v1
    /* 31344 80040B44 03004014 */  bnez       $v0, .L80040B54
    /* 31348 80040B48 01000224 */   addiu     $v0, $zero, 0x1
    /* 3134C 80040B4C D8020108 */  j          .L80040B60
    /* 31350 80040B50 21100000 */   addu      $v0, $zero, $zero
  .L80040B54:
    /* 31354 80040B54 05000324 */  addiu      $v1, $zero, 0x5
    /* 31358 80040B58 090083A0 */  sb         $v1, 0x9($a0)
    /* 3135C 80040B5C 0A0080A4 */  sh         $zero, 0xA($a0)
  .L80040B60:
    /* 31360 80040B60 0800E003 */  jr         $ra
    /* 31364 80040B64 00000000 */   nop
.size func_80040B34, . - func_80040B34
