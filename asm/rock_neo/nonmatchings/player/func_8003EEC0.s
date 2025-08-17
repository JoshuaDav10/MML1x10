.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003EEC0
    /* 2F6C0 8003EEC0 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 2F6C4 8003EEC4 4000B0AF */  sw         $s0, 0x40($sp)
    /* 2F6C8 8003EEC8 21808000 */  addu       $s0, $a0, $zero
    /* 2F6CC 8003EECC 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* 2F6D0 8003EED0 4800B2AF */  sw         $s2, 0x48($sp)
    /* 2F6D4 8003EED4 4400B1AF */  sw         $s1, 0x44($sp)
    /* 2F6D8 8003EED8 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2F6DC 8003EEDC 00000000 */  nop
    /* 2F6E0 8003EEE0 08004014 */  bnez       $v0, .L8003EF04
    /* 2F6E4 8003EEE4 01000224 */   addiu     $v0, $zero, 0x1
    /* 2F6E8 8003EEE8 0A0002A2 */  sb         $v0, 0xA($s0)
    /* 2F6EC 8003EEEC 440000A6 */  sh         $zero, 0x44($s0)
    /* 2F6F0 8003EEF0 460000A6 */  sh         $zero, 0x46($s0)
    /* 2F6F4 8003EEF4 480000A6 */  sh         $zero, 0x48($s0)
    /* 2F6F8 8003EEF8 080100A6 */  sh         $zero, 0x108($s0)
    /* 2F6FC 8003EEFC 0A0100A6 */  sh         $zero, 0x10A($s0)
    /* 2F700 8003EF00 0E0100A6 */  sh         $zero, 0x10E($s0)
  .L8003EF04:
    /* 2F704 8003EF04 0980123C */  lui        $s2, %hi(D_80097D08)
    /* 2F708 8003EF08 087D528E */  lw         $s2, %lo(D_80097D08)($s2)
    /* 2F70C 8003EF0C 00000000 */  nop
    /* 2F710 8003EF10 0B004012 */  beqz       $s2, .L8003EF40
    /* 2F714 8003EF14 21200002 */   addu      $a0, $s0, $zero
    /* 2F718 8003EF18 0A80023C */  lui        $v0, %hi(D_80098B18)
    /* 2F71C 8003EF1C 188B428C */  lw         $v0, %lo(D_80098B18)($v0)
    /* 2F720 8003EF20 00000000 */  nop
    /* 2F724 8003EF24 02004230 */  andi       $v0, $v0, 0x2
    /* 2F728 8003EF28 06004010 */  beqz       $v0, .L8003EF44
    /* 2F72C 8003EF2C 02000524 */   addiu     $a1, $zero, 0x2
    /* 2F730 8003EF30 89FC000C */  jal        func_8003F224
    /* 2F734 8003EF34 21200002 */   addu      $a0, $s0, $zero
    /* 2F738 8003EF38 1F004010 */  beqz       $v0, .L8003EFB8
    /* 2F73C 8003EF3C 21200002 */   addu      $a0, $s0, $zero
  .L8003EF40:
    /* 2F740 8003EF40 02000524 */  addiu      $a1, $zero, 0x2
  .L8003EF44:
    /* 2F744 8003EF44 BD07010C */  jal        func_80041EF4
    /* 2F748 8003EF48 40000624 */   addiu     $a2, $zero, 0x40
    /* 2F74C 8003EF4C 08010486 */  lh         $a0, 0x108($s0)
    /* 2F750 8003EF50 8CE5000C */  jal        func_80039630
    /* 2F754 8003EF54 5E010524 */   addiu     $a1, $zero, 0x15E
    /* 2F758 8003EF58 74010282 */  lb         $v0, 0x174($s0)
    /* 2F75C 8003EF5C 00000000 */  nop
    /* 2F760 8003EF60 C0004230 */  andi       $v0, $v0, 0xC0
    /* 2F764 8003EF64 08004014 */  bnez       $v0, .L8003EF88
    /* 2F768 8003EF68 0E0100A6 */   sh        $zero, 0x10E($s0)
    /* 2F76C 8003EF6C 21200002 */  addu       $a0, $s0, $zero
    /* 2F770 8003EF70 04000524 */  addiu      $a1, $zero, 0x4
    /* 2F774 8003EF74 48000624 */  addiu      $a2, $zero, 0x48
    /* 2F778 8003EF78 2508010C */  jal        func_80042094
    /* 2F77C 8003EF7C 01000724 */   addiu     $a3, $zero, 0x1
    /* 2F780 8003EF80 5BFC0008 */  j          .L8003F16C
    /* 2F784 8003EF84 00000000 */   nop
  .L8003EF88:
    /* 2F788 8003EF88 5604010C */  jal        func_80041158
    /* 2F78C 8003EF8C 21200002 */   addu      $a0, $s0, $zero
    /* 2F790 8003EF90 07004014 */  bnez       $v0, .L8003EFB0
    /* 2F794 8003EF94 21200002 */   addu      $a0, $s0, $zero
    /* 2F798 8003EF98 04000524 */  addiu      $a1, $zero, 0x4
    /* 2F79C 8003EF9C 48000624 */  addiu      $a2, $zero, 0x48
    /* 2F7A0 8003EFA0 2508010C */  jal        func_80042094
    /* 2F7A4 8003EFA4 21380000 */   addu      $a3, $zero, $zero
    /* 2F7A8 8003EFA8 5BFC0008 */  j          .L8003F16C
    /* 2F7AC 8003EFAC 00000000 */   nop
  .L8003EFB0:
    /* 2F7B0 8003EFB0 5BFC0008 */  j          .L8003F16C
    /* 2F7B4 8003EFB4 B40000A6 */   sh        $zero, 0xB4($s0)
  .L8003EFB8:
    /* 2F7B8 8003EFB8 14000426 */  addiu      $a0, $s0, 0x14
    /* 2F7BC 8003EFBC 9AC4000C */  jal        func_80031268
    /* 2F7C0 8003EFC0 14004526 */   addiu     $a1, $s2, 0x14
    /* 2F7C4 8003EFC4 56000386 */  lh         $v1, 0x56($s0)
    /* 2F7C8 8003EFC8 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 2F7CC 8003EFCC 0A0102A6 */  sh         $v0, 0x10A($s0)
    /* 2F7D0 8003EFD0 23886200 */  subu       $s1, $v1, $v0
    /* 2F7D4 8003EFD4 0108222A */  slti       $v0, $s1, 0x801
    /* 2F7D8 8003EFD8 03004014 */  bnez       $v0, .L8003EFE8
    /* 2F7DC 8003EFDC 00F8222A */   slti      $v0, $s1, -0x800
    /* 2F7E0 8003EFE0 00F03126 */  addiu      $s1, $s1, -0x1000
    /* 2F7E4 8003EFE4 00F8222A */  slti       $v0, $s1, -0x800
  .L8003EFE8:
    /* 2F7E8 8003EFE8 02004010 */  beqz       $v0, .L8003EFF4
    /* 2F7EC 8003EFEC 00000000 */   nop
    /* 2F7F0 8003EFF0 00103126 */  addiu      $s1, $s1, 0x1000
  .L8003EFF4:
    /* 2F7F4 8003EFF4 74010282 */  lb         $v0, 0x174($s0)
    /* 2F7F8 8003EFF8 00000000 */  nop
    /* 2F7FC 8003EFFC C0004230 */  andi       $v0, $v0, 0xC0
    /* 2F800 8003F000 04004014 */  bnez       $v0, .L8003F014
    /* 2F804 8003F004 21200002 */   addu      $a0, $s0, $zero
    /* 2F808 8003F008 21282002 */  addu       $a1, $s1, $zero
    /* 2F80C 8003F00C 0CFC0008 */  j          .L8003F030
    /* 2F810 8003F010 01000624 */   addiu     $a2, $zero, 0x1
  .L8003F014:
    /* 2F814 8003F014 1104010C */  jal        func_80041044
    /* 2F818 8003F018 21200002 */   addu      $a0, $s0, $zero
    /* 2F81C 8003F01C 07004014 */  bnez       $v0, .L8003F03C
    /* 2F820 8003F020 14000426 */   addiu     $a0, $s0, 0x14
    /* 2F824 8003F024 21200002 */  addu       $a0, $s0, $zero
    /* 2F828 8003F028 21282002 */  addu       $a1, $s1, $zero
    /* 2F82C 8003F02C 21300000 */  addu       $a2, $zero, $zero
  .L8003F030:
    /* 2F830 8003F030 62FC000C */  jal        func_8003F188
    /* 2F834 8003F034 00000000 */   nop
    /* 2F838 8003F038 14000426 */  addiu      $a0, $s0, 0x14
  .L8003F03C:
    /* 2F83C 8003F03C A7C4000C */  jal        func_8003129C
    /* 2F840 8003F040 14004526 */   addiu     $a1, $s2, 0x14
    /* 2F844 8003F044 08010386 */  lh         $v1, 0x108($s0)
    /* 2F848 8003F048 00F45124 */  addiu      $s1, $v0, -0xC00
    /* 2F84C 8003F04C 03002316 */  bne        $s1, $v1, .L8003F05C
    /* 2F850 8003F050 23102302 */   subu      $v0, $s1, $v1
    /* 2F854 8003F054 58FC0008 */  j          .L8003F160
    /* 2F858 8003F058 0E0100A6 */   sh        $zero, 0x10E($s0)
  .L8003F05C:
    /* 2F85C 8003F05C 21004018 */  blez       $v0, .L8003F0E4
    /* 2F860 8003F060 00000000 */   nop
    /* 2F864 8003F064 0E010286 */  lh         $v0, 0x10E($s0)
    /* 2F868 8003F068 00000000 */  nop
    /* 2F86C 8003F06C 03004104 */  bgez       $v0, .L8003F07C
    /* 2F870 8003F070 21184000 */   addu      $v1, $v0, $zero
    /* 2F874 8003F074 27FC0008 */  j          .L8003F09C
    /* 2F878 8003F078 0E0100A6 */   sh        $zero, 0x10E($s0)
  .L8003F07C:
    /* 2F87C 8003F07C 04006224 */  addiu      $v0, $v1, 0x4
    /* 2F880 8003F080 0E0102A6 */  sh         $v0, 0x10E($s0)
    /* 2F884 8003F084 00140200 */  sll        $v0, $v0, 16
    /* 2F888 8003F088 03140200 */  sra        $v0, $v0, 16
    /* 2F88C 8003F08C 41004228 */  slti       $v0, $v0, 0x41
    /* 2F890 8003F090 02004014 */  bnez       $v0, .L8003F09C
    /* 2F894 8003F094 40000224 */   addiu     $v0, $zero, 0x40
    /* 2F898 8003F098 0E0102A6 */  sh         $v0, 0x10E($s0)
  .L8003F09C:
    /* 2F89C 8003F09C 08010386 */  lh         $v1, 0x108($s0)
    /* 2F8A0 8003F0A0 0E010286 */  lh         $v0, 0x10E($s0)
    /* 2F8A4 8003F0A4 21286000 */  addu       $a1, $v1, $zero
    /* 2F8A8 8003F0A8 23182302 */  subu       $v1, $s1, $v1
    /* 2F8AC 8003F0AC 21204000 */  addu       $a0, $v0, $zero
    /* 2F8B0 8003F0B0 2A104300 */  slt        $v0, $v0, $v1
    /* 2F8B4 8003F0B4 03004010 */  beqz       $v0, .L8003F0C4
    /* 2F8B8 8003F0B8 2110A400 */   addu      $v0, $a1, $a0
    /* 2F8BC 8003F0BC 32FC0008 */  j          .L8003F0C8
    /* 2F8C0 8003F0C0 080102A6 */   sh        $v0, 0x108($s0)
  .L8003F0C4:
    /* 2F8C4 8003F0C4 080111A6 */  sh         $s1, 0x108($s0)
  .L8003F0C8:
    /* 2F8C8 8003F0C8 08010286 */  lh         $v0, 0x108($s0)
    /* 2F8CC 8003F0CC 00000000 */  nop
    /* 2F8D0 8003F0D0 C1014228 */  slti       $v0, $v0, 0x1C1
    /* 2F8D4 8003F0D4 22004014 */  bnez       $v0, .L8003F160
    /* 2F8D8 8003F0D8 C0010224 */   addiu     $v0, $zero, 0x1C0
    /* 2F8DC 8003F0DC 58FC0008 */  j          .L8003F160
    /* 2F8E0 8003F0E0 080102A6 */   sh        $v0, 0x108($s0)
  .L8003F0E4:
    /* 2F8E4 8003F0E4 0E010286 */  lh         $v0, 0x10E($s0)
    /* 2F8E8 8003F0E8 00000000 */  nop
    /* 2F8EC 8003F0EC 03004018 */  blez       $v0, .L8003F0FC
    /* 2F8F0 8003F0F0 21184000 */   addu      $v1, $v0, $zero
    /* 2F8F4 8003F0F4 47FC0008 */  j          .L8003F11C
    /* 2F8F8 8003F0F8 0E0100A6 */   sh        $zero, 0x10E($s0)
  .L8003F0FC:
    /* 2F8FC 8003F0FC FCFF6224 */  addiu      $v0, $v1, -0x4
    /* 2F900 8003F100 0E0102A6 */  sh         $v0, 0x10E($s0)
    /* 2F904 8003F104 00140200 */  sll        $v0, $v0, 16
    /* 2F908 8003F108 03140200 */  sra        $v0, $v0, 16
    /* 2F90C 8003F10C C0FF4228 */  slti       $v0, $v0, -0x40
    /* 2F910 8003F110 02004010 */  beqz       $v0, .L8003F11C
    /* 2F914 8003F114 C0FF0224 */   addiu     $v0, $zero, -0x40
    /* 2F918 8003F118 0E0102A6 */  sh         $v0, 0x10E($s0)
  .L8003F11C:
    /* 2F91C 8003F11C 08010286 */  lh         $v0, 0x108($s0)
    /* 2F920 8003F120 0E010386 */  lh         $v1, 0x10E($s0)
    /* 2F924 8003F124 21284000 */  addu       $a1, $v0, $zero
    /* 2F928 8003F128 23102202 */  subu       $v0, $s1, $v0
    /* 2F92C 8003F12C 2A104300 */  slt        $v0, $v0, $v1
    /* 2F930 8003F130 04004010 */  beqz       $v0, .L8003F144
    /* 2F934 8003F134 21206000 */   addu      $a0, $v1, $zero
    /* 2F938 8003F138 2110A400 */  addu       $v0, $a1, $a0
    /* 2F93C 8003F13C 52FC0008 */  j          .L8003F148
    /* 2F940 8003F140 080102A6 */   sh        $v0, 0x108($s0)
  .L8003F144:
    /* 2F944 8003F144 080111A6 */  sh         $s1, 0x108($s0)
  .L8003F148:
    /* 2F948 8003F148 08010286 */  lh         $v0, 0x108($s0)
    /* 2F94C 8003F14C 00000000 */  nop
    /* 2F950 8003F150 40FE4228 */  slti       $v0, $v0, -0x1C0
    /* 2F954 8003F154 02004010 */  beqz       $v0, .L8003F160
    /* 2F958 8003F158 40FE0224 */   addiu     $v0, $zero, -0x1C0
    /* 2F95C 8003F15C 080102A6 */  sh         $v0, 0x108($s0)
  .L8003F160:
    /* 2F960 8003F160 08010486 */  lh         $a0, 0x108($s0)
    /* 2F964 8003F164 8CE5000C */  jal        func_80039630
    /* 2F968 8003F168 5E010524 */   addiu     $a1, $zero, 0x15E
  .L8003F16C:
    /* 2F96C 8003F16C 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* 2F970 8003F170 4800B28F */  lw         $s2, 0x48($sp)
    /* 2F974 8003F174 4400B18F */  lw         $s1, 0x44($sp)
    /* 2F978 8003F178 4000B08F */  lw         $s0, 0x40($sp)
    /* 2F97C 8003F17C 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 2F980 8003F180 0800E003 */  jr         $ra
    /* 2F984 8003F184 00000000 */   nop
.size func_8003EEC0, . - func_8003EEC0
