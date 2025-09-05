.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80053A54
    /* 44254 80053A54 0000628C */  lw         $v0, 0x0($v1)
    /* 44258 80053A58 000060AC */  sw         $zero, 0x0($v1)
    /* 4425C 80053A5C C20066A4 */  sh         $a2, 0xC2($v1)
    /* 44260 80053A60 C4006324 */  addiu      $v1, $v1, 0xC4
    /* 44264 80053A64 25208200 */  or         $a0, $a0, $v0
    /* 44268 80053A68 2B106500 */  sltu       $v0, $v1, $a1
    /* 4426C 80053A6C F9FF4014 */  bnez       $v0, func_80053A54
    /* 44270 80053A70 00000000 */   nop
  .L80053A74:
    /* 44274 80053A74 0400023C */  lui        $v0, (0x40000 >> 16)
    /* 44278 80053A78 24108200 */  and        $v0, $a0, $v0
    /* 4427C 80053A7C 04004010 */  beqz       $v0, .L80053A90
    /* 44280 80053A80 21200000 */   addu      $a0, $zero, $zero
    /* 44284 80053A84 01000524 */  addiu      $a1, $zero, 0x1
    /* 44288 80053A88 2575000C */  jal        func_8001D494
    /* 4428C 80053A8C 21300000 */   addu      $a2, $zero, $zero
  .L80053A90:
    /* 44290 80053A90 F41180AF */  sw         $zero, %gp_rel(Moji_flag)($gp)
    /* 44294 80053A94 1000BF8F */  lw         $ra, 0x10($sp)
    /* 44298 80053A98 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4429C 80053A9C 0800E003 */  jr         $ra
    /* 442A0 80053AA0 00000000 */   nop
.size func_80053A54, . - func_80053A54
