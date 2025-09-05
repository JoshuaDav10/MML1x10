.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004ECD0
    /* 3F4D0 8004ECD0 55000224 */  addiu      $v0, $zero, 0x55
    /* 3F4D4 8004ECD4 1C00A210 */  beq        $a1, $v0, .L8004ED48
    /* 3F4D8 8004ECD8 21308000 */   addu      $a2, $a0, $zero
    /* 3F4DC 8004ECDC 0000C294 */  lhu        $v0, 0x0($a2)
    /* 3F4E0 8004ECE0 801F033C */  lui        $v1, (0x1F800126 >> 16)
    /* 3F4E4 8004ECE4 26016394 */  lhu        $v1, (0x1F800126 & 0xFFFF)($v1)
    /* 3F4E8 8004ECE8 00000000 */  nop
    /* 3F4EC 8004ECEC 23104300 */  subu       $v0, $v0, $v1
    /* 3F4F0 8004ECF0 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 3F4F4 8004ECF4 00140200 */  sll        $v0, $v0, 16
    /* 3F4F8 8004ECF8 035C0200 */  sra        $t3, $v0, 16
    /* 3F4FC 8004ECFC 0200C394 */  lhu        $v1, 0x2($a2)
    /* 3F500 8004ED00 801F043C */  lui        $a0, (0x1F800124 >> 16)
    /* 3F504 8004ED04 24018494 */  lhu        $a0, (0x1F800124 & 0xFFFF)($a0)
    /* 3F508 8004ED08 0400C294 */  lhu        $v0, 0x4($a2)
    /* 3F50C 8004ED0C 21186400 */  addu       $v1, $v1, $a0
    /* 3F510 8004ED10 0200C3A4 */  sh         $v1, 0x2($a2)
    /* 3F514 8004ED14 001C0300 */  sll        $v1, $v1, 16
    /* 3F518 8004ED18 036C0300 */  sra        $t5, $v1, 16
    /* 3F51C 8004ED1C 801F043C */  lui        $a0, (0x1F80012A >> 16)
    /* 3F520 8004ED20 2A018494 */  lhu        $a0, (0x1F80012A & 0xFFFF)($a0)
    /* 3F524 8004ED24 0600C394 */  lhu        $v1, 0x6($a2)
    /* 3F528 8004ED28 21104400 */  addu       $v0, $v0, $a0
    /* 3F52C 8004ED2C 0400C2A4 */  sh         $v0, 0x4($a2)
    /* 3F530 8004ED30 00140200 */  sll        $v0, $v0, 16
    /* 3F534 8004ED34 801F043C */  lui        $a0, (0x1F800128 >> 16)
    /* 3F538 8004ED38 28018494 */  lhu        $a0, (0x1F800128 & 0xFFFF)($a0)
    /* 3F53C 8004ED3C 033C0200 */  sra        $a3, $v0, 16
    /* 3F540 8004ED40 6C3B0108 */  j          .L8004EDB0
    /* 3F544 8004ED44 23186400 */   subu      $v1, $v1, $a0
  .L8004ED48:
    /* 3F548 8004ED48 0000C294 */  lhu        $v0, 0x0($a2)
    /* 3F54C 8004ED4C 801F033C */  lui        $v1, (0x1F800126 >> 16)
    /* 3F550 8004ED50 26016394 */  lhu        $v1, (0x1F800126 & 0xFFFF)($v1)
    /* 3F554 8004ED54 00000000 */  nop
    /* 3F558 8004ED58 21104300 */  addu       $v0, $v0, $v1
    /* 3F55C 8004ED5C 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 3F560 8004ED60 00140200 */  sll        $v0, $v0, 16
    /* 3F564 8004ED64 035C0200 */  sra        $t3, $v0, 16
    /* 3F568 8004ED68 0200C394 */  lhu        $v1, 0x2($a2)
    /* 3F56C 8004ED6C 801F043C */  lui        $a0, (0x1F800124 >> 16)
    /* 3F570 8004ED70 24018494 */  lhu        $a0, (0x1F800124 & 0xFFFF)($a0)
    /* 3F574 8004ED74 0400C294 */  lhu        $v0, 0x4($a2)
    /* 3F578 8004ED78 23186400 */  subu       $v1, $v1, $a0
    /* 3F57C 8004ED7C 0200C3A4 */  sh         $v1, 0x2($a2)
    /* 3F580 8004ED80 001C0300 */  sll        $v1, $v1, 16
    /* 3F584 8004ED84 036C0300 */  sra        $t5, $v1, 16
    /* 3F588 8004ED88 801F043C */  lui        $a0, (0x1F80012A >> 16)
    /* 3F58C 8004ED8C 2A018494 */  lhu        $a0, (0x1F80012A & 0xFFFF)($a0)
    /* 3F590 8004ED90 0600C394 */  lhu        $v1, 0x6($a2)
    /* 3F594 8004ED94 23104400 */  subu       $v0, $v0, $a0
    /* 3F598 8004ED98 0400C2A4 */  sh         $v0, 0x4($a2)
    /* 3F59C 8004ED9C 00140200 */  sll        $v0, $v0, 16
    /* 3F5A0 8004EDA0 801F043C */  lui        $a0, (0x1F800128 >> 16)
    /* 3F5A4 8004EDA4 28018494 */  lhu        $a0, (0x1F800128 & 0xFFFF)($a0)
    /* 3F5A8 8004EDA8 033C0200 */  sra        $a3, $v0, 16
    /* 3F5AC 8004EDAC 21186400 */  addu       $v1, $v1, $a0
  .L8004EDB0:
    /* 3F5B0 8004EDB0 00140300 */  sll        $v0, $v1, 16
    /* 3F5B4 8004EDB4 03540200 */  sra        $t2, $v0, 16
    /* 3F5B8 8004EDB8 0600C3A4 */  sh         $v1, 0x6($a2)
    /* 3F5BC 8004EDBC 801F0C3C */  lui        $t4, (0x1F8000C4 >> 16)
    /* 3F5C0 8004EDC0 C4008C85 */  lh         $t4, (0x1F8000C4 & 0xFFFF)($t4)
    /* 3F5C4 8004EDC4 2348AB01 */  subu       $t1, $t5, $t3
    /* 3F5C8 8004EDC8 23108701 */  subu       $v0, $t4, $a3
    /* 3F5CC 8004EDCC 18004900 */  mult       $v0, $t1
    /* 3F5D0 8004EDD0 12100000 */  mflo       $v0
    /* 3F5D4 8004EDD4 23284701 */  subu       $a1, $t2, $a3
    /* 3F5D8 8004EDD8 00000000 */  nop
    /* 3F5DC 8004EDDC 1A004500 */  div        $zero, $v0, $a1
    /* 3F5E0 8004EDE0 0200A014 */  bnez       $a1, .L8004EDEC
    /* 3F5E4 8004EDE4 00000000 */   nop
    /* 3F5E8 8004EDE8 0D000700 */  break      7
  .L8004EDEC:
    /* 3F5EC 8004EDEC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3F5F0 8004EDF0 0400A114 */  bne        $a1, $at, .L8004EE04
    /* 3F5F4 8004EDF4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3F5F8 8004EDF8 02004114 */  bne        $v0, $at, .L8004EE04
    /* 3F5FC 8004EDFC 00000000 */   nop
    /* 3F600 8004EE00 0D000600 */  break      6
  .L8004EE04:
    /* 3F604 8004EE04 12100000 */  mflo       $v0
    /* 3F608 8004EE08 801F033C */  lui        $v1, (0x1F8000C0 >> 16)
    /* 3F60C 8004EE0C 21106201 */  addu       $v0, $t3, $v0
    /* 3F610 8004EE10 FCFF4824 */  addiu      $t0, $v0, -0x4
    /* 3F614 8004EE14 2A100B01 */  slt        $v0, $t0, $t3
    /* 3F618 8004EE18 02004010 */  beqz       $v0, .L8004EE24
    /* 3F61C 8004EE1C C0006334 */   ori       $v1, $v1, (0x1F8000C0 & 0xFFFF)
    /* 3F620 8004EE20 21406001 */  addu       $t0, $t3, $zero
  .L8004EE24:
    /* 3F624 8004EE24 00006484 */  lh         $a0, 0x0($v1)
    /* 3F628 8004EE28 00000000 */  nop
    /* 3F62C 8004EE2C 23108B00 */  subu       $v0, $a0, $t3
    /* 3F630 8004EE30 18004500 */  mult       $v0, $a1
    /* 3F634 8004EE34 12100000 */  mflo       $v0
    /* 3F638 8004EE38 00000000 */  nop
    /* 3F63C 8004EE3C 00000000 */  nop
    /* 3F640 8004EE40 1A004900 */  div        $zero, $v0, $t1
    /* 3F644 8004EE44 02002015 */  bnez       $t1, .L8004EE50
    /* 3F648 8004EE48 00000000 */   nop
    /* 3F64C 8004EE4C 0D000700 */  break      7
  .L8004EE50:
    /* 3F650 8004EE50 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3F654 8004EE54 04002115 */  bne        $t1, $at, .L8004EE68
    /* 3F658 8004EE58 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3F65C 8004EE5C 02004114 */  bne        $v0, $at, .L8004EE68
    /* 3F660 8004EE60 00000000 */   nop
    /* 3F664 8004EE64 0D000600 */  break      6
  .L8004EE68:
    /* 3F668 8004EE68 12100000 */  mflo       $v0
    /* 3F66C 8004EE6C 00000000 */  nop
    /* 3F670 8004EE70 2110E200 */  addu       $v0, $a3, $v0
    /* 3F674 8004EE74 04004624 */  addiu      $a2, $v0, 0x4
    /* 3F678 8004EE78 2A104601 */  slt        $v0, $t2, $a2
    /* 3F67C 8004EE7C 02004010 */  beqz       $v0, .L8004EE88
    /* 3F680 8004EE80 2A100401 */   slt       $v0, $t0, $a0
    /* 3F684 8004EE84 21304001 */  addu       $a2, $t2, $zero
  .L8004EE88:
    /* 3F688 8004EE88 3E004010 */  beqz       $v0, .L8004EF84
    /* 3F68C 8004EE8C 2A108D00 */   slt       $v0, $a0, $t5
    /* 3F690 8004EE90 3C004010 */  beqz       $v0, .L8004EF84
    /* 3F694 8004EE94 2A10EC00 */   slt       $v0, $a3, $t4
    /* 3F698 8004EE98 3A004010 */  beqz       $v0, .L8004EF84
    /* 3F69C 8004EE9C 2A108601 */   slt       $v0, $t4, $a2
    /* 3F6A0 8004EEA0 39004010 */  beqz       $v0, .L8004EF88
    /* 3F6A4 8004EEA4 21100000 */   addu      $v0, $zero, $zero
    /* 3F6A8 8004EEA8 801F0A3C */  lui        $t2, (0x1F8000CC >> 16)
    /* 3F6AC 8004EEAC CC004A85 */  lh         $t2, (0x1F8000CC & 0xFFFF)($t2)
    /* 3F6B0 8004EEB0 00000000 */  nop
    /* 3F6B4 8004EEB4 23104701 */  subu       $v0, $t2, $a3
    /* 3F6B8 8004EEB8 18004900 */  mult       $v0, $t1
    /* 3F6BC 8004EEBC 12100000 */  mflo       $v0
    /* 3F6C0 8004EEC0 00000000 */  nop
    /* 3F6C4 8004EEC4 00000000 */  nop
    /* 3F6C8 8004EEC8 1A004500 */  div        $zero, $v0, $a1
    /* 3F6CC 8004EECC 0200A014 */  bnez       $a1, .L8004EED8
    /* 3F6D0 8004EED0 00000000 */   nop
    /* 3F6D4 8004EED4 0D000700 */  break      7
  .L8004EED8:
    /* 3F6D8 8004EED8 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3F6DC 8004EEDC 0400A114 */  bne        $a1, $at, .L8004EEF0
    /* 3F6E0 8004EEE0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3F6E4 8004EEE4 02004114 */  bne        $v0, $at, .L8004EEF0
    /* 3F6E8 8004EEE8 00000000 */   nop
    /* 3F6EC 8004EEEC 0D000600 */  break      6
  .L8004EEF0:
    /* 3F6F0 8004EEF0 12200000 */  mflo       $a0
    /* 3F6F4 8004EEF4 801F033C */  lui        $v1, (0x1F8000C8 >> 16)
    /* 3F6F8 8004EEF8 C8006384 */  lh         $v1, (0x1F8000C8 & 0xFFFF)($v1)
    /* 3F6FC 8004EEFC 00000000 */  nop
    /* 3F700 8004EF00 23106B00 */  subu       $v0, $v1, $t3
    /* 3F704 8004EF04 18004500 */  mult       $v0, $a1
    /* 3F708 8004EF08 12100000 */  mflo       $v0
    /* 3F70C 8004EF0C 00000000 */  nop
    /* 3F710 8004EF10 00000000 */  nop
    /* 3F714 8004EF14 1A004900 */  div        $zero, $v0, $t1
    /* 3F718 8004EF18 02002015 */  bnez       $t1, .L8004EF24
    /* 3F71C 8004EF1C 00000000 */   nop
    /* 3F720 8004EF20 0D000700 */  break      7
  .L8004EF24:
    /* 3F724 8004EF24 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3F728 8004EF28 04002115 */  bne        $t1, $at, .L8004EF3C
    /* 3F72C 8004EF2C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3F730 8004EF30 02004114 */  bne        $v0, $at, .L8004EF3C
    /* 3F734 8004EF34 00000000 */   nop
    /* 3F738 8004EF38 0D000600 */  break      6
  .L8004EF3C:
    /* 3F73C 8004EF3C 12100000 */  mflo       $v0
    /* 3F740 8004EF40 801F013C */  lui        $at, (0x1F8000F0 >> 16)
    /* 3F744 8004EF44 F00028A4 */  sh         $t0, (0x1F8000F0 & 0xFFFF)($at)
    /* 3F748 8004EF48 801F013C */  lui        $at, (0x1F8000F8 >> 16)
    /* 3F74C 8004EF4C F8002DA4 */  sh         $t5, (0x1F8000F8 & 0xFFFF)($at)
    /* 3F750 8004EF50 801F013C */  lui        $at, (0x1F8000F4 >> 16)
    /* 3F754 8004EF54 F40027A4 */  sh         $a3, (0x1F8000F4 & 0xFFFF)($at)
    /* 3F758 8004EF58 801F013C */  lui        $at, (0x1F8000FC >> 16)
    /* 3F75C 8004EF5C FC0026A4 */  sh         $a2, (0x1F8000FC & 0xFFFF)($at)
    /* 3F760 8004EF60 21406401 */  addu       $t0, $t3, $a0
    /* 3F764 8004EF64 2A180301 */  slt        $v1, $t0, $v1
    /* 3F768 8004EF68 04006014 */  bnez       $v1, .L8004EF7C
    /* 3F76C 8004EF6C 2130E200 */   addu      $a2, $a3, $v0
    /* 3F770 8004EF70 2A104601 */  slt        $v0, $t2, $a2
    /* 3F774 8004EF74 04004010 */  beqz       $v0, .L8004EF88
    /* 3F778 8004EF78 02000224 */   addiu     $v0, $zero, 0x2
  .L8004EF7C:
    /* 3F77C 8004EF7C E23B0108 */  j          .L8004EF88
    /* 3F780 8004EF80 01000224 */   addiu     $v0, $zero, 0x1
  .L8004EF84:
    /* 3F784 8004EF84 21100000 */  addu       $v0, $zero, $zero
  .L8004EF88:
    /* 3F788 8004EF88 0800E003 */  jr         $ra
    /* 3F78C 8004EF8C 00000000 */   nop
.size func_8004ECD0, . - func_8004ECD0
