.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002D0D0
    /* 1D8D0 8002D0D0 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1D8D4 8002D0D4 21708000 */  addu       $t6, $a0, $zero
    /* 1D8D8 8002D0D8 21400000 */  addu       $t0, $zero, $zero
    /* 1D8DC 8002D0DC 0000C68D */  lw         $a2, 0x0($t6)
    /* 1D8E0 8002D0E0 0400CD8D */  lw         $t5, 0x4($t6)
    /* 1D8E4 8002D0E4 FF00CA30 */  andi       $t2, $a2, 0xFF
    /* 1D8E8 8002D0E8 02120600 */  srl        $v0, $a2, 8
    /* 1D8EC 8002D0EC FF004B30 */  andi       $t3, $v0, 0xFF
    /* 1D8F0 8002D0F0 00190A00 */  sll        $v1, $t2, 4
    /* 1D8F4 8002D0F4 21186A00 */  addu       $v1, $v1, $t2
    /* 1D8F8 8002D0F8 80180300 */  sll        $v1, $v1, 2
    /* 1D8FC 8002D0FC 2118A301 */  addu       $v1, $t5, $v1
    /* 1D900 8002D100 80100B00 */  sll        $v0, $t3, 2
    /* 1D904 8002D104 21104B00 */  addu       $v0, $v0, $t3
    /* 1D908 8002D108 80100200 */  sll        $v0, $v0, 2
    /* 1D90C 8002D10C 21104B00 */  addu       $v0, $v0, $t3
    /* 1D910 8002D110 80100200 */  sll        $v0, $v0, 2
    /* 1D914 8002D114 1A004011 */  beqz       $t2, .L8002D180
    /* 1D918 8002D118 21606200 */   addu      $t4, $v1, $v0
    /* 1D91C 8002D11C 21480000 */  addu       $t1, $zero, $zero
  .L8002D120:
    /* 1D920 8002D120 21300000 */  addu       $a2, $zero, $zero
    /* 1D924 8002D124 21382001 */  addu       $a3, $t1, $zero
  .L8002D128:
    /* 1D928 8002D128 80180700 */  sll        $v1, $a3, 2
    /* 1D92C 8002D12C 21206C00 */  addu       $a0, $v1, $t4
    /* 1D930 8002D130 0C00828C */  lw         $v0, 0xC($a0)
    /* 1D934 8002D134 21186D00 */  addu       $v1, $v1, $t5
    /* 1D938 8002D138 21104500 */  addu       $v0, $v0, $a1
    /* 1D93C 8002D13C 0C0062AC */  sw         $v0, 0xC($v1)
    /* 1D940 8002D140 1400828C */  lw         $v0, 0x14($a0)
    /* 1D944 8002D144 00000000 */  nop
    /* 1D948 8002D148 21104500 */  addu       $v0, $v0, $a1
    /* 1D94C 8002D14C 140062AC */  sw         $v0, 0x14($v1)
    /* 1D950 8002D150 1C00828C */  lw         $v0, 0x1C($a0)
    /* 1D954 8002D154 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1D958 8002D158 21104500 */  addu       $v0, $v0, $a1
    /* 1D95C 8002D15C 1C0062AC */  sw         $v0, 0x1C($v1)
    /* 1D960 8002D160 0200C22C */  sltiu      $v0, $a2, 0x2
    /* 1D964 8002D164 F0FF4014 */  bnez       $v0, .L8002D128
    /* 1D968 8002D168 0800E724 */   addiu     $a3, $a3, 0x8
    /* 1D96C 8002D16C 01000825 */  addiu      $t0, $t0, 0x1
    /* 1D970 8002D170 2B100A01 */  sltu       $v0, $t0, $t2
    /* 1D974 8002D174 EAFF4014 */  bnez       $v0, .L8002D120
    /* 1D978 8002D178 11002925 */   addiu     $t1, $t1, 0x11
    /* 1D97C 8002D17C 21400000 */  addu       $t0, $zero, $zero
  .L8002D180:
    /* 1D980 8002D180 0800CC8D */  lw         $t4, 0x8($t6)
    /* 1D984 8002D184 00190A00 */  sll        $v1, $t2, 4
    /* 1D988 8002D188 21186A00 */  addu       $v1, $v1, $t2
    /* 1D98C 8002D18C 80180300 */  sll        $v1, $v1, 2
    /* 1D990 8002D190 80100B00 */  sll        $v0, $t3, 2
    /* 1D994 8002D194 21104B00 */  addu       $v0, $v0, $t3
    /* 1D998 8002D198 80100200 */  sll        $v0, $v0, 2
    /* 1D99C 8002D19C 21104B00 */  addu       $v0, $v0, $t3
    /* 1D9A0 8002D1A0 80100200 */  sll        $v0, $v0, 2
    /* 1D9A4 8002D1A4 21188301 */  addu       $v1, $t4, $v1
    /* 1D9A8 8002D1A8 1D006011 */  beqz       $t3, .L8002D220
    /* 1D9AC 8002D1AC 21506200 */   addu      $t2, $v1, $v0
    /* 1D9B0 8002D1B0 21480000 */  addu       $t1, $zero, $zero
  .L8002D1B4:
    /* 1D9B4 8002D1B4 21300000 */  addu       $a2, $zero, $zero
    /* 1D9B8 8002D1B8 21382001 */  addu       $a3, $t1, $zero
  .L8002D1BC:
    /* 1D9BC 8002D1BC 80180700 */  sll        $v1, $a3, 2
    /* 1D9C0 8002D1C0 21206A00 */  addu       $a0, $v1, $t2
    /* 1D9C4 8002D1C4 0C00828C */  lw         $v0, 0xC($a0)
    /* 1D9C8 8002D1C8 21186C00 */  addu       $v1, $v1, $t4
    /* 1D9CC 8002D1CC 21104500 */  addu       $v0, $v0, $a1
    /* 1D9D0 8002D1D0 0C0062AC */  sw         $v0, 0xC($v1)
    /* 1D9D4 8002D1D4 1400828C */  lw         $v0, 0x14($a0)
    /* 1D9D8 8002D1D8 00000000 */  nop
    /* 1D9DC 8002D1DC 21104500 */  addu       $v0, $v0, $a1
    /* 1D9E0 8002D1E0 140062AC */  sw         $v0, 0x14($v1)
    /* 1D9E4 8002D1E4 1C00828C */  lw         $v0, 0x1C($a0)
    /* 1D9E8 8002D1E8 00000000 */  nop
    /* 1D9EC 8002D1EC 21104500 */  addu       $v0, $v0, $a1
    /* 1D9F0 8002D1F0 1C0062AC */  sw         $v0, 0x1C($v1)
    /* 1D9F4 8002D1F4 2400828C */  lw         $v0, 0x24($a0)
    /* 1D9F8 8002D1F8 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1D9FC 8002D1FC 21104500 */  addu       $v0, $v0, $a1
    /* 1DA00 8002D200 240062AC */  sw         $v0, 0x24($v1)
    /* 1DA04 8002D204 0200C22C */  sltiu      $v0, $a2, 0x2
    /* 1DA08 8002D208 ECFF4014 */  bnez       $v0, .L8002D1BC
    /* 1DA0C 8002D20C 0A00E724 */   addiu     $a3, $a3, 0xA
    /* 1DA10 8002D210 01000825 */  addiu      $t0, $t0, 0x1
    /* 1DA14 8002D214 2B100B01 */  sltu       $v0, $t0, $t3
    /* 1DA18 8002D218 E6FF4014 */  bnez       $v0, .L8002D1B4
    /* 1DA1C 8002D21C 15002925 */   addiu     $t1, $t1, 0x15
  .L8002D220:
    /* 1DA20 8002D220 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 1DA24 8002D224 0800E003 */  jr         $ra
    /* 1DA28 8002D228 00000000 */   nop
.size func_8002D0D0, . - func_8002D0D0
