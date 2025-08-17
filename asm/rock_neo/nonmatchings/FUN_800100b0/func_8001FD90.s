.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001FD90
    /* 10590 8001FD90 0C80033C */  lui        $v1, %hi(Game_work + 0x52)
    /* 10594 8001FD94 621B6380 */  lb         $v1, %lo(Game_work + 0x52)($v1)
    /* 10598 8001FD98 01000224 */  addiu      $v0, $zero, 0x1
    /* 1059C 8001FD9C 02006214 */  bne        $v1, $v0, .L8001FDA8
    /* 105A0 8001FDA0 9E000224 */   addiu     $v0, $zero, 0x9E
    /* 105A4 8001FDA4 9D000224 */  addiu      $v0, $zero, 0x9D
  .L8001FDA8:
    /* 105A8 8001FDA8 280A82A7 */  sh         $v0, %gp_rel(D_8009828C)($gp)
    /* 105AC 8001FDAC 0C80033C */  lui        $v1, %hi(Game_work + 0x52)
    /* 105B0 8001FDB0 621B6380 */  lb         $v1, %lo(Game_work + 0x52)($v1)
    /* 105B4 8001FDB4 00000000 */  nop
    /* 105B8 8001FDB8 06006004 */  bltz       $v1, .L8001FDD4
    /* 105BC 8001FDBC 02006228 */   slti      $v0, $v1, 0x2
    /* 105C0 8001FDC0 05004014 */  bnez       $v0, .L8001FDD8
    /* 105C4 8001FDC4 9F000224 */   addiu     $v0, $zero, 0x9F
    /* 105C8 8001FDC8 05006228 */  slti       $v0, $v1, 0x5
    /* 105CC 8001FDCC 02004014 */  bnez       $v0, .L8001FDD8
    /* 105D0 8001FDD0 A0000224 */   addiu     $v0, $zero, 0xA0
  .L8001FDD4:
    /* 105D4 8001FDD4 A1000224 */  addiu      $v0, $zero, 0xA1
  .L8001FDD8:
    /* 105D8 8001FDD8 2A0A82A7 */  sh         $v0, %gp_rel(D_8009828E)($gp)
    /* 105DC 8001FDDC 0800E003 */  jr         $ra
    /* 105E0 8001FDE0 00000000 */   nop
.size func_8001FD90, . - func_8001FD90
