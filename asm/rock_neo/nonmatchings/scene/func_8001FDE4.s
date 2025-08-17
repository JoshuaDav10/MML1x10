.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001FDE4
    /* 105E4 8001FDE4 0C80033C */  lui        $v1, %hi(Game_work + 0x52)
    /* 105E8 8001FDE8 621B6380 */  lb         $v1, %lo(Game_work + 0x52)($v1)
    /* 105EC 8001FDEC 04000224 */  addiu      $v0, $zero, 0x4
    /* 105F0 8001FDF0 0B006210 */  beq        $v1, $v0, .L8001FE20
    /* 105F4 8001FDF4 05006228 */   slti      $v0, $v1, 0x5
    /* 105F8 8001FDF8 05004014 */  bnez       $v0, .L8001FE10
    /* 105FC 8001FDFC 0B000224 */   addiu     $v0, $zero, 0xB
    /* 10600 8001FE00 08006210 */  beq        $v1, $v0, .L8001FE24
    /* 10604 8001FE04 C4000224 */   addiu     $v0, $zero, 0xC4
    /* 10608 8001FE08 8C7F0008 */  j          .L8001FE30
    /* 1060C 8001FE0C 00000000 */   nop
  .L8001FE10:
    /* 10610 8001FE10 07006004 */  bltz       $v1, .L8001FE30
    /* 10614 8001FE14 C3000224 */   addiu     $v0, $zero, 0xC3
    /* 10618 8001FE18 897F0008 */  j          .L8001FE24
    /* 1061C 8001FE1C 00000000 */   nop
  .L8001FE20:
    /* 10620 8001FE20 C4000224 */  addiu      $v0, $zero, 0xC4
  .L8001FE24:
    /* 10624 8001FE24 9A0A82A7 */  sh         $v0, %gp_rel(D_800982FE)($gp)
    /* 10628 8001FE28 980A82A7 */  sh         $v0, %gp_rel(D_800982FC)($gp)
    /* 1062C 8001FE2C 960A82A7 */  sh         $v0, %gp_rel(D_800982FA)($gp)
  .L8001FE30:
    /* 10630 8001FE30 0800E003 */  jr         $ra
    /* 10634 8001FE34 00000000 */   nop
.size func_8001FDE4, . - func_8001FDE4
