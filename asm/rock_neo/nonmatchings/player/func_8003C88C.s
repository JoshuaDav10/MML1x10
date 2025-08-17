.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003C88C
    /* 2D08C 8003C88C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2D090 8003C890 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2D094 8003C894 21808000 */  addu       $s0, $a0, $zero
    /* 2D098 8003C898 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2D09C 8003C89C 1700028A */  lwl        $v0, 0x17($s0)
    /* 2D0A0 8003C8A0 1400029A */  lwr        $v0, 0x14($s0)
    /* 2D0A4 8003C8A4 1B00038A */  lwl        $v1, 0x1B($s0)
    /* 2D0A8 8003C8A8 1800039A */  lwr        $v1, 0x18($s0)
    /* 2D0AC 8003C8AC 2F0002AA */  swl        $v0, 0x2F($s0)
    /* 2D0B0 8003C8B0 2C0002BA */  swr        $v0, 0x2C($s0)
    /* 2D0B4 8003C8B4 330003AA */  swl        $v1, 0x33($s0)
    /* 2D0B8 8003C8B8 300003BA */  swr        $v1, 0x30($s0)
    /* 2D0BC 8003C8BC 1C00028E */  lw         $v0, 0x1C($s0)
    /* 2D0C0 8003C8C0 2000038E */  lw         $v1, 0x20($s0)
    /* 2D0C4 8003C8C4 2400048E */  lw         $a0, 0x24($s0)
    /* 2D0C8 8003C8C8 2800058E */  lw         $a1, 0x28($s0)
    /* 2D0CC 8003C8CC 340002AE */  sw         $v0, 0x34($s0)
    /* 2D0D0 8003C8D0 380003AE */  sw         $v1, 0x38($s0)
    /* 2D0D4 8003C8D4 3C0004AE */  sw         $a0, 0x3C($s0)
    /* 2D0D8 8003C8D8 400005AE */  sw         $a1, 0x40($s0)
    /* 2D0DC 8003C8DC 5700028A */  lwl        $v0, 0x57($s0)
    /* 2D0E0 8003C8E0 5400029A */  lwr        $v0, 0x54($s0)
    /* 2D0E4 8003C8E4 5B00038A */  lwl        $v1, 0x5B($s0)
    /* 2D0E8 8003C8E8 5800039A */  lwr        $v1, 0x58($s0)
    /* 2D0EC 8003C8EC 5F0002AA */  swl        $v0, 0x5F($s0)
    /* 2D0F0 8003C8F0 5C0002BA */  swr        $v0, 0x5C($s0)
    /* 2D0F4 8003C8F4 630003AA */  swl        $v1, 0x63($s0)
    /* 2D0F8 8003C8F8 600003BA */  swr        $v1, 0x60($s0)
    /* 2D0FC 8003C8FC 14000426 */  addiu      $a0, $s0, 0x14
    /* 2D100 8003C900 AC000392 */  lbu        $v1, 0xAC($s0)
    /* 2D104 8003C904 6E000596 */  lhu        $a1, 0x6E($s0)
    /* 2D108 8003C908 74000692 */  lbu        $a2, 0x74($s0)
    /* 2D10C 8003C90C BD000292 */  lbu        $v0, 0xBD($s0)
    /* 2D110 8003C910 76000792 */  lbu        $a3, 0x76($s0)
    /* 2D114 8003C914 F7004230 */  andi       $v0, $v0, 0xF7
    /* 2D118 8003C918 AD0003A2 */  sb         $v1, 0xAD($s0)
    /* 2D11C 8003C91C B20005A6 */  sh         $a1, 0xB2($s0)
    /* 2D120 8003C920 750006A2 */  sb         $a2, 0x75($s0)
    /* 2D124 8003C924 770007A2 */  sb         $a3, 0x77($s0)
    /* 2D128 8003C928 CA2B010C */  jal        func_8004AF28
    /* 2D12C 8003C92C BD0002A2 */   sb        $v0, 0xBD($s0)
    /* 2D130 8003C930 21204000 */  addu       $a0, $v0, $zero
    /* 2D134 8003C934 05008010 */  beqz       $a0, .L8003C94C
    /* 2D138 8003C938 0A000224 */   addiu     $v0, $zero, 0xA
    /* 2D13C 8003C93C 090002A2 */  sb         $v0, 0x9($s0)
    /* 2D140 8003C940 0A0000A2 */  sb         $zero, 0xA($s0)
    /* 2D144 8003C944 5BF20008 */  j          .L8003C96C
    /* 2D148 8003C948 0B0004A2 */   sb        $a0, 0xB($s0)
  .L8003C94C:
    /* 2D14C 8003C94C FF00023C */  lui        $v0, (0xFFFF00 >> 16)
    /* 2D150 8003C950 0800038E */  lw         $v1, 0x8($s0)
    /* 2D154 8003C954 00FF4234 */  ori        $v0, $v0, (0xFFFF00 & 0xFFFF)
    /* 2D158 8003C958 24186200 */  and        $v1, $v1, $v0
    /* 2D15C 8003C95C 000A0224 */  addiu      $v0, $zero, 0xA00
    /* 2D160 8003C960 02006214 */  bne        $v1, $v0, .L8003C96C
    /* 2D164 8003C964 01000224 */   addiu     $v0, $zero, 0x1
    /* 2D168 8003C968 0A0002A2 */  sb         $v0, 0xA($s0)
  .L8003C96C:
    /* 2D16C 8003C96C 49040282 */  lb         $v0, 0x449($s0)
    /* 2D170 8003C970 00000000 */  nop
    /* 2D174 8003C974 1E004014 */  bnez       $v0, .L8003C9F0
    /* 2D178 8003C978 00000000 */   nop
    /* 2D17C 8003C97C 10010282 */  lb         $v0, 0x110($s0)
    /* 2D180 8003C980 00000000 */  nop
    /* 2D184 8003C984 08004014 */  bnez       $v0, .L8003C9A8
    /* 2D188 8003C988 21200002 */   addu      $a0, $s0, $zero
    /* 2D18C 8003C98C 06000292 */  lbu        $v0, 0x6($s0)
    /* 2D190 8003C990 00000000 */  nop
    /* 2D194 8003C994 03004234 */  ori        $v0, $v0, 0x3
    /* 2D198 8003C998 D305010C */  jal        func_8004174C
    /* 2D19C 8003C99C 060002A2 */   sb        $v0, 0x6($s0)
    /* 2D1A0 8003C9A0 80F20008 */  j          .L8003CA00
    /* 2D1A4 8003C9A4 00000000 */   nop
  .L8003C9A8:
    /* 2D1A8 8003C9A8 11004018 */  blez       $v0, .L8003C9F0
    /* 2D1AC 8003C9AC 00000000 */   nop
    /* 2D1B0 8003C9B0 11010292 */  lbu        $v0, 0x111($s0)
    /* 2D1B4 8003C9B4 00000000 */  nop
    /* 2D1B8 8003C9B8 FFFF4324 */  addiu      $v1, $v0, -0x1
    /* 2D1BC 8003C9BC 00160300 */  sll        $v0, $v1, 24
    /* 2D1C0 8003C9C0 05004104 */  bgez       $v0, .L8003C9D8
    /* 2D1C4 8003C9C4 110103A2 */   sb        $v1, 0x111($s0)
    /* 2D1C8 8003C9C8 06000292 */  lbu        $v0, 0x6($s0)
    /* 2D1CC 8003C9CC 710000A2 */  sb         $zero, 0x71($s0)
    /* 2D1D0 8003C9D0 7DF20008 */  j          .L8003C9F4
    /* 2D1D4 8003C9D4 100100A2 */   sb        $zero, 0x110($s0)
  .L8003C9D8:
    /* 2D1D8 8003C9D8 02006230 */  andi       $v0, $v1, 0x2
    /* 2D1DC 8003C9DC 04004010 */  beqz       $v0, .L8003C9F0
    /* 2D1E0 8003C9E0 00000000 */   nop
    /* 2D1E4 8003C9E4 06000292 */  lbu        $v0, 0x6($s0)
    /* 2D1E8 8003C9E8 7FF20008 */  j          .L8003C9FC
    /* 2D1EC 8003C9EC FD004230 */   andi      $v0, $v0, 0xFD
  .L8003C9F0:
    /* 2D1F0 8003C9F0 06000292 */  lbu        $v0, 0x6($s0)
  .L8003C9F4:
    /* 2D1F4 8003C9F4 00000000 */  nop
    /* 2D1F8 8003C9F8 03004234 */  ori        $v0, $v0, 0x3
  .L8003C9FC:
    /* 2D1FC 8003C9FC 060002A2 */  sb         $v0, 0x6($s0)
  .L8003CA00:
    /* 2D200 8003CA00 74010282 */  lb         $v0, 0x174($s0)
    /* 2D204 8003CA04 00000000 */  nop
    /* 2D208 8003CA08 C0004330 */  andi       $v1, $v0, 0xC0
    /* 2D20C 8003CA0C 0A006010 */  beqz       $v1, .L8003CA38
    /* 2D210 8003CA10 880100AE */   sw        $zero, 0x188($s0)
    /* 2D214 8003CA14 80000224 */  addiu      $v0, $zero, 0x80
    /* 2D218 8003CA18 05006214 */  bne        $v1, $v0, .L8003CA30
    /* 2D21C 8003CA1C 00000000 */   nop
    /* 2D220 8003CA20 CD09010C */  jal        func_80042734
    /* 2D224 8003CA24 21200002 */   addu      $a0, $s0, $zero
    /* 2D228 8003CA28 8EF20008 */  j          .L8003CA38
    /* 2D22C 8003CA2C 00000000 */   nop
  .L8003CA30:
    /* 2D230 8003CA30 BE09010C */  jal        func_800426F8
    /* 2D234 8003CA34 21200002 */   addu      $a0, $s0, $zero
  .L8003CA38:
    /* 2D238 8003CA38 BD000282 */  lb         $v0, 0xBD($s0)
    /* 2D23C 8003CA3C 00000000 */  nop
    /* 2D240 8003CA40 80004230 */  andi       $v0, $v0, 0x80
    /* 2D244 8003CA44 13004014 */  bnez       $v0, .L8003CA94
    /* 2D248 8003CA48 00000000 */   nop
    /* 2D24C 8003CA4C 09000292 */  lbu        $v0, 0x9($s0)
    /* 2D250 8003CA50 00000000 */  nop
    /* 2D254 8003CA54 80100200 */  sll        $v0, $v0, 2
    /* 2D258 8003CA58 0980013C */  lui        $at, %hi(D_80089FF8)
    /* 2D25C 8003CA5C 21082200 */  addu       $at, $at, $v0
    /* 2D260 8003CA60 F89F228C */  lw         $v0, %lo(D_80089FF8)($at)
    /* 2D264 8003CA64 00000000 */  nop
    /* 2D268 8003CA68 09F84000 */  jalr       $v0
    /* 2D26C 8003CA6C 21200002 */   addu      $a0, $s0, $zero
    /* 2D270 8003CA70 09000292 */  lbu        $v0, 0x9($s0)
    /* 2D274 8003CA74 00000000 */  nop
    /* 2D278 8003CA78 80100200 */  sll        $v0, $v0, 2
    /* 2D27C 8003CA7C 0980013C */  lui        $at, %hi(D_80089FA4)
    /* 2D280 8003CA80 21082200 */  addu       $at, $at, $v0
    /* 2D284 8003CA84 A49F228C */  lw         $v0, %lo(D_80089FA4)($at)
    /* 2D288 8003CA88 00000000 */  nop
    /* 2D28C 8003CA8C 09F84000 */  jalr       $v0
    /* 2D290 8003CA90 21200002 */   addu      $a0, $s0, $zero
  .L8003CA94:
    /* 2D294 8003CA94 052D010C */  jal        func_8004B414
    /* 2D298 8003CA98 21200002 */   addu      $a0, $s0, $zero
    /* 2D29C 8003CA9C 21204000 */  addu       $a0, $v0, $zero
    /* 2D2A0 8003CAA0 74000382 */  lb         $v1, 0x74($s0)
    /* 2D2A4 8003CAA4 01000224 */  addiu      $v0, $zero, 0x1
    /* 2D2A8 8003CAA8 16006214 */  bne        $v1, $v0, .L8003CB04
    /* 2D2AC 8003CAAC 00208230 */   andi      $v0, $a0, 0x2000
    /* 2D2B0 8003CAB0 14004010 */  beqz       $v0, .L8003CB04
    /* 2D2B4 8003CAB4 00000000 */   nop
    /* 2D2B8 8003CAB8 09000292 */  lbu        $v0, 0x9($s0)
    /* 2D2BC 8003CABC 00000000 */  nop
    /* 2D2C0 8003CAC0 F9FF4224 */  addiu      $v0, $v0, -0x7
    /* 2D2C4 8003CAC4 0200422C */  sltiu      $v0, $v0, 0x2
    /* 2D2C8 8003CAC8 0E004010 */  beqz       $v0, .L8003CB04
    /* 2D2CC 8003CACC 00000000 */   nop
    /* 2D2D0 8003CAD0 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2D2D4 8003CAD4 00000000 */  nop
    /* 2D2D8 8003CAD8 0400422C */  sltiu      $v0, $v0, 0x4
    /* 2D2DC 8003CADC 09004010 */  beqz       $v0, .L8003CB04
    /* 2D2E0 8003CAE0 21200002 */   addu      $a0, $s0, $zero
    /* 2D2E4 8003CAE4 15000524 */  addiu      $a1, $zero, 0x15
    /* 2D2E8 8003CAE8 21300000 */  addu       $a2, $zero, $zero
    /* 2D2EC 8003CAEC 7707010C */  jal        func_80041DDC
    /* 2D2F0 8003CAF0 01000724 */   addiu     $a3, $zero, 0x1
    /* 2D2F4 8003CAF4 04000224 */  addiu      $v0, $zero, 0x4
    /* 2D2F8 8003CAF8 0A0002A2 */  sb         $v0, 0xA($s0)
    /* 2D2FC 8003CAFC 460000A6 */  sh         $zero, 0x46($s0)
    /* 2D300 8003CB00 4E0000A6 */  sh         $zero, 0x4E($s0)
  .L8003CB04:
    /* 2D304 8003CB04 EB46010C */  jal        func_80051BAC
    /* 2D308 8003CB08 21200002 */   addu      $a0, $s0, $zero
    /* 2D30C 8003CB0C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2D310 8003CB10 1000B08F */  lw         $s0, 0x10($sp)
    /* 2D314 8003CB14 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2D318 8003CB18 0800E003 */  jr         $ra
    /* 2D31C 8003CB1C 00000000 */   nop
.size func_8003C88C, . - func_8003C88C
