.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001FD3C
    /* 1053C 8001FD3C 0C80033C */  lui        $v1, %hi(Game_work + 0x52)
    /* 10540 8001FD40 621B6380 */  lb         $v1, %lo(Game_work + 0x52)($v1)
    /* 10544 8001FD44 01000224 */  addiu      $v0, $zero, 0x1
    /* 10548 8001FD48 02006214 */  bne        $v1, $v0, .L8001FD54
    /* 1054C 8001FD4C 94000224 */   addiu     $v0, $zero, 0x94
    /* 10550 8001FD50 93000224 */  addiu      $v0, $zero, 0x93
  .L8001FD54:
    /* 10554 8001FD54 180A82A7 */  sh         $v0, %gp_rel(D_8009827C)($gp)
    /* 10558 8001FD58 0C80033C */  lui        $v1, %hi(Game_work + 0x52)
    /* 1055C 8001FD5C 621B6380 */  lb         $v1, %lo(Game_work + 0x52)($v1)
    /* 10560 8001FD60 00000000 */  nop
    /* 10564 8001FD64 06006004 */  bltz       $v1, .L8001FD80
    /* 10568 8001FD68 02006228 */   slti      $v0, $v1, 0x2
    /* 1056C 8001FD6C 05004014 */  bnez       $v0, .L8001FD84
    /* 10570 8001FD70 95000224 */   addiu     $v0, $zero, 0x95
    /* 10574 8001FD74 05006228 */  slti       $v0, $v1, 0x5
    /* 10578 8001FD78 02004014 */  bnez       $v0, .L8001FD84
    /* 1057C 8001FD7C 96000224 */   addiu     $v0, $zero, 0x96
  .L8001FD80:
    /* 10580 8001FD80 97000224 */  addiu      $v0, $zero, 0x97
  .L8001FD84:
    /* 10584 8001FD84 1A0A82A7 */  sh         $v0, %gp_rel(D_8009827E)($gp)
    /* 10588 8001FD88 0800E003 */  jr         $ra
    /* 1058C 8001FD8C 00000000 */   nop
.size func_8001FD3C, . - func_8001FD3C
