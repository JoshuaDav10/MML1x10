.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001FCA4
    /* 104A4 8001FCA4 0C80033C */  lui        $v1, %hi(Game_work + 0x52)
    /* 104A8 8001FCA8 621B6380 */  lb         $v1, %lo(Game_work + 0x52)($v1)
    /* 104AC 8001FCAC 00000000 */  nop
    /* 104B0 8001FCB0 08006004 */  bltz       $v1, .L8001FCD4
    /* 104B4 8001FCB4 05006228 */   slti      $v0, $v1, 0x5
    /* 104B8 8001FCB8 07004014 */  bnez       $v0, .L8001FCD8
    /* 104BC 8001FCBC 85000224 */   addiu     $v0, $zero, 0x85
    /* 104C0 8001FCC0 05000224 */  addiu      $v0, $zero, 0x5
    /* 104C4 8001FCC4 04006210 */  beq        $v1, $v0, .L8001FCD8
    /* 104C8 8001FCC8 86000224 */   addiu     $v0, $zero, 0x86
    /* 104CC 8001FCCC 367F0008 */  j          .L8001FCD8
    /* 104D0 8001FCD0 87000224 */   addiu     $v0, $zero, 0x87
  .L8001FCD4:
    /* 104D4 8001FCD4 87000224 */  addiu      $v0, $zero, 0x87
  .L8001FCD8:
    /* 104D8 8001FCD8 F60982A7 */  sh         $v0, %gp_rel(D_8009825A)($gp)
    /* 104DC 8001FCDC 0800E003 */  jr         $ra
    /* 104E0 8001FCE0 00000000 */   nop
.size func_8001FCA4, . - func_8001FCA4
