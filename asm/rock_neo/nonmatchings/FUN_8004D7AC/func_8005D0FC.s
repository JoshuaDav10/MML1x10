.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D0FC
    /* 4D8FC 8005D0FC B412828F */  lw         $v0, %gp_rel(D_80098B18)($gp)
    /* 4D900 8005D100 0C80033C */  lui        $v1, %hi(Game_work + 0x5C)
    /* 4D904 8005D104 6C1B6384 */  lh         $v1, %lo(Game_work + 0x5C)($v1)
    /* 4D908 8005D108 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 4D90C 8005D10C 2800BFAF */  sw         $ra, 0x28($sp)
    /* 4D910 8005D110 2400B5AF */  sw         $s5, 0x24($sp)
    /* 4D914 8005D114 2000B4AF */  sw         $s4, 0x20($sp)
    /* 4D918 8005D118 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 4D91C 8005D11C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4D920 8005D120 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4D924 8005D124 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4D928 8005D128 04004234 */  ori        $v0, $v0, 0x4
    /* 4D92C 8005D12C B41282AF */  sw         $v0, %gp_rel(D_80098B18)($gp)
    /* 4D930 8005D130 0C008590 */  lbu        $a1, 0xC($a0)
    /* 4D934 8005D134 01000224 */  addiu      $v0, $zero, 0x1
    /* 4D938 8005D138 0410A200 */  sllv       $v0, $v0, $a1
    /* 4D93C 8005D13C 04006018 */  blez       $v1, .L8005D150
    /* 4D940 8005D140 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 4D944 8005D144 21106200 */  addu       $v0, $v1, $v0
    /* 4D948 8005D148 55740108 */  j          .L8005D154
    /* 4D94C 8005D14C 0690A200 */   srlv      $s2, $v0, $a1
  .L8005D150:
    /* 4D950 8005D150 21900000 */  addu       $s2, $zero, $zero
  .L8005D154:
    /* 4D954 8005D154 0C80023C */  lui        $v0, %hi(Game_work + 0x5E)
    /* 4D958 8005D158 6E1B4284 */  lh         $v0, %lo(Game_work + 0x5E)($v0)
    /* 4D95C 8005D15C 0E008390 */  lbu        $v1, 0xE($a0)
    /* 4D960 8005D160 00000000 */  nop
    /* 4D964 8005D164 05006010 */  beqz       $v1, .L8005D17C
    /* 4D968 8005D168 07A8A200 */   srav      $s5, $v0, $a1
    /* 4D96C 8005D16C 14009084 */  lh         $s0, 0x14($a0)
    /* 4D970 8005D170 16008684 */  lh         $a2, 0x16($a0)
    /* 4D974 8005D174 61740108 */  j          .L8005D184
    /* 4D978 8005D178 00000000 */   nop
  .L8005D17C:
    /* 4D97C 8005D17C 21800000 */  addu       $s0, $zero, $zero
    /* 4D980 8005D180 18000624 */  addiu      $a2, $zero, 0x18
  .L8005D184:
    /* 4D984 8005D184 0D008290 */  lbu        $v0, 0xD($a0)
    /* 4D988 8005D188 00000000 */  nop
    /* 4D98C 8005D18C 05004010 */  beqz       $v0, .L8005D1A4
    /* 4D990 8005D190 00000000 */   nop
    /* 4D994 8005D194 18008284 */  lh         $v0, 0x18($a0)
    /* 4D998 8005D198 1A008384 */  lh         $v1, 0x1A($a0)
    /* 4D99C 8005D19C 21800202 */  addu       $s0, $s0, $v0
    /* 4D9A0 8005D1A0 2130C300 */  addu       $a2, $a2, $v1
  .L8005D1A4:
    /* 4D9A4 8005D1A4 0980133C */  lui        $s3, %hi(D_8008D750)
    /* 4D9A8 8005D1A8 50D77326 */  addiu      $s3, $s3, %lo(D_8008D750)
    /* 4D9AC 8005D1AC 21206002 */  addu       $a0, $s3, $zero
    /* 4D9B0 8005D1B0 00141000 */  sll        $v0, $s0, 16
    /* 4D9B4 8005D1B4 03A40200 */  sra        $s4, $v0, 16
    /* 4D9B8 8005D1B8 21288002 */  addu       $a1, $s4, $zero
    /* 4D9BC 8005D1BC 00140600 */  sll        $v0, $a2, 16
    /* 4D9C0 8005D1C0 038C0200 */  sra        $s1, $v0, 16
    /* 4D9C4 8005D1C4 21302002 */  addu       $a2, $s1, $zero
    /* 4D9C8 8005D1C8 A674010C */  jal        func_8005D298
    /* 4D9CC 8005D1CC 21380000 */   addu      $a3, $zero, $zero
    /* 4D9D0 8005D1D0 14006426 */  addiu      $a0, $s3, 0x14
    /* 4D9D4 8005D1D4 21281502 */  addu       $a1, $s0, $s5
    /* 4D9D8 8005D1D8 002C0500 */  sll        $a1, $a1, 16
    /* 4D9DC 8005D1DC 032C0500 */  sra        $a1, $a1, 16
    /* 4D9E0 8005D1E0 21302002 */  addu       $a2, $s1, $zero
    /* 4D9E4 8005D1E4 A674010C */  jal        func_8005D298
    /* 4D9E8 8005D1E8 21380000 */   addu      $a3, $zero, $zero
    /* 4D9EC 8005D1EC 1700401A */  blez       $s2, .L8005D24C
    /* 4D9F0 8005D1F0 3C006426 */   addiu     $a0, $s3, 0x3C
    /* 4D9F4 8005D1F4 FFFF0526 */  addiu      $a1, $s0, -0x1
    /* 4D9F8 8005D1F8 002C0500 */  sll        $a1, $a1, 16
    /* 4D9FC 8005D1FC 032C0500 */  sra        $a1, $a1, 16
    /* 4DA00 8005D200 0980073C */  lui        $a3, %hi(D_8008D796)
    /* 4DA04 8005D204 96D7E794 */  lhu        $a3, %lo(D_8008D796)($a3)
    /* 4DA08 8005D208 21302002 */  addu       $a2, $s1, $zero
    /* 4DA0C 8005D20C 003A0700 */  sll        $a3, $a3, 8
    /* 4DA10 8005D210 2538F200 */  or         $a3, $a3, $s2
    /* 4DA14 8005D214 A674010C */  jal        func_8005D298
    /* 4DA18 8005D218 FFFFE730 */   andi      $a3, $a3, 0xFFFF
    /* 4DA1C 8005D21C 50006426 */  addiu      $a0, $s3, 0x50
    /* 4DA20 8005D220 21281202 */  addu       $a1, $s0, $s2
    /* 4DA24 8005D224 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 4DA28 8005D228 002C0500 */  sll        $a1, $a1, 16
    /* 4DA2C 8005D22C 032C0500 */  sra        $a1, $a1, 16
    /* 4DA30 8005D230 0980073C */  lui        $a3, %hi(D_8008D7AA)
    /* 4DA34 8005D234 AAD7E794 */  lhu        $a3, %lo(D_8008D7AA)($a3)
    /* 4DA38 8005D238 21302002 */  addu       $a2, $s1, $zero
    /* 4DA3C 8005D23C 003A0700 */  sll        $a3, $a3, 8
    /* 4DA40 8005D240 0100E734 */  ori        $a3, $a3, 0x1
    /* 4DA44 8005D244 A674010C */  jal        func_8005D298
    /* 4DA48 8005D248 01FFE730 */   andi      $a3, $a3, 0xFF01
  .L8005D24C:
    /* 4DA4C 8005D24C 28006426 */  addiu      $a0, $s3, 0x28
    /* 4DA50 8005D250 21288002 */  addu       $a1, $s4, $zero
    /* 4DA54 8005D254 0980073C */  lui        $a3, %hi(D_8008D782)
    /* 4DA58 8005D258 82D7E794 */  lhu        $a3, %lo(D_8008D782)($a3)
    /* 4DA5C 8005D25C 21302002 */  addu       $a2, $s1, $zero
    /* 4DA60 8005D260 003A0700 */  sll        $a3, $a3, 8
    /* 4DA64 8005D264 2538F500 */  or         $a3, $a3, $s5
    /* 4DA68 8005D268 A674010C */  jal        func_8005D298
    /* 4DA6C 8005D26C FFFFE730 */   andi      $a3, $a3, 0xFFFF
    /* 4DA70 8005D270 2800BF8F */  lw         $ra, 0x28($sp)
    /* 4DA74 8005D274 2400B58F */  lw         $s5, 0x24($sp)
    /* 4DA78 8005D278 2000B48F */  lw         $s4, 0x20($sp)
    /* 4DA7C 8005D27C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 4DA80 8005D280 1800B28F */  lw         $s2, 0x18($sp)
    /* 4DA84 8005D284 1400B18F */  lw         $s1, 0x14($sp)
    /* 4DA88 8005D288 1000B08F */  lw         $s0, 0x10($sp)
    /* 4DA8C 8005D28C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 4DA90 8005D290 0800E003 */  jr         $ra
    /* 4DA94 8005D294 00000000 */   nop
.size func_8005D0FC, . - func_8005D0FC
