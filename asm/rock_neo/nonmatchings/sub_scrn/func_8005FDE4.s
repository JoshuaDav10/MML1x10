.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005FDE4
    /* 505E4 8005FDE4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 505E8 8005FDE8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 505EC 8005FDEC 21808000 */  addu       $s0, $a0, $zero
    /* 505F0 8005FDF0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 505F4 8005FDF4 78000282 */  lb         $v0, 0x78($s0)
    /* 505F8 8005FDF8 00000000 */  nop
    /* 505FC 8005FDFC 03004014 */  bnez       $v0, .L8005FE0C
    /* 50600 8005FE00 00000000 */   nop
  .L8005FE04:
    /* 50604 8005FE04 EA7F0108 */  j          .L8005FFA8
    /* 50608 8005FE08 02000224 */   addiu     $v0, $zero, 0x2
  .L8005FE0C:
    /* 5060C 8005FE0C 50000292 */  lbu        $v0, 0x50($s0)
    /* 50610 8005FE10 00000000 */  nop
    /* 50614 8005FE14 FDFF4224 */  addiu      $v0, $v0, -0x3
    /* 50618 8005FE18 00160200 */  sll        $v0, $v0, 24
    /* 5061C 8005FE1C 031E0200 */  sra        $v1, $v0, 24
    /* 50620 8005FE20 1900622C */  sltiu      $v0, $v1, 0x19
    /* 50624 8005FE24 5F004010 */  beqz       $v0, .L8005FFA4
    /* 50628 8005FE28 80100300 */   sll       $v0, $v1, 2
    /* 5062C 8005FE2C 0180013C */  lui        $at, %hi(jtbl_800112E4)
    /* 50630 8005FE30 21082200 */  addu       $at, $at, $v0
    /* 50634 8005FE34 E412228C */  lw         $v0, %lo(jtbl_800112E4)($at)
    /* 50638 8005FE38 00000000 */  nop
    /* 5063C 8005FE3C 08004000 */  jr         $v0
    /* 50640 8005FE40 00000000 */   nop
  glabel .L8005FE44
    /* 50644 8005FE44 9676000C */  jal        Sce_flag_test
    /* 50648 8005FE48 18030424 */   addiu     $a0, $zero, 0x318
    /* 5064C 8005FE4C 56004010 */  beqz       $v0, .L8005FFA8
    /* 50650 8005FE50 02000224 */   addiu     $v0, $zero, 0x2
    /* 50654 8005FE54 51000282 */  lb         $v0, 0x51($s0)
    /* 50658 8005FE58 00000000 */  nop
    /* 5065C 8005FE5C 03004228 */  slti       $v0, $v0, 0x3
    /* 50660 8005FE60 51004010 */  beqz       $v0, .L8005FFA8
    /* 50664 8005FE64 02000224 */   addiu     $v0, $zero, 0x2
    /* 50668 8005FE68 9676000C */  jal        Sce_flag_test
    /* 5066C 8005FE6C 55000424 */   addiu     $a0, $zero, 0x55
    /* 50670 8005FE70 03004010 */  beqz       $v0, .L8005FE80
    /* 50674 8005FE74 00000000 */   nop
    /* 50678 8005FE78 A17F0108 */  j          .L8005FE84
    /* 5067C 8005FE7C 1B000224 */   addiu     $v0, $zero, 0x1B
  .L8005FE80:
    /* 50680 8005FE80 03000224 */  addiu      $v0, $zero, 0x3
  .L8005FE84:
    /* 50684 8005FE84 790002A2 */  sb         $v0, 0x79($s0)
    /* 50688 8005FE88 01000224 */  addiu      $v0, $zero, 0x1
    /* 5068C 8005FE8C 7A0002A2 */  sb         $v0, 0x7A($s0)
    /* 50690 8005FE90 EA7F0108 */  j          .L8005FFA8
    /* 50694 8005FE94 21100000 */   addu      $v0, $zero, $zero
  glabel .L8005FE98
    /* 50698 8005FE98 9676000C */  jal        Sce_flag_test
    /* 5069C 8005FE9C 19030424 */   addiu     $a0, $zero, 0x319
    /* 506A0 8005FEA0 D8FF4010 */  beqz       $v0, .L8005FE04
    /* 506A4 8005FEA4 21100000 */   addu      $v0, $zero, $zero
    /* 506A8 8005FEA8 D77F0108 */  j          .L8005FF5C
    /* 506AC 8005FEAC 05000324 */   addiu     $v1, $zero, 0x5
  glabel .L8005FEB0
    /* 506B0 8005FEB0 9676000C */  jal        Sce_flag_test
    /* 506B4 8005FEB4 1A030424 */   addiu     $a0, $zero, 0x31A
    /* 506B8 8005FEB8 D2FF4010 */  beqz       $v0, .L8005FE04
    /* 506BC 8005FEBC 21100000 */   addu      $v0, $zero, $zero
    /* 506C0 8005FEC0 D77F0108 */  j          .L8005FF5C
    /* 506C4 8005FEC4 06000324 */   addiu     $v1, $zero, 0x6
  glabel .L8005FEC8
    /* 506C8 8005FEC8 9676000C */  jal        Sce_flag_test
    /* 506CC 8005FECC 1B030424 */   addiu     $a0, $zero, 0x31B
    /* 506D0 8005FED0 35004010 */  beqz       $v0, .L8005FFA8
    /* 506D4 8005FED4 02000224 */   addiu     $v0, $zero, 0x2
    /* 506D8 8005FED8 51000382 */  lb         $v1, 0x51($s0)
    /* 506DC 8005FEDC 00000000 */  nop
    /* 506E0 8005FEE0 03006228 */  slti       $v0, $v1, 0x3
    /* 506E4 8005FEE4 05004014 */  bnez       $v0, .L8005FEFC
    /* 506E8 8005FEE8 21100000 */   addu      $v0, $zero, $zero
    /* 506EC 8005FEEC 05000224 */  addiu      $v0, $zero, 0x5
    /* 506F0 8005FEF0 2D006214 */  bne        $v1, $v0, .L8005FFA8
    /* 506F4 8005FEF4 02000224 */   addiu     $v0, $zero, 0x2
    /* 506F8 8005FEF8 21100000 */  addu       $v0, $zero, $zero
  .L8005FEFC:
    /* 506FC 8005FEFC D77F0108 */  j          .L8005FF5C
    /* 50700 8005FF00 08000324 */   addiu     $v1, $zero, 0x8
  glabel .L8005FF04
    /* 50704 8005FF04 9676000C */  jal        Sce_flag_test
    /* 50708 8005FF08 1C030424 */   addiu     $a0, $zero, 0x31C
    /* 5070C 8005FF0C 26004010 */  beqz       $v0, .L8005FFA8
    /* 50710 8005FF10 02000224 */   addiu     $v0, $zero, 0x2
    /* 50714 8005FF14 51000282 */  lb         $v0, 0x51($s0)
    /* 50718 8005FF18 00000000 */  nop
    /* 5071C 8005FF1C 22004014 */  bnez       $v0, .L8005FFA8
    /* 50720 8005FF20 02000224 */   addiu     $v0, $zero, 0x2
    /* 50724 8005FF24 21100000 */  addu       $v0, $zero, $zero
    /* 50728 8005FF28 D77F0108 */  j          .L8005FF5C
    /* 5072C 8005FF2C 0C000324 */   addiu     $v1, $zero, 0xC
  glabel .L8005FF30
    /* 50730 8005FF30 9676000C */  jal        Sce_flag_test
    /* 50734 8005FF34 1A030424 */   addiu     $a0, $zero, 0x31A
    /* 50738 8005FF38 B2FF4010 */  beqz       $v0, .L8005FE04
    /* 5073C 8005FF3C 21100000 */   addu      $v0, $zero, $zero
    /* 50740 8005FF40 D77F0108 */  j          .L8005FF5C
    /* 50744 8005FF44 06000324 */   addiu     $v1, $zero, 0x6
  glabel .L8005FF48
    /* 50748 8005FF48 9676000C */  jal        Sce_flag_test
    /* 5074C 8005FF4C 1F030424 */   addiu     $a0, $zero, 0x31F
    /* 50750 8005FF50 ACFF4010 */  beqz       $v0, .L8005FE04
    /* 50754 8005FF54 21100000 */   addu      $v0, $zero, $zero
    /* 50758 8005FF58 12000324 */  addiu      $v1, $zero, 0x12
  .L8005FF5C:
    /* 5075C 8005FF5C 790003A2 */  sb         $v1, 0x79($s0)
    /* 50760 8005FF60 EA7F0108 */  j          .L8005FFA8
    /* 50764 8005FF64 7A0000A2 */   sb        $zero, 0x7A($s0)
  glabel .L8005FF68
    /* 50768 8005FF68 9676000C */  jal        Sce_flag_test
    /* 5076C 8005FF6C 1D030424 */   addiu     $a0, $zero, 0x31D
    /* 50770 8005FF70 0D004010 */  beqz       $v0, .L8005FFA8
    /* 50774 8005FF74 02000224 */   addiu     $v0, $zero, 0x2
    /* 50778 8005FF78 51000282 */  lb         $v0, 0x51($s0)
    /* 5077C 8005FF7C 00000000 */  nop
    /* 50780 8005FF80 02004228 */  slti       $v0, $v0, 0x2
    /* 50784 8005FF84 08004014 */  bnez       $v0, .L8005FFA8
    /* 50788 8005FF88 02000224 */   addiu     $v0, $zero, 0x2
    /* 5078C 8005FF8C 21100000 */  addu       $v0, $zero, $zero
    /* 50790 8005FF90 19000324 */  addiu      $v1, $zero, 0x19
    /* 50794 8005FF94 790003A2 */  sb         $v1, 0x79($s0)
    /* 50798 8005FF98 03000324 */  addiu      $v1, $zero, 0x3
    /* 5079C 8005FF9C EA7F0108 */  j          .L8005FFA8
    /* 507A0 8005FFA0 7A0003A2 */   sb        $v1, 0x7A($s0)
  glabel .L8005FFA4
    /* 507A4 8005FFA4 01000224 */  addiu      $v0, $zero, 0x1
  .L8005FFA8:
    /* 507A8 8005FFA8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 507AC 8005FFAC 1000B08F */  lw         $s0, 0x10($sp)
    /* 507B0 8005FFB0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 507B4 8005FFB4 0800E003 */  jr         $ra
    /* 507B8 8005FFB8 00000000 */   nop
.size func_8005FDE4, . - func_8005FDE4
