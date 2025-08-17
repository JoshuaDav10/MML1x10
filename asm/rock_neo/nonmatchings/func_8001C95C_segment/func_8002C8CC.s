.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002C8CC
    /* 1D0CC 8002C8CC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1D0D0 8002C8D0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1D0D4 8002C8D4 0A80123C */  lui        $s2, %hi(D_800987D8)
    /* 1D0D8 8002C8D8 D887528E */  lw         $s2, %lo(D_800987D8)($s2)
    /* 1D0DC 8002C8DC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1D0E0 8002C8E0 21808000 */  addu       $s0, $a0, $zero
    /* 1D0E4 8002C8E4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 1D0E8 8002C8E8 21A0A000 */  addu       $s4, $a1, $zero
    /* 1D0EC 8002C8EC 2400B5AF */  sw         $s5, 0x24($sp)
    /* 1D0F0 8002C8F0 21A8C000 */  addu       $s5, $a2, $zero
    /* 1D0F4 8002C8F4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1D0F8 8002C8F8 2198E000 */  addu       $s3, $a3, $zero
    /* 1D0FC 8002C8FC 2800BFAF */  sw         $ra, 0x28($sp)
    /* 1D100 8002C900 4000422E */  sltiu      $v0, $s2, 0x40
    /* 1D104 8002C904 38004010 */  beqz       $v0, .L8002C9E8
    /* 1D108 8002C908 1400B1AF */   sw        $s1, 0x14($sp)
    /* 1D10C 8002C90C 40101200 */  sll        $v0, $s2, 1
    /* 1D110 8002C910 21105200 */  addu       $v0, $v0, $s2
    /* 1D114 8002C914 14000396 */  lhu        $v1, 0x14($s0)
    /* 1D118 8002C918 80880200 */  sll        $s1, $v0, 2
    /* 1D11C 8002C91C 0B80013C */  lui        $at, %hi(D_800ACE00)
    /* 1D120 8002C920 21083100 */  addu       $at, $at, $s1
    /* 1D124 8002C924 00CE23A4 */  sh         $v1, %lo(D_800ACE00)($at)
    /* 1D128 8002C928 76000282 */  lb         $v0, 0x76($s0)
    /* 1D12C 8002C92C 00000000 */  nop
    /* 1D130 8002C930 04004010 */  beqz       $v0, .L8002C944
    /* 1D134 8002C934 00000000 */   nop
    /* 1D138 8002C938 16000586 */  lh         $a1, 0x16($s0)
    /* 1D13C 8002C93C 59B20008 */  j          .L8002C964
    /* 1D140 8002C940 00000000 */   nop
  .L8002C944:
    /* 1D144 8002C944 9B23010C */  jal        func_80048E6C
    /* 1D148 8002C948 21200002 */   addu      $a0, $s0, $zero
    /* 1D14C 8002C94C 16000386 */  lh         $v1, 0x16($s0)
    /* 1D150 8002C950 21284000 */  addu       $a1, $v0, $zero
    /* 1D154 8002C954 2A10A300 */  slt        $v0, $a1, $v1
    /* 1D158 8002C958 02004010 */  beqz       $v0, .L8002C964
    /* 1D15C 8002C95C 00000000 */   nop
    /* 1D160 8002C960 21286000 */  addu       $a1, $v1, $zero
  .L8002C964:
    /* 1D164 8002C964 0B80013C */  lui        $at, %hi(D_800ACE02)
    /* 1D168 8002C968 21083100 */  addu       $at, $at, $s1
    /* 1D16C 8002C96C 02CE25A4 */  sh         $a1, %lo(D_800ACE02)($at)
    /* 1D170 8002C970 40201200 */  sll        $a0, $s2, 1
    /* 1D174 8002C974 21209200 */  addu       $a0, $a0, $s2
    /* 1D178 8002C978 18000296 */  lhu        $v0, 0x18($s0)
    /* 1D17C 8002C97C 80200400 */  sll        $a0, $a0, 2
    /* 1D180 8002C980 0B80013C */  lui        $at, %hi(D_800ACE04)
    /* 1D184 8002C984 21082400 */  addu       $at, $at, $a0
    /* 1D188 8002C988 04CE22A4 */  sh         $v0, %lo(D_800ACE04)($at)
    /* 1D18C 8002C98C 80131300 */  sll        $v0, $s3, 14
    /* 1D190 8002C990 56000396 */  lhu        $v1, 0x56($s0)
    /* 1D194 8002C994 25108202 */  or         $v0, $s4, $v0
    /* 1D198 8002C998 0B80013C */  lui        $at, %hi(D_800ACE08)
    /* 1D19C 8002C99C 21082400 */  addu       $at, $at, $a0
    /* 1D1A0 8002C9A0 08CE22A4 */  sh         $v0, %lo(D_800ACE08)($at)
    /* 1D1A4 8002C9A4 83111500 */  sra        $v0, $s5, 6
    /* 1D1A8 8002C9A8 00130200 */  sll        $v0, $v0, 12
    /* 1D1AC 8002C9AC FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* 1D1B0 8002C9B0 25186200 */  or         $v1, $v1, $v0
    /* 1D1B4 8002C9B4 0A80023C */  lui        $v0, %hi(D_800987D8)
    /* 1D1B8 8002C9B8 D887428C */  lw         $v0, %lo(D_800987D8)($v0)
    /* 1D1BC 8002C9BC 0B80013C */  lui        $at, %hi(D_800ACE06)
    /* 1D1C0 8002C9C0 21082400 */  addu       $at, $at, $a0
    /* 1D1C4 8002C9C4 06CE23A4 */  sh         $v1, %lo(D_800ACE06)($at)
    /* 1D1C8 8002C9C8 16000396 */  lhu        $v1, 0x16($s0)
    /* 1D1CC 8002C9CC 01004224 */  addiu      $v0, $v0, 0x1
    /* 1D1D0 8002C9D0 2318A300 */  subu       $v1, $a1, $v1
    /* 1D1D4 8002C9D4 0A80013C */  lui        $at, %hi(D_800987D8)
    /* 1D1D8 8002C9D8 D88722AC */  sw         $v0, %lo(D_800987D8)($at)
    /* 1D1DC 8002C9DC 0B80013C */  lui        $at, %hi(D_800ACE0A)
    /* 1D1E0 8002C9E0 21082400 */  addu       $at, $at, $a0
    /* 1D1E4 8002C9E4 0ACE23A4 */  sh         $v1, %lo(D_800ACE0A)($at)
  .L8002C9E8:
    /* 1D1E8 8002C9E8 2800BF8F */  lw         $ra, 0x28($sp)
    /* 1D1EC 8002C9EC 2400B58F */  lw         $s5, 0x24($sp)
    /* 1D1F0 8002C9F0 2000B48F */  lw         $s4, 0x20($sp)
    /* 1D1F4 8002C9F4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1D1F8 8002C9F8 1800B28F */  lw         $s2, 0x18($sp)
    /* 1D1FC 8002C9FC 1400B18F */  lw         $s1, 0x14($sp)
    /* 1D200 8002CA00 1000B08F */  lw         $s0, 0x10($sp)
    /* 1D204 8002CA04 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1D208 8002CA08 0800E003 */  jr         $ra
    /* 1D20C 8002CA0C 00000000 */   nop
.size func_8002C8CC, . - func_8002C8CC
