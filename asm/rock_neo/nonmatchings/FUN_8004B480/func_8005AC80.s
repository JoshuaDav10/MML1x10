.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005AC80
    /* 4B480 8005AC80 286B0108 */  j          .L8005ACA0
    /* 4B484 8005AC84 9600A3A4 */   sh        $v1, 0x96($a1)
  .L8005AC88:
    /* 4B488 8005AC88 FFFF4234 */  ori        $v0, $v0, 0xFFFF
    /* 4B48C 8005AC8C 0000A38C */  lw         $v1, 0x0($a1)
    /* 4B490 8005AC90 0010043C */  lui        $a0, (0x10000000 >> 16)
    /* 4B494 8005AC94 25186400 */  or         $v1, $v1, $a0
    /* 4B498 8005AC98 24186200 */  and        $v1, $v1, $v0
    /* 4B49C 8005AC9C 0000A3AC */  sw         $v1, 0x0($a1)
  .L8005ACA0:
    /* 4B4A0 8005ACA0 0800E003 */  jr         $ra
    /* 4B4A4 8005ACA4 00000000 */   nop
.size func_8005AC80, . - func_8005AC80
