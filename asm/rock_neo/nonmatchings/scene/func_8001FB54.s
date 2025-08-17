.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001FB54
    /* 10354 8001FB54 0C80033C */  lui        $v1, %hi(Game_work + 0x52)
    /* 10358 8001FB58 621B6380 */  lb         $v1, %lo(Game_work + 0x52)($v1)
    /* 1035C 8001FB5C 00000000 */  nop
    /* 10360 8001FB60 06006004 */  bltz       $v1, .L8001FB7C
    /* 10364 8001FB64 06006228 */   slti      $v0, $v1, 0x6
    /* 10368 8001FB68 05004014 */  bnez       $v0, .L8001FB80
    /* 1036C 8001FB6C 69000224 */   addiu     $v0, $zero, 0x69
    /* 10370 8001FB70 08006228 */  slti       $v0, $v1, 0x8
    /* 10374 8001FB74 02004014 */  bnez       $v0, .L8001FB80
    /* 10378 8001FB78 6A000224 */   addiu     $v0, $zero, 0x6A
  .L8001FB7C:
    /* 1037C 8001FB7C 6B000224 */  addiu      $v0, $zero, 0x6B
  .L8001FB80:
    /* 10380 8001FB80 AE0982A7 */  sh         $v0, %gp_rel(D_80098212)($gp)
    /* 10384 8001FB84 0800E003 */  jr         $ra
    /* 10388 8001FB88 00000000 */   nop
.size func_8001FB54, . - func_8001FB54
