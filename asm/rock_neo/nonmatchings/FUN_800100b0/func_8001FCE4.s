.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001FCE4
    /* 104E4 8001FCE4 0C80033C */  lui        $v1, %hi(Game_work + 0x52)
    /* 104E8 8001FCE8 621B6380 */  lb         $v1, %lo(Game_work + 0x52)($v1)
    /* 104EC 8001FCEC 00000000 */  nop
    /* 104F0 8001FCF0 0800622C */  sltiu      $v0, $v1, 0x8
    /* 104F4 8001FCF4 0D004010 */  beqz       $v0, .L8001FD2C
    /* 104F8 8001FCF8 80100300 */   sll       $v0, $v1, 2
    /* 104FC 8001FCFC 0180013C */  lui        $at, %hi(jtbl_80010920)
    /* 10500 8001FD00 21082200 */  addu       $at, $at, $v0
    /* 10504 8001FD04 2009228C */  lw         $v0, %lo(jtbl_80010920)($at)
    /* 10508 8001FD08 00000000 */  nop
    /* 1050C 8001FD0C 08004000 */  jr         $v0
    /* 10510 8001FD10 00000000 */   nop
  glabel .L8001FD14
    /* 10514 8001FD14 4C7F0008 */  j          .L8001FD30
    /* 10518 8001FD18 8E000224 */   addiu     $v0, $zero, 0x8E
  glabel .L8001FD1C
    /* 1051C 8001FD1C 4C7F0008 */  j          .L8001FD30
    /* 10520 8001FD20 8F000224 */   addiu     $v0, $zero, 0x8F
  glabel .L8001FD24
    /* 10524 8001FD24 4C7F0008 */  j          .L8001FD30
    /* 10528 8001FD28 90000224 */   addiu     $v0, $zero, 0x90
  .L8001FD2C:
    /* 1052C 8001FD2C 91000224 */  addiu      $v0, $zero, 0x91
  .L8001FD30:
    /* 10530 8001FD30 120A82A7 */  sh         $v0, %gp_rel(D_80098276)($gp)
    /* 10534 8001FD34 0800E003 */  jr         $ra
    /* 10538 8001FD38 00000000 */   nop
.size func_8001FCE4, . - func_8001FCE4
