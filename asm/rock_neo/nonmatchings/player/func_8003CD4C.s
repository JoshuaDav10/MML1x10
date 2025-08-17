.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003CD4C
    /* 2D54C 8003CD4C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2D550 8003CD50 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2D554 8003CD54 21808000 */  addu       $s0, $a0, $zero
    /* 2D558 8003CD58 1800BFAF */  sw         $ra, 0x18($sp)
    /* 2D55C 8003CD5C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2D560 8003CD60 0A000392 */  lbu        $v1, 0xA($s0)
    /* 2D564 8003CD64 00000000 */  nop
    /* 2D568 8003CD68 0700622C */  sltiu      $v0, $v1, 0x7
    /* 2D56C 8003CD6C E7004010 */  beqz       $v0, .L8003D10C
    /* 2D570 8003CD70 21880000 */   addu      $s1, $zero, $zero
    /* 2D574 8003CD74 80100300 */  sll        $v0, $v1, 2
    /* 2D578 8003CD78 0180013C */  lui        $at, %hi(jtbl_80010B6C)
    /* 2D57C 8003CD7C 21082200 */  addu       $at, $at, $v0
    /* 2D580 8003CD80 6C0B228C */  lw         $v0, %lo(jtbl_80010B6C)($at)
    /* 2D584 8003CD84 00000000 */  nop
    /* 2D588 8003CD88 08004000 */  jr         $v0
    /* 2D58C 8003CD8C 00000000 */   nop
  glabel .L8003CD90
    /* 2D590 8003CD90 12010382 */  lb         $v1, 0x112($s0)
    /* 2D594 8003CD94 01000424 */  addiu      $a0, $zero, 0x1
    /* 2D598 8003CD98 21006410 */  beq        $v1, $a0, .L8003CE20
    /* 2D59C 8003CD9C 02006228 */   slti      $v0, $v1, 0x2
    /* 2D5A0 8003CDA0 05004010 */  beqz       $v0, .L8003CDB8
    /* 2D5A4 8003CDA4 02000524 */   addiu     $a1, $zero, 0x2
    /* 2D5A8 8003CDA8 09006010 */  beqz       $v1, .L8003CDD0
    /* 2D5AC 8003CDAC 00000000 */   nop
    /* 2D5B0 8003CDB0 BAF30008 */  j          .L8003CEE8
    /* 2D5B4 8003CDB4 21200002 */   addu      $a0, $s0, $zero
  .L8003CDB8:
    /* 2D5B8 8003CDB8 2A006510 */  beq        $v1, $a1, .L8003CE64
    /* 2D5BC 8003CDBC 03000224 */   addiu     $v0, $zero, 0x3
    /* 2D5C0 8003CDC0 38006210 */  beq        $v1, $v0, .L8003CEA4
    /* 2D5C4 8003CDC4 00FC0224 */   addiu     $v0, $zero, -0x400
    /* 2D5C8 8003CDC8 BAF30008 */  j          .L8003CEE8
    /* 2D5CC 8003CDCC 21200002 */   addu      $a0, $s0, $zero
  .L8003CDD0:
    /* 2D5D0 8003CDD0 13010382 */  lb         $v1, 0x113($s0)
    /* 2D5D4 8003CDD4 00000000 */  nop
    /* 2D5D8 8003CDD8 30006410 */  beq        $v1, $a0, .L8003CE9C
    /* 2D5DC 8003CDDC 160100A6 */   sh        $zero, 0x116($s0)
    /* 2D5E0 8003CDE0 02006228 */  slti       $v0, $v1, 0x2
    /* 2D5E4 8003CDE4 05004010 */  beqz       $v0, .L8003CDFC
    /* 2D5E8 8003CDE8 00000000 */   nop
    /* 2D5EC 8003CDEC 0A006010 */  beqz       $v1, .L8003CE18
    /* 2D5F0 8003CDF0 00000000 */   nop
    /* 2D5F4 8003CDF4 BAF30008 */  j          .L8003CEE8
    /* 2D5F8 8003CDF8 21200002 */   addu      $a0, $s0, $zero
  .L8003CDFC:
    /* 2D5FC 8003CDFC 02000224 */  addiu      $v0, $zero, 0x2
    /* 2D600 8003CE00 16006210 */  beq        $v1, $v0, .L8003CE5C
    /* 2D604 8003CE04 03000224 */   addiu     $v0, $zero, 0x3
    /* 2D608 8003CE08 33006210 */  beq        $v1, $v0, .L8003CED8
    /* 2D60C 8003CE0C 00000000 */   nop
    /* 2D610 8003CE10 BAF30008 */  j          .L8003CEE8
    /* 2D614 8003CE14 21200002 */   addu      $a0, $s0, $zero
  .L8003CE18:
    /* 2D618 8003CE18 B9F30008 */  j          .L8003CEE4
    /* 2D61C 8003CE1C 04001124 */   addiu     $s1, $zero, 0x4
  .L8003CE20:
    /* 2D620 8003CE20 13010382 */  lb         $v1, 0x113($s0)
    /* 2D624 8003CE24 00040224 */  addiu      $v0, $zero, 0x400
    /* 2D628 8003CE28 160102A6 */  sh         $v0, 0x116($s0)
    /* 2D62C 8003CE2C 02000224 */  addiu      $v0, $zero, 0x2
    /* 2D630 8003CE30 1A006210 */  beq        $v1, $v0, .L8003CE9C
    /* 2D634 8003CE34 03006228 */   slti      $v0, $v1, 0x3
    /* 2D638 8003CE38 05004010 */  beqz       $v0, .L8003CE50
    /* 2D63C 8003CE3C 00000000 */   nop
    /* 2D640 8003CE40 25006010 */  beqz       $v1, .L8003CED8
    /* 2D644 8003CE44 00000000 */   nop
    /* 2D648 8003CE48 B7F30008 */  j          .L8003CEDC
    /* 2D64C 8003CE4C 00000000 */   nop
  .L8003CE50:
    /* 2D650 8003CE50 03000224 */  addiu      $v0, $zero, 0x3
    /* 2D654 8003CE54 21006214 */  bne        $v1, $v0, .L8003CEDC
    /* 2D658 8003CE58 00000000 */   nop
  .L8003CE5C:
    /* 2D65C 8003CE5C B7F30008 */  j          .L8003CEDC
    /* 2D660 8003CE60 09001124 */   addiu     $s1, $zero, 0x9
  .L8003CE64:
    /* 2D664 8003CE64 13010382 */  lb         $v1, 0x113($s0)
    /* 2D668 8003CE68 00080224 */  addiu      $v0, $zero, 0x800
    /* 2D66C 8003CE6C 1A006410 */  beq        $v1, $a0, .L8003CED8
    /* 2D670 8003CE70 160102A6 */   sh        $v0, 0x116($s0)
    /* 2D674 8003CE74 02006228 */  slti       $v0, $v1, 0x2
    /* 2D678 8003CE78 05004010 */  beqz       $v0, .L8003CE90
    /* 2D67C 8003CE7C 00000000 */   nop
    /* 2D680 8003CE80 F6FF6010 */  beqz       $v1, .L8003CE5C
    /* 2D684 8003CE84 00000000 */   nop
    /* 2D688 8003CE88 B7F30008 */  j          .L8003CEDC
    /* 2D68C 8003CE8C 00000000 */   nop
  .L8003CE90:
    /* 2D690 8003CE90 03000224 */  addiu      $v0, $zero, 0x3
    /* 2D694 8003CE94 11006214 */  bne        $v1, $v0, .L8003CEDC
    /* 2D698 8003CE98 00000000 */   nop
  .L8003CE9C:
    /* 2D69C 8003CE9C B7F30008 */  j          .L8003CEDC
    /* 2D6A0 8003CEA0 05001124 */   addiu     $s1, $zero, 0x5
  .L8003CEA4:
    /* 2D6A4 8003CEA4 13010382 */  lb         $v1, 0x113($s0)
    /* 2D6A8 8003CEA8 00000000 */  nop
    /* 2D6AC 8003CEAC EBFF6410 */  beq        $v1, $a0, .L8003CE5C
    /* 2D6B0 8003CEB0 160102A6 */   sh        $v0, 0x116($s0)
    /* 2D6B4 8003CEB4 02006228 */  slti       $v0, $v1, 0x2
    /* 2D6B8 8003CEB8 05004010 */  beqz       $v0, .L8003CED0
    /* 2D6BC 8003CEBC 00000000 */   nop
    /* 2D6C0 8003CEC0 F6FF6010 */  beqz       $v1, .L8003CE9C
    /* 2D6C4 8003CEC4 00000000 */   nop
    /* 2D6C8 8003CEC8 B7F30008 */  j          .L8003CEDC
    /* 2D6CC 8003CECC 00000000 */   nop
  .L8003CED0:
    /* 2D6D0 8003CED0 02006514 */  bne        $v1, $a1, .L8003CEDC
    /* 2D6D4 8003CED4 00000000 */   nop
  .L8003CED8:
    /* 2D6D8 8003CED8 07001124 */  addiu      $s1, $zero, 0x7
  .L8003CEDC:
    /* 2D6DC 8003CEDC E808010C */  jal        Pl00_shot_enable_off
    /* 2D6E0 8003CEE0 21200002 */   addu      $a0, $s0, $zero
  .L8003CEE4:
    /* 2D6E4 8003CEE4 21200002 */  addu       $a0, $s0, $zero
  .L8003CEE8:
    /* 2D6E8 8003CEE8 21282002 */  addu       $a1, $s1, $zero
    /* 2D6EC 8003CEEC 21300000 */  addu       $a2, $zero, $zero
    /* 2D6F0 8003CEF0 00020224 */  addiu      $v0, $zero, 0x200
    /* 2D6F4 8003CEF4 440002A6 */  sh         $v0, 0x44($s0)
    /* 2D6F8 8003CEF8 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2D6FC 8003CEFC 74010392 */  lbu        $v1, 0x174($s0)
    /* 2D700 8003CF00 01000724 */  addiu      $a3, $zero, 0x1
    /* 2D704 8003CF04 130100A2 */  sb         $zero, 0x113($s0)
    /* 2D708 8003CF08 02004224 */  addiu      $v0, $v0, 0x2
    /* 2D70C 8003CF0C 04006334 */  ori        $v1, $v1, 0x4
    /* 2D710 8003CF10 0A0002A2 */  sb         $v0, 0xA($s0)
    /* 2D714 8003CF14 E4F30008 */  j          .L8003CF90
    /* 2D718 8003CF18 740103A2 */   sb        $v1, 0x174($s0)
  glabel .L8003CF1C
    /* 2D71C 8003CF1C A4000392 */  lbu        $v1, 0xA4($s0)
    /* 2D720 8003CF20 01000224 */  addiu      $v0, $zero, 0x1
    /* 2D724 8003CF24 79006214 */  bne        $v1, $v0, .L8003D10C
    /* 2D728 8003CF28 00000000 */   nop
    /* 2D72C 8003CF2C 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2D730 8003CF30 00000000 */  nop
    /* 2D734 8003CF34 01004224 */  addiu      $v0, $v0, 0x1
    /* 2D738 8003CF38 43F40008 */  j          .L8003D10C
    /* 2D73C 8003CF3C 0A0002A2 */   sb        $v0, 0xA($s0)
  glabel .L8003CF40
    /* 2D740 8003CF40 A7000382 */  lb         $v1, 0xA7($s0)
    /* 2D744 8003CF44 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2D748 8003CF48 13006214 */  bne        $v1, $v0, .L8003CF98
    /* 2D74C 8003CF4C 21200002 */   addu      $a0, $s0, $zero
    /* 2D750 8003CF50 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2D754 8003CF54 01000324 */  addiu      $v1, $zero, 0x1
    /* 2D758 8003CF58 4D0403A2 */  sb         $v1, 0x44D($s0)
    /* 2D75C 8003CF5C 02004224 */  addiu      $v0, $v0, 0x2
    /* 2D760 8003CF60 F208010C */  jal        Pl00_shot_enable_on
    /* 2D764 8003CF64 0A0002A2 */   sb        $v0, 0xA($s0)
    /* 2D768 8003CF68 12010382 */  lb         $v1, 0x112($s0)
    /* 2D76C 8003CF6C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2D770 8003CF70 04006210 */  beq        $v1, $v0, .L8003CF84
    /* 2D774 8003CF74 21200002 */   addu      $a0, $s0, $zero
    /* 2D778 8003CF78 01000524 */  addiu      $a1, $zero, 0x1
    /* 2D77C 8003CF7C E3F30008 */  j          .L8003CF8C
    /* 2D780 8003CF80 21300000 */   addu      $a2, $zero, $zero
  .L8003CF84:
    /* 2D784 8003CF84 01000524 */  addiu      $a1, $zero, 0x1
    /* 2D788 8003CF88 09000624 */  addiu      $a2, $zero, 0x9
  .L8003CF8C:
    /* 2D78C 8003CF8C 21380000 */  addu       $a3, $zero, $zero
  .L8003CF90:
    /* 2D790 8003CF90 7707010C */  jal        func_80041DDC
    /* 2D794 8003CF94 00000000 */   nop
  .L8003CF98:
    /* 2D798 8003CF98 12010582 */  lb         $a1, 0x112($s0)
    /* 2D79C 8003CF9C 49F4000C */  jal        func_8003D124
    /* 2D7A0 8003CFA0 21200002 */   addu      $a0, $s0, $zero
    /* 2D7A4 8003CFA4 43F40008 */  j          .L8003D10C
    /* 2D7A8 8003CFA8 00000000 */   nop
  glabel .L8003CFAC
    /* 2D7AC 8003CFAC A4000392 */  lbu        $v1, 0xA4($s0)
    /* 2D7B0 8003CFB0 05000224 */  addiu      $v0, $zero, 0x5
    /* 2D7B4 8003CFB4 05006214 */  bne        $v1, $v0, .L8003CFCC
    /* 2D7B8 8003CFB8 01000324 */   addiu     $v1, $zero, 0x1
    /* 2D7BC 8003CFBC 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2D7C0 8003CFC0 4D0403A2 */  sb         $v1, 0x44D($s0)
    /* 2D7C4 8003CFC4 01004224 */  addiu      $v0, $v0, 0x1
    /* 2D7C8 8003CFC8 0A0002A2 */  sb         $v0, 0xA($s0)
  glabel .L8003CFCC
    /* 2D7CC 8003CFCC 21200002 */  addu       $a0, $s0, $zero
    /* 2D7D0 8003CFD0 28000524 */  addiu      $a1, $zero, 0x28
    /* 2D7D4 8003CFD4 1108010C */  jal        func_80042044
    /* 2D7D8 8003CFD8 28000624 */   addiu     $a2, $zero, 0x28
    /* 2D7DC 8003CFDC 12010582 */  lb         $a1, 0x112($s0)
    /* 2D7E0 8003CFE0 49F4000C */  jal        func_8003D124
    /* 2D7E4 8003CFE4 21200002 */   addu      $a0, $s0, $zero
    /* 2D7E8 8003CFE8 A6000282 */  lb         $v0, 0xA6($s0)
    /* 2D7EC 8003CFEC 00000000 */  nop
    /* 2D7F0 8003CFF0 80004230 */  andi       $v0, $v0, 0x80
    /* 2D7F4 8003CFF4 45004010 */  beqz       $v0, .L8003D10C
    /* 2D7F8 8003CFF8 91000424 */   addiu     $a0, $zero, 0x91
    /* 2D7FC 8003CFFC 21280000 */  addu       $a1, $zero, $zero
    /* 2D800 8003D000 0268000C */  jal        Sound_call
    /* 2D804 8003D004 21300000 */   addu      $a2, $zero, $zero
    /* 2D808 8003D008 43F40008 */  j          .L8003D10C
    /* 2D80C 8003D00C 00000000 */   nop
  glabel .L8003D010
    /* 2D810 8003D010 12010382 */  lb         $v1, 0x112($s0)
    /* 2D814 8003D014 01000224 */  addiu      $v0, $zero, 0x1
    /* 2D818 8003D018 11006210 */  beq        $v1, $v0, .L8003D060
    /* 2D81C 8003D01C 02006228 */   slti      $v0, $v1, 0x2
    /* 2D820 8003D020 05004010 */  beqz       $v0, .L8003D038
    /* 2D824 8003D024 00000000 */   nop
    /* 2D828 8003D028 0A006010 */  beqz       $v1, .L8003D054
    /* 2D82C 8003D02C 21200002 */   addu      $a0, $s0, $zero
    /* 2D830 8003D030 2AF40008 */  j          .L8003D0A8
    /* 2D834 8003D034 00000000 */   nop
  .L8003D038:
    /* 2D838 8003D038 02000224 */  addiu      $v0, $zero, 0x2
    /* 2D83C 8003D03C 0D006210 */  beq        $v1, $v0, .L8003D074
    /* 2D840 8003D040 03000224 */   addiu     $v0, $zero, 0x3
    /* 2D844 8003D044 10006210 */  beq        $v1, $v0, .L8003D088
    /* 2D848 8003D048 21200002 */   addu      $a0, $s0, $zero
    /* 2D84C 8003D04C 2AF40008 */  j          .L8003D0A8
    /* 2D850 8003D050 00000000 */   nop
  .L8003D054:
    /* 2D854 8003D054 090000A2 */  sb         $zero, 0x9($s0)
    /* 2D858 8003D058 29F40008 */  j          .L8003D0A4
    /* 2D85C 8003D05C 0A0000A6 */   sh        $zero, 0xA($s0)
  .L8003D060:
    /* 2D860 8003D060 E808010C */  jal        Pl00_shot_enable_off
    /* 2D864 8003D064 21200002 */   addu      $a0, $s0, $zero
    /* 2D868 8003D068 21200002 */  addu       $a0, $s0, $zero
    /* 2D86C 8003D06C 26F40008 */  j          .L8003D098
    /* 2D870 8003D070 08000524 */   addiu     $a1, $zero, 0x8
  .L8003D074:
    /* 2D874 8003D074 E808010C */  jal        Pl00_shot_enable_off
    /* 2D878 8003D078 21200002 */   addu      $a0, $s0, $zero
    /* 2D87C 8003D07C 21200002 */  addu       $a0, $s0, $zero
    /* 2D880 8003D080 26F40008 */  j          .L8003D098
    /* 2D884 8003D084 0A000524 */   addiu     $a1, $zero, 0xA
  .L8003D088:
    /* 2D888 8003D088 E808010C */  jal        Pl00_shot_enable_off
    /* 2D88C 8003D08C 21200002 */   addu      $a0, $s0, $zero
    /* 2D890 8003D090 21200002 */  addu       $a0, $s0, $zero
    /* 2D894 8003D094 06000524 */  addiu      $a1, $zero, 0x6
  .L8003D098:
    /* 2D898 8003D098 21300000 */  addu       $a2, $zero, $zero
    /* 2D89C 8003D09C 7707010C */  jal        func_80041DDC
    /* 2D8A0 8003D0A0 21380000 */   addu      $a3, $zero, $zero
  .L8003D0A4:
    /* 2D8A4 8003D0A4 21200002 */  addu       $a0, $s0, $zero
  .L8003D0A8:
    /* 2D8A8 8003D0A8 12018580 */  lb         $a1, 0x112($a0)
    /* 2D8AC 8003D0AC 0A008290 */  lbu        $v0, 0xA($a0)
    /* 2D8B0 8003D0B0 30000324 */  addiu      $v1, $zero, 0x30
    /* 2D8B4 8003D0B4 4C0083A4 */  sh         $v1, 0x4C($a0)
    /* 2D8B8 8003D0B8 01004224 */  addiu      $v0, $v0, 0x1
    /* 2D8BC 8003D0BC 49F4000C */  jal        func_8003D124
    /* 2D8C0 8003D0C0 0A0082A0 */   sb        $v0, 0xA($a0)
    /* 2D8C4 8003D0C4 43F40008 */  j          .L8003D10C
    /* 2D8C8 8003D0C8 00000000 */   nop
  glabel .L8003D0CC
    /* 2D8CC 8003D0CC A6000382 */  lb         $v1, 0xA6($s0)
    /* 2D8D0 8003D0D0 01000224 */  addiu      $v0, $zero, 0x1
    /* 2D8D4 8003D0D4 0D006214 */  bne        $v1, $v0, .L8003D10C
    /* 2D8D8 8003D0D8 21200002 */   addu      $a0, $s0, $zero
    /* 2D8DC 8003D0DC 090000A2 */  sb         $zero, 0x9($s0)
    /* 2D8E0 8003D0E0 0A0000A6 */  sh         $zero, 0xA($s0)
    /* 2D8E4 8003D0E4 160100A6 */  sh         $zero, 0x116($s0)
    /* 2D8E8 8003D0E8 120100A2 */  sb         $zero, 0x112($s0)
    /* 2D8EC 8003D0EC 440000A6 */  sh         $zero, 0x44($s0)
    /* 2D8F0 8003D0F0 F208010C */  jal        Pl00_shot_enable_on
    /* 2D8F4 8003D0F4 B40000A6 */   sh        $zero, 0xB4($s0)
    /* 2D8F8 8003D0F8 21200002 */  addu       $a0, $s0, $zero
    /* 2D8FC 8003D0FC 21280000 */  addu       $a1, $zero, $zero
    /* 2D900 8003D100 21300000 */  addu       $a2, $zero, $zero
    /* 2D904 8003D104 7707010C */  jal        func_80041DDC
    /* 2D908 8003D108 21380000 */   addu      $a3, $zero, $zero
  .L8003D10C:
    /* 2D90C 8003D10C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 2D910 8003D110 1400B18F */  lw         $s1, 0x14($sp)
    /* 2D914 8003D114 1000B08F */  lw         $s0, 0x10($sp)
    /* 2D918 8003D118 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2D91C 8003D11C 0800E003 */  jr         $ra
    /* 2D920 8003D120 00000000 */   nop
.size func_8003CD4C, . - func_8003CD4C
