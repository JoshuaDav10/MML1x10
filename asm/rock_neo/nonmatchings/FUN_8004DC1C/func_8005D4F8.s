.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D4F8
    /* 4DCF8 8005D4F8 0C80033C */  lui        $v1, %hi(D_800BBD85)
    /* 4DCFC 8005D4FC 85BD6324 */  addiu      $v1, $v1, %lo(D_800BBD85)
    /* 4DD00 8005D500 00006290 */  lbu        $v0, 0x0($v1)
    /* 4DD04 8005D504 00000000 */  nop
    /* 4DD08 8005D508 05004014 */  bnez       $v0, .L8005D520
    /* 4DD0C 8005D50C 02000224 */   addiu     $v0, $zero, 0x2
    /* 4DD10 8005D510 000062A0 */  sb         $v0, 0x0($v1)
    /* 4DD14 8005D514 1C000224 */  addiu      $v0, $zero, 0x1C
    /* 4DD18 8005D518 0C80013C */  lui        $at, %hi(D_800BBD81)
    /* 4DD1C 8005D51C 81BD22A0 */  sb         $v0, %lo(D_800BBD81)($at)
  .L8005D520:
    /* 4DD20 8005D520 0800E003 */  jr         $ra
    /* 4DD24 8005D524 00000000 */   nop
.size func_8005D4F8, . - func_8005D4F8
