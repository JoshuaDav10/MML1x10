.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004E490
    /* 3EC90 8004E490 25000224 */  addiu      $v0, $zero, 0x25
    /* 3EC94 8004E494 1C00A210 */  beq        $a1, $v0, .L8004E508
    /* 3EC98 8004E498 21308000 */   addu      $a2, $a0, $zero
    /* 3EC9C 8004E49C 0000C294 */  lhu        $v0, 0x0($a2)
    /* 3ECA0 8004E4A0 801F033C */  lui        $v1, (0x1F800126 >> 16)
    /* 3ECA4 8004E4A4 26016394 */  lhu        $v1, (0x1F800126 & 0xFFFF)($v1)
    /* 3ECA8 8004E4A8 00000000 */  nop
    /* 3ECAC 8004E4AC 21104300 */  addu       $v0, $v0, $v1
    /* 3ECB0 8004E4B0 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 3ECB4 8004E4B4 00140200 */  sll        $v0, $v0, 16
    /* 3ECB8 8004E4B8 03540200 */  sra        $t2, $v0, 16
    /* 3ECBC 8004E4BC 0200C394 */  lhu        $v1, 0x2($a2)
    /* 3ECC0 8004E4C0 801F043C */  lui        $a0, (0x1F800124 >> 16)
    /* 3ECC4 8004E4C4 24018494 */  lhu        $a0, (0x1F800124 & 0xFFFF)($a0)
    /* 3ECC8 8004E4C8 0400C294 */  lhu        $v0, 0x4($a2)
    /* 3ECCC 8004E4CC 23186400 */  subu       $v1, $v1, $a0
    /* 3ECD0 8004E4D0 0200C3A4 */  sh         $v1, 0x2($a2)
    /* 3ECD4 8004E4D4 001C0300 */  sll        $v1, $v1, 16
    /* 3ECD8 8004E4D8 035C0300 */  sra        $t3, $v1, 16
    /* 3ECDC 8004E4DC 801F043C */  lui        $a0, (0x1F80012A >> 16)
    /* 3ECE0 8004E4E0 2A018494 */  lhu        $a0, (0x1F80012A & 0xFFFF)($a0)
    /* 3ECE4 8004E4E4 0600C394 */  lhu        $v1, 0x6($a2)
    /* 3ECE8 8004E4E8 23104400 */  subu       $v0, $v0, $a0
    /* 3ECEC 8004E4EC 0400C2A4 */  sh         $v0, 0x4($a2)
    /* 3ECF0 8004E4F0 00140200 */  sll        $v0, $v0, 16
    /* 3ECF4 8004E4F4 801F043C */  lui        $a0, (0x1F800128 >> 16)
    /* 3ECF8 8004E4F8 28018494 */  lhu        $a0, (0x1F800128 & 0xFFFF)($a0)
    /* 3ECFC 8004E4FC 033C0200 */  sra        $a3, $v0, 16
    /* 3ED00 8004E500 5C390108 */  j          .L8004E570
    /* 3ED04 8004E504 21186400 */   addu      $v1, $v1, $a0
  .L8004E508:
    /* 3ED08 8004E508 0000C294 */  lhu        $v0, 0x0($a2)
    /* 3ED0C 8004E50C 801F033C */  lui        $v1, (0x1F800126 >> 16)
    /* 3ED10 8004E510 26016394 */  lhu        $v1, (0x1F800126 & 0xFFFF)($v1)
    /* 3ED14 8004E514 00000000 */  nop
    /* 3ED18 8004E518 23104300 */  subu       $v0, $v0, $v1
    /* 3ED1C 8004E51C 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 3ED20 8004E520 00140200 */  sll        $v0, $v0, 16
    /* 3ED24 8004E524 03540200 */  sra        $t2, $v0, 16
    /* 3ED28 8004E528 0200C394 */  lhu        $v1, 0x2($a2)
    /* 3ED2C 8004E52C 801F043C */  lui        $a0, (0x1F800124 >> 16)
    /* 3ED30 8004E530 24018494 */  lhu        $a0, (0x1F800124 & 0xFFFF)($a0)
    /* 3ED34 8004E534 0400C294 */  lhu        $v0, 0x4($a2)
    /* 3ED38 8004E538 21186400 */  addu       $v1, $v1, $a0
    /* 3ED3C 8004E53C 0200C3A4 */  sh         $v1, 0x2($a2)
    /* 3ED40 8004E540 001C0300 */  sll        $v1, $v1, 16
    /* 3ED44 8004E544 035C0300 */  sra        $t3, $v1, 16
    /* 3ED48 8004E548 801F043C */  lui        $a0, (0x1F80012A >> 16)
    /* 3ED4C 8004E54C 2A018494 */  lhu        $a0, (0x1F80012A & 0xFFFF)($a0)
    /* 3ED50 8004E550 0600C394 */  lhu        $v1, 0x6($a2)
    /* 3ED54 8004E554 21104400 */  addu       $v0, $v0, $a0
    /* 3ED58 8004E558 0400C2A4 */  sh         $v0, 0x4($a2)
    /* 3ED5C 8004E55C 00140200 */  sll        $v0, $v0, 16
    /* 3ED60 8004E560 801F043C */  lui        $a0, (0x1F800128 >> 16)
    /* 3ED64 8004E564 28018494 */  lhu        $a0, (0x1F800128 & 0xFFFF)($a0)
    /* 3ED68 8004E568 033C0200 */  sra        $a3, $v0, 16
    /* 3ED6C 8004E56C 23186400 */  subu       $v1, $v1, $a0
  .L8004E570:
    /* 3ED70 8004E570 00140300 */  sll        $v0, $v1, 16
    /* 3ED74 8004E574 036C0200 */  sra        $t5, $v0, 16
    /* 3ED78 8004E578 0600C3A4 */  sh         $v1, 0x6($a2)
    /* 3ED7C 8004E57C 801F0C3C */  lui        $t4, (0x1F8000C4 >> 16)
    /* 3ED80 8004E580 C4008C85 */  lh         $t4, (0x1F8000C4 & 0xFFFF)($t4)
    /* 3ED84 8004E584 23486A01 */  subu       $t1, $t3, $t2
    /* 3ED88 8004E588 23108701 */  subu       $v0, $t4, $a3
    /* 3ED8C 8004E58C 18004900 */  mult       $v0, $t1
    /* 3ED90 8004E590 12100000 */  mflo       $v0
    /* 3ED94 8004E594 2328A701 */  subu       $a1, $t5, $a3
    /* 3ED98 8004E598 00000000 */  nop
    /* 3ED9C 8004E59C 1A004500 */  div        $zero, $v0, $a1
    /* 3EDA0 8004E5A0 0200A014 */  bnez       $a1, .L8004E5AC
    /* 3EDA4 8004E5A4 00000000 */   nop
    /* 3EDA8 8004E5A8 0D000700 */  break      7
  .L8004E5AC:
    /* 3EDAC 8004E5AC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3EDB0 8004E5B0 0400A114 */  bne        $a1, $at, .L8004E5C4
    /* 3EDB4 8004E5B4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3EDB8 8004E5B8 02004114 */  bne        $v0, $at, .L8004E5C4
    /* 3EDBC 8004E5BC 00000000 */   nop
    /* 3EDC0 8004E5C0 0D000600 */  break      6
  .L8004E5C4:
    /* 3EDC4 8004E5C4 12100000 */  mflo       $v0
    /* 3EDC8 8004E5C8 801F033C */  lui        $v1, (0x1F8000C0 >> 16)
    /* 3EDCC 8004E5CC 21104201 */  addu       $v0, $t2, $v0
    /* 3EDD0 8004E5D0 04004824 */  addiu      $t0, $v0, 0x4
    /* 3EDD4 8004E5D4 2A106801 */  slt        $v0, $t3, $t0
    /* 3EDD8 8004E5D8 02004010 */  beqz       $v0, .L8004E5E4
    /* 3EDDC 8004E5DC C0006334 */   ori       $v1, $v1, (0x1F8000C0 & 0xFFFF)
    /* 3EDE0 8004E5E0 21406001 */  addu       $t0, $t3, $zero
  .L8004E5E4:
    /* 3EDE4 8004E5E4 00006484 */  lh         $a0, 0x0($v1)
    /* 3EDE8 8004E5E8 00000000 */  nop
    /* 3EDEC 8004E5EC 23108A00 */  subu       $v0, $a0, $t2
    /* 3EDF0 8004E5F0 18004500 */  mult       $v0, $a1
    /* 3EDF4 8004E5F4 12100000 */  mflo       $v0
    /* 3EDF8 8004E5F8 00000000 */  nop
    /* 3EDFC 8004E5FC 00000000 */  nop
    /* 3EE00 8004E600 1A004900 */  div        $zero, $v0, $t1
    /* 3EE04 8004E604 02002015 */  bnez       $t1, .L8004E610
    /* 3EE08 8004E608 00000000 */   nop
    /* 3EE0C 8004E60C 0D000700 */  break      7
  .L8004E610:
    /* 3EE10 8004E610 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3EE14 8004E614 04002115 */  bne        $t1, $at, .L8004E628
    /* 3EE18 8004E618 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3EE1C 8004E61C 02004114 */  bne        $v0, $at, .L8004E628
    /* 3EE20 8004E620 00000000 */   nop
    /* 3EE24 8004E624 0D000600 */  break      6
  .L8004E628:
    /* 3EE28 8004E628 12100000 */  mflo       $v0
    /* 3EE2C 8004E62C 00000000 */  nop
    /* 3EE30 8004E630 2110E200 */  addu       $v0, $a3, $v0
    /* 3EE34 8004E634 FCFF4624 */  addiu      $a2, $v0, -0x4
    /* 3EE38 8004E638 2A10C700 */  slt        $v0, $a2, $a3
    /* 3EE3C 8004E63C 02004010 */  beqz       $v0, .L8004E648
    /* 3EE40 8004E640 2A104401 */   slt       $v0, $t2, $a0
    /* 3EE44 8004E644 2130E000 */  addu       $a2, $a3, $zero
  .L8004E648:
    /* 3EE48 8004E648 3E004010 */  beqz       $v0, .L8004E744
    /* 3EE4C 8004E64C 2A108800 */   slt       $v0, $a0, $t0
    /* 3EE50 8004E650 3C004010 */  beqz       $v0, .L8004E744
    /* 3EE54 8004E654 2A10CC00 */   slt       $v0, $a2, $t4
    /* 3EE58 8004E658 3A004010 */  beqz       $v0, .L8004E744
    /* 3EE5C 8004E65C 2A108D01 */   slt       $v0, $t4, $t5
    /* 3EE60 8004E660 39004010 */  beqz       $v0, .L8004E748
    /* 3EE64 8004E664 21100000 */   addu      $v0, $zero, $zero
    /* 3EE68 8004E668 801F0B3C */  lui        $t3, (0x1F8000CC >> 16)
    /* 3EE6C 8004E66C CC006B85 */  lh         $t3, (0x1F8000CC & 0xFFFF)($t3)
    /* 3EE70 8004E670 00000000 */  nop
    /* 3EE74 8004E674 23106701 */  subu       $v0, $t3, $a3
    /* 3EE78 8004E678 18004900 */  mult       $v0, $t1
    /* 3EE7C 8004E67C 12100000 */  mflo       $v0
    /* 3EE80 8004E680 00000000 */  nop
    /* 3EE84 8004E684 00000000 */  nop
    /* 3EE88 8004E688 1A004500 */  div        $zero, $v0, $a1
    /* 3EE8C 8004E68C 0200A014 */  bnez       $a1, .L8004E698
    /* 3EE90 8004E690 00000000 */   nop
    /* 3EE94 8004E694 0D000700 */  break      7
  .L8004E698:
    /* 3EE98 8004E698 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3EE9C 8004E69C 0400A114 */  bne        $a1, $at, .L8004E6B0
    /* 3EEA0 8004E6A0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3EEA4 8004E6A4 02004114 */  bne        $v0, $at, .L8004E6B0
    /* 3EEA8 8004E6A8 00000000 */   nop
    /* 3EEAC 8004E6AC 0D000600 */  break      6
  .L8004E6B0:
    /* 3EEB0 8004E6B0 12200000 */  mflo       $a0
    /* 3EEB4 8004E6B4 801F033C */  lui        $v1, (0x1F8000C8 >> 16)
    /* 3EEB8 8004E6B8 C8006384 */  lh         $v1, (0x1F8000C8 & 0xFFFF)($v1)
    /* 3EEBC 8004E6BC 00000000 */  nop
    /* 3EEC0 8004E6C0 23106A00 */  subu       $v0, $v1, $t2
    /* 3EEC4 8004E6C4 18004500 */  mult       $v0, $a1
    /* 3EEC8 8004E6C8 12100000 */  mflo       $v0
    /* 3EECC 8004E6CC 00000000 */  nop
    /* 3EED0 8004E6D0 00000000 */  nop
    /* 3EED4 8004E6D4 1A004900 */  div        $zero, $v0, $t1
    /* 3EED8 8004E6D8 02002015 */  bnez       $t1, .L8004E6E4
    /* 3EEDC 8004E6DC 00000000 */   nop
    /* 3EEE0 8004E6E0 0D000700 */  break      7
  .L8004E6E4:
    /* 3EEE4 8004E6E4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3EEE8 8004E6E8 04002115 */  bne        $t1, $at, .L8004E6FC
    /* 3EEEC 8004E6EC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3EEF0 8004E6F0 02004114 */  bne        $v0, $at, .L8004E6FC
    /* 3EEF4 8004E6F4 00000000 */   nop
    /* 3EEF8 8004E6F8 0D000600 */  break      6
  .L8004E6FC:
    /* 3EEFC 8004E6FC 12100000 */  mflo       $v0
    /* 3EF00 8004E700 801F013C */  lui        $at, (0x1F8000F0 >> 16)
    /* 3EF04 8004E704 F0002AA4 */  sh         $t2, (0x1F8000F0 & 0xFFFF)($at)
    /* 3EF08 8004E708 801F013C */  lui        $at, (0x1F8000F8 >> 16)
    /* 3EF0C 8004E70C F80028A4 */  sh         $t0, (0x1F8000F8 & 0xFFFF)($at)
    /* 3EF10 8004E710 801F013C */  lui        $at, (0x1F8000F4 >> 16)
    /* 3EF14 8004E714 F40026A4 */  sh         $a2, (0x1F8000F4 & 0xFFFF)($at)
    /* 3EF18 8004E718 801F013C */  lui        $at, (0x1F8000FC >> 16)
    /* 3EF1C 8004E71C FC002DA4 */  sh         $t5, (0x1F8000FC & 0xFFFF)($at)
    /* 3EF20 8004E720 21404401 */  addu       $t0, $t2, $a0
    /* 3EF24 8004E724 2A186800 */  slt        $v1, $v1, $t0
    /* 3EF28 8004E728 04006014 */  bnez       $v1, .L8004E73C
    /* 3EF2C 8004E72C 2130E200 */   addu      $a2, $a3, $v0
    /* 3EF30 8004E730 2A10CB00 */  slt        $v0, $a2, $t3
    /* 3EF34 8004E734 04004010 */  beqz       $v0, .L8004E748
    /* 3EF38 8004E738 02000224 */   addiu     $v0, $zero, 0x2
  .L8004E73C:
    /* 3EF3C 8004E73C D2390108 */  j          .L8004E748
    /* 3EF40 8004E740 01000224 */   addiu     $v0, $zero, 0x1
  .L8004E744:
    /* 3EF44 8004E744 21100000 */  addu       $v0, $zero, $zero
  .L8004E748:
    /* 3EF48 8004E748 0800E003 */  jr         $ra
    /* 3EF4C 8004E74C 00000000 */   nop
.size func_8004E490, . - func_8004E490
