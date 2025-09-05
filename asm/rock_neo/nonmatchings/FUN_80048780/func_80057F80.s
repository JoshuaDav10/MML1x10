.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057F80
    /* 48780 80057F80 060062A0 */  sb         $v0, 0x6($v1)
    /* 48784 80057F84 1400038E */  lw         $v1, 0x14($s0)
    /* 48788 80057F88 0980023C */  lui        $v0, %hi(D_80097FF8)
    /* 4878C 80057F8C F87F4290 */  lbu        $v0, %lo(D_80097FF8)($v0)
    /* 48790 80057F90 00000000 */  nop
    /* 48794 80057F94 070062A0 */  sb         $v0, 0x7($v1)
    /* 48798 80057F98 1400038E */  lw         $v1, 0x14($s0)
    /* 4879C 80057F9C 0980023C */  lui        $v0, %hi(D_80097FF9)
    /* 487A0 80057FA0 F97F4290 */  lbu        $v0, %lo(D_80097FF9)($v0)
    /* 487A4 80057FA4 00000000 */  nop
    /* 487A8 80057FA8 080062A0 */  sb         $v0, 0x8($v1)
    /* 487AC 80057FAC 1400038E */  lw         $v1, 0x14($s0)
    /* 487B0 80057FB0 0980023C */  lui        $v0, %hi(D_80097FFA)
    /* 487B4 80057FB4 FA7F4290 */  lbu        $v0, %lo(D_80097FFA)($v0)
    /* 487B8 80057FB8 00000000 */  nop
    /* 487BC 80057FBC 090062A0 */  sb         $v0, 0x9($v1)
    /* 487C0 80057FC0 1400038E */  lw         $v1, 0x14($s0)
    /* 487C4 80057FC4 0980023C */  lui        $v0, %hi(D_80097FFB)
    /* 487C8 80057FC8 FB7F4290 */  lbu        $v0, %lo(D_80097FFB)($v0)
    /* 487CC 80057FCC 00000000 */  nop
    /* 487D0 80057FD0 0A0062A0 */  sb         $v0, 0xA($v1)
  .L80057FD4:
    /* 487D4 80057FD4 1400028E */  lw         $v0, 0x14($s0)
    /* 487D8 80057FD8 00000000 */  nop
    /* 487DC 80057FDC 03004224 */  addiu      $v0, $v0, 0x3
    /* 487E0 80057FE0 140002AE */  sw         $v0, 0x14($s0)
    /* 487E4 80057FE4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 487E8 80057FE8 1000B08F */  lw         $s0, 0x10($sp)
    /* 487EC 80057FEC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 487F0 80057FF0 0800E003 */  jr         $ra
    /* 487F4 80057FF4 00000000 */   nop
.size func_80057F80, . - func_80057F80
