.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004019C
    /* 3099C 8004019C 16003086 */  lh         $s0, 0x16($s1)
    /* 309A0 800401A0 9B23010C */  jal        func_80048E6C
    /* 309A4 800401A4 00000000 */   nop
    /* 309A8 800401A8 7800238E */  lw         $v1, 0x78($s1)
    /* 309AC 800401AC 00000000 */  nop
    /* 309B0 800401B0 0A006384 */  lh         $v1, 0xA($v1)
    /* 309B4 800401B4 E0FF4224 */  addiu      $v0, $v0, -0x20
    /* 309B8 800401B8 23104300 */  subu       $v0, $v0, $v1
    /* 309BC 800401BC 2A105000 */  slt        $v0, $v0, $s0
    /* 309C0 800401C0 12004010 */  beqz       $v0, .L8004020C
    /* 309C4 800401C4 21202002 */   addu      $a0, $s1, $zero
    /* 309C8 800401C8 07000224 */  addiu      $v0, $zero, 0x7
    /* 309CC 800401CC 090022A2 */  sb         $v0, 0x9($s1)
    /* 309D0 800401D0 04000224 */  addiu      $v0, $zero, 0x4
    /* 309D4 800401D4 0A0022A6 */  sh         $v0, 0xA($s1)
    /* 309D8 800401D8 01000224 */  addiu      $v0, $zero, 0x1
    /* 309DC 800401DC 750022A2 */  sb         $v0, 0x75($s1)
    /* 309E0 800401E0 740022A2 */  sb         $v0, 0x74($s1)
    /* 309E4 800401E4 D6FF0224 */  addiu      $v0, $zero, -0x2A
    /* 309E8 800401E8 440022A6 */  sh         $v0, 0x44($s1)
    /* 309EC 800401EC 460020A6 */  sh         $zero, 0x46($s1)
    /* 309F0 800401F0 F208010C */  jal        Pl00_shot_enable_on
    /* 309F4 800401F4 480020A6 */   sh        $zero, 0x48($s1)
    /* 309F8 800401F8 21202002 */  addu       $a0, $s1, $zero
    /* 309FC 800401FC 12000524 */  addiu      $a1, $zero, 0x12
    /* 30A00 80040200 21300000 */  addu       $a2, $zero, $zero
    /* 30A04 80040204 7707010C */  jal        func_80041DDC
    /* 30A08 80040208 01000724 */   addiu     $a3, $zero, 0x1
  .L8004020C:
    /* 30A0C 8004020C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 30A10 80040210 1400B18F */  lw         $s1, 0x14($sp)
    /* 30A14 80040214 1000B08F */  lw         $s0, 0x10($sp)
    /* 30A18 80040218 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 30A1C 8004021C 0800E003 */  jr         $ra
    /* 30A20 80040220 00000000 */   nop
.size func_8004019C, . - func_8004019C
