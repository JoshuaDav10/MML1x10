.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L8004FF64
    /* 40764 8004FF64 0000E284 */  lh         $v0, 0x0($a3)
    /* 40768 8004FF68 801F033C */  lui        $v1, (0x1F8000F8 >> 16)
    /* 4076C 8004FF6C F8006384 */  lh         $v1, (0x1F8000F8 & 0xFFFF)($v1)
    /* 40770 8004FF70 E23F0108 */  j          .L8004FF88
    /* 40774 8004FF74 FCFF4224 */   addiu     $v0, $v0, -0x4
  .L8004FF78:
    /* 40778 8004FF78 0000E284 */  lh         $v0, 0x0($a3)
    /* 4077C 8004FF7C 801F033C */  lui        $v1, (0x1F8000F0 >> 16)
    /* 40780 8004FF80 F0006384 */  lh         $v1, (0x1F8000F0 & 0xFFFF)($v1)
    /* 40784 8004FF84 04004224 */  addiu      $v0, $v0, 0x4
  .L8004FF88:
    /* 40788 8004FF88 23306200 */  subu       $a2, $v1, $v0
    /* 4078C 8004FF8C 0400E284 */  lh         $v0, 0x4($a3)
    /* 40790 8004FF90 801F033C */  lui        $v1, (0x1F8000F4 >> 16)
    /* 40794 8004FF94 F4006384 */  lh         $v1, (0x1F8000F4 & 0xFFFF)($v1)
    /* 40798 8004FF98 F63F0108 */  j          .L8004FFD8
    /* 4079C 8004FF9C 04004224 */   addiu     $v0, $v0, 0x4
  .L8004FFA0:
    /* 407A0 8004FFA0 0000E284 */  lh         $v0, 0x0($a3)
    /* 407A4 8004FFA4 801F033C */  lui        $v1, (0x1F8000F8 >> 16)
    /* 407A8 8004FFA8 F8006384 */  lh         $v1, (0x1F8000F8 & 0xFFFF)($v1)
    /* 407AC 8004FFAC F13F0108 */  j          .L8004FFC4
    /* 407B0 8004FFB0 FCFF4224 */   addiu     $v0, $v0, -0x4
  .L8004FFB4:
    /* 407B4 8004FFB4 0000E284 */  lh         $v0, 0x0($a3)
    /* 407B8 8004FFB8 801F033C */  lui        $v1, (0x1F8000F0 >> 16)
    /* 407BC 8004FFBC F0006384 */  lh         $v1, (0x1F8000F0 & 0xFFFF)($v1)
    /* 407C0 8004FFC0 04004224 */  addiu      $v0, $v0, 0x4
  .L8004FFC4:
    /* 407C4 8004FFC4 23306200 */  subu       $a2, $v1, $v0
    /* 407C8 8004FFC8 0400E284 */  lh         $v0, 0x4($a3)
    /* 407CC 8004FFCC 801F033C */  lui        $v1, (0x1F8000FC >> 16)
    /* 407D0 8004FFD0 FC006384 */  lh         $v1, (0x1F8000FC & 0xFFFF)($v1)
    /* 407D4 8004FFD4 FCFF4224 */  addiu      $v0, $v0, -0x4
  .L8004FFD8:
    /* 407D8 8004FFD8 23206200 */  subu       $a0, $v1, $v0
    /* 407DC 8004FFDC 1800C400 */  mult       $a2, $a0
    /* 407E0 8004FFE0 12180000 */  mflo       $v1
    /* 407E4 8004FFE4 00000000 */  nop
    /* 407E8 8004FFE8 00000000 */  nop
    /* 407EC 8004FFEC 1800C600 */  mult       $a2, $a2
    /* 407F0 8004FFF0 12100000 */  mflo       $v0
    /* 407F4 8004FFF4 00000000 */  nop
    /* 407F8 8004FFF8 00000000 */  nop
    /* 407FC 8004FFFC 18008400 */  mult       $a0, $a0
.size .L8004FF64, . - .L8004FF64
