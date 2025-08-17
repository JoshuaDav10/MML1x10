.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003D124
    /* 2D924 8003D124 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2D928 8003D128 21308000 */  addu       $a2, $a0, $zero
    /* 2D92C 8003D12C 002C0500 */  sll        $a1, $a1, 16
    /* 2D930 8003D130 432B0500 */  sra        $a1, $a1, 13
    /* 2D934 8003D134 2128C500 */  addu       $a1, $a2, $a1
    /* 2D938 8003D138 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2D93C 8003D13C 1C01C794 */  lhu        $a3, 0x11C($a2)
    /* 2D940 8003D140 4801A494 */  lhu        $a0, 0x148($a1)
    /* 2D944 8003D144 4A01A594 */  lhu        $a1, 0x14A($a1)
    /* 2D948 8003D148 FFFFE230 */  andi       $v0, $a3, 0xFFFF
    /* 2D94C 8003D14C 24184400 */  and        $v1, $v0, $a0
    /* 2D950 8003D150 19006010 */  beqz       $v1, .L8003D1B8
    /* 2D954 8003D154 00000000 */   nop
    /* 2D958 8003D158 17006410 */  beq        $v1, $a0, .L8003D1B8
    /* 2D95C 8003D15C 24104500 */   and       $v0, $v0, $a1
    /* 2D960 8003D160 0B004010 */  beqz       $v0, .L8003D190
    /* 2D964 8003D164 C0FE0324 */   addiu     $v1, $zero, -0x140
    /* 2D968 8003D168 2801C294 */  lhu        $v0, 0x128($a2)
    /* 2D96C 8003D16C 2A01C494 */  lhu        $a0, 0x12A($a2)
    /* 2D970 8003D170 00000000 */  nop
    /* 2D974 8003D174 25104400 */  or         $v0, $v0, $a0
    /* 2D978 8003D178 2410E200 */  and        $v0, $a3, $v0
    /* 2D97C 8003D17C 0F004014 */  bnez       $v0, .L8003D1BC
    /* 2D980 8003D180 4800C3A4 */   sh        $v1, 0x48($a2)
    /* 2D984 8003D184 40000224 */  addiu      $v0, $zero, 0x40
    /* 2D988 8003D188 6FF40008 */  j          .L8003D1BC
    /* 2D98C 8003D18C B400C2A4 */   sh        $v0, 0xB4($a2)
  .L8003D190:
    /* 2D990 8003D190 2801C294 */  lhu        $v0, 0x128($a2)
    /* 2D994 8003D194 2A01C494 */  lhu        $a0, 0x12A($a2)
    /* 2D998 8003D198 40010324 */  addiu      $v1, $zero, 0x140
    /* 2D99C 8003D19C 25104400 */  or         $v0, $v0, $a0
    /* 2D9A0 8003D1A0 2410E200 */  and        $v0, $a3, $v0
    /* 2D9A4 8003D1A4 05004014 */  bnez       $v0, .L8003D1BC
    /* 2D9A8 8003D1A8 4800C3A4 */   sh        $v1, 0x48($a2)
    /* 2D9AC 8003D1AC C0FF0224 */  addiu      $v0, $zero, -0x40
    /* 2D9B0 8003D1B0 6FF40008 */  j          .L8003D1BC
    /* 2D9B4 8003D1B4 B400C2A4 */   sh        $v0, 0xB4($a2)
  .L8003D1B8:
    /* 2D9B8 8003D1B8 4800C0A4 */  sh         $zero, 0x48($a2)
  .L8003D1BC:
    /* 2D9BC 8003D1BC 2120C000 */  addu       $a0, $a2, $zero
    /* 2D9C0 8003D1C0 44008584 */  lh         $a1, 0x44($a0)
    /* 2D9C4 8003D1C4 48008784 */  lh         $a3, 0x48($a0)
    /* 2D9C8 8003D1C8 A407010C */  jal        func_80041E90
    /* 2D9CC 8003D1CC 21300000 */   addu      $a2, $zero, $zero
    /* 2D9D0 8003D1D0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2D9D4 8003D1D4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2D9D8 8003D1D8 0800E003 */  jr         $ra
    /* 2D9DC 8003D1DC 00000000 */   nop
.size func_8003D124, . - func_8003D124
