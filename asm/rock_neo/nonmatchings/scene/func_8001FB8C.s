.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001FB8C
    /* 1038C 8001FB8C 0C80033C */  lui        $v1, %hi(Game_work + 0x52)
    /* 10390 8001FB90 621B6380 */  lb         $v1, %lo(Game_work + 0x52)($v1)
    /* 10394 8001FB94 00000000 */  nop
    /* 10398 8001FB98 06006004 */  bltz       $v1, .L8001FBB4
    /* 1039C 8001FB9C 02006228 */   slti      $v0, $v1, 0x2
    /* 103A0 8001FBA0 05004014 */  bnez       $v0, .L8001FBB8
    /* 103A4 8001FBA4 76000224 */   addiu     $v0, $zero, 0x76
    /* 103A8 8001FBA8 06006228 */  slti       $v0, $v1, 0x6
    /* 103AC 8001FBAC 02004014 */  bnez       $v0, .L8001FBB8
    /* 103B0 8001FBB0 77000224 */   addiu     $v0, $zero, 0x77
  .L8001FBB4:
    /* 103B4 8001FBB4 78000224 */  addiu      $v0, $zero, 0x78
  .L8001FBB8:
    /* 103B8 8001FBB8 D20982A7 */  sh         $v0, %gp_rel(D_80098236)($gp)
    /* 103BC 8001FBBC 0800E003 */  jr         $ra
    /* 103C0 8001FBC0 00000000 */   nop
.size func_8001FB8C, . - func_8001FB8C
