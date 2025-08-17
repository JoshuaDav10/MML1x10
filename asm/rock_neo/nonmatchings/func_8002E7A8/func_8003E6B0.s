.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003E6B0
    /* 2EEB0 8003E6B0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2EEB4 8003E6B4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2EEB8 8003E6B8 21808000 */  addu       $s0, $a0, $zero
    /* 2EEBC 8003E6BC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2EEC0 8003E6C0 0A000492 */  lbu        $a0, 0xA($s0)
    /* 2EEC4 8003E6C4 01000224 */  addiu      $v0, $zero, 0x1
    /* 2EEC8 8003E6C8 FF008330 */  andi       $v1, $a0, 0xFF
    /* 2EECC 8003E6CC 36006210 */  beq        $v1, $v0, .L8003E7A8
    /* 2EED0 8003E6D0 02006228 */   slti      $v0, $v1, 0x2
    /* 2EED4 8003E6D4 05004010 */  beqz       $v0, .L8003E6EC
    /* 2EED8 8003E6D8 00000000 */   nop
    /* 2EEDC 8003E6DC 0A006010 */  beqz       $v1, .L8003E708
    /* 2EEE0 8003E6E0 00000000 */   nop
    /* 2EEE4 8003E6E4 13FA0008 */  j          .L8003E84C
    /* 2EEE8 8003E6E8 00000000 */   nop
  .L8003E6EC:
    /* 2EEEC 8003E6EC 02000224 */  addiu      $v0, $zero, 0x2
    /* 2EEF0 8003E6F0 32006210 */  beq        $v1, $v0, .L8003E7BC
    /* 2EEF4 8003E6F4 03000224 */   addiu     $v0, $zero, 0x3
    /* 2EEF8 8003E6F8 4A006210 */  beq        $v1, $v0, .L8003E824
    /* 2EEFC 8003E6FC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 2EF00 8003E700 13FA0008 */  j          .L8003E84C
    /* 2EF04 8003E704 00000000 */   nop
  .L8003E708:
    /* 2EF08 8003E708 0B000292 */  lbu        $v0, 0xB($s0)
    /* 2EF0C 8003E70C 00000000 */  nop
    /* 2EF10 8003E710 07004014 */  bnez       $v0, .L8003E730
    /* 2EF14 8003E714 21200002 */   addu      $a0, $s0, $zero
    /* 2EF18 8003E718 20000524 */  addiu      $a1, $zero, 0x20
    /* 2EF1C 8003E71C 21300000 */  addu       $a2, $zero, $zero
    /* 2EF20 8003E720 7707010C */  jal        func_80041DDC
    /* 2EF24 8003E724 01000724 */   addiu     $a3, $zero, 0x1
    /* 2EF28 8003E728 D1F90008 */  j          .L8003E744
    /* 2EF2C 8003E72C 00FE0224 */   addiu     $v0, $zero, -0x200
  .L8003E730:
    /* 2EF30 8003E730 21000524 */  addiu      $a1, $zero, 0x21
    /* 2EF34 8003E734 21300000 */  addu       $a2, $zero, $zero
    /* 2EF38 8003E738 7707010C */  jal        func_80041DDC
    /* 2EF3C 8003E73C 01000724 */   addiu     $a3, $zero, 0x1
    /* 2EF40 8003E740 00020224 */  addiu      $v0, $zero, 0x200
  .L8003E744:
    /* 2EF44 8003E744 440002A6 */  sh         $v0, 0x44($s0)
    /* 2EF48 8003E748 21200002 */  addu       $a0, $s0, $zero
    /* 2EF4C 8003E74C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2EF50 8003E750 460000A6 */  sh         $zero, 0x46($s0)
    /* 2EF54 8003E754 480000A6 */  sh         $zero, 0x48($s0)
    /* 2EF58 8003E758 680102A2 */  sb         $v0, 0x168($s0)
    /* 2EF5C 8003E75C 690102A2 */  sb         $v0, 0x169($s0)
    /* 2EF60 8003E760 E808010C */  jal        Pl00_shot_enable_off
    /* 2EF64 8003E764 4A0400A2 */   sb        $zero, 0x44A($s0)
    /* 2EF68 8003E768 44000586 */  lh         $a1, 0x44($s0)
    /* 2EF6C 8003E76C 46000686 */  lh         $a2, 0x46($s0)
    /* 2EF70 8003E770 48000786 */  lh         $a3, 0x48($s0)
    /* 2EF74 8003E774 A407010C */  jal        func_80041E90
    /* 2EF78 8003E778 21200002 */   addu      $a0, $s0, $zero
    /* 2EF7C 8003E77C BC6C000C */  jal        func_8001B2F0
    /* 2EF80 8003E780 16000424 */   addiu     $a0, $zero, 0x16
    /* 2EF84 8003E784 97000424 */  addiu      $a0, $zero, 0x97
    /* 2EF88 8003E788 21280000 */  addu       $a1, $zero, $zero
    /* 2EF8C 8003E78C 0268000C */  jal        Sound_call
    /* 2EF90 8003E790 21300000 */   addu      $a2, $zero, $zero
    /* 2EF94 8003E794 7AE5000C */  jal        func_800395E8
    /* 2EF98 8003E798 00000000 */   nop
    /* 2EF9C 8003E79C 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2EFA0 8003E7A0 06FA0008 */  j          .L8003E818
    /* 2EFA4 8003E7A4 080100A6 */   sh        $zero, 0x108($s0)
  .L8003E7A8:
    /* 2EFA8 8003E7A8 A6000282 */  lb         $v0, 0xA6($s0)
    /* 2EFAC 8003E7AC 00000000 */  nop
    /* 2EFB0 8003E7B0 02004314 */  bne        $v0, $v1, .L8003E7BC
    /* 2EFB4 8003E7B4 01008224 */   addiu     $v0, $a0, 0x1
    /* 2EFB8 8003E7B8 0A0002A2 */  sb         $v0, 0xA($s0)
  .L8003E7BC:
    /* 2EFBC 8003E7BC 0B000292 */  lbu        $v0, 0xB($s0)
    /* 2EFC0 8003E7C0 00000000 */  nop
    /* 2EFC4 8003E7C4 04004014 */  bnez       $v0, .L8003E7D8
    /* 2EFC8 8003E7C8 00000000 */   nop
    /* 2EFCC 8003E7CC 44000296 */  lhu        $v0, 0x44($s0)
    /* 2EFD0 8003E7D0 F9F90008 */  j          .L8003E7E4
    /* 2EFD4 8003E7D4 40004224 */   addiu     $v0, $v0, 0x40
  .L8003E7D8:
    /* 2EFD8 8003E7D8 44000296 */  lhu        $v0, 0x44($s0)
    /* 2EFDC 8003E7DC 00000000 */  nop
    /* 2EFE0 8003E7E0 C0FF4224 */  addiu      $v0, $v0, -0x40
  .L8003E7E4:
    /* 2EFE4 8003E7E4 440002A6 */  sh         $v0, 0x44($s0)
    /* 2EFE8 8003E7E8 44000586 */  lh         $a1, 0x44($s0)
    /* 2EFEC 8003E7EC 00000000 */  nop
    /* 2EFF0 8003E7F0 0700A010 */  beqz       $a1, .L8003E810
    /* 2EFF4 8003E7F4 21200002 */   addu      $a0, $s0, $zero
    /* 2EFF8 8003E7F8 46008684 */  lh         $a2, 0x46($a0)
    /* 2EFFC 8003E7FC 48008784 */  lh         $a3, 0x48($a0)
    /* 2F000 8003E800 A407010C */  jal        func_80041E90
    /* 2F004 8003E804 00000000 */   nop
    /* 2F008 8003E808 13FA0008 */  j          .L8003E84C
    /* 2F00C 8003E80C 00000000 */   nop
  .L8003E810:
    /* 2F010 8003E810 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2F014 8003E814 440000A6 */  sh         $zero, 0x44($s0)
  .L8003E818:
    /* 2F018 8003E818 01004224 */  addiu      $v0, $v0, 0x1
    /* 2F01C 8003E81C 13FA0008 */  j          .L8003E84C
    /* 2F020 8003E820 0A0002A2 */   sb        $v0, 0xA($s0)
  .L8003E824:
    /* 2F024 8003E824 A7000382 */  lb         $v1, 0xA7($s0)
    /* 2F028 8003E828 00000000 */  nop
    /* 2F02C 8003E82C 07006214 */  bne        $v1, $v0, .L8003E84C
    /* 2F030 8003E830 08000224 */   addiu     $v0, $zero, 0x8
    /* 2F034 8003E834 090002A2 */  sb         $v0, 0x9($s0)
    /* 2F038 8003E838 06000224 */  addiu      $v0, $zero, 0x6
    /* 2F03C 8003E83C 0A0002A2 */  sb         $v0, 0xA($s0)
    /* 2F040 8003E840 710000A2 */  sb         $zero, 0x71($s0)
    /* 2F044 8003E844 680100A2 */  sb         $zero, 0x168($s0)
    /* 2F048 8003E848 690100A2 */  sb         $zero, 0x169($s0)
  .L8003E84C:
    /* 2F04C 8003E84C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2F050 8003E850 1000B08F */  lw         $s0, 0x10($sp)
    /* 2F054 8003E854 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2F058 8003E858 0800E003 */  jr         $ra
    /* 2F05C 8003E85C 00000000 */   nop
.size func_8003E6B0, . - func_8003E6B0
