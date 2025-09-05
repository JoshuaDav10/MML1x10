.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003FE7C
    /* 3067C 8003FE7C 25104400 */  or         $v0, $v0, $a0
    /* 30680 8003FE80 25186500 */  or         $v1, $v1, $a1
    /* 30684 8003FE84 25104300 */  or         $v0, $v0, $v1
    /* 30688 8003FE88 24102202 */  and        $v0, $s1, $v0
    /* 3068C 8003FE8C 3E004010 */  beqz       $v0, .L8003FF88
    /* 30690 8003FE90 21200002 */   addu      $a0, $s0, $zero
    /* 30694 8003FE94 DA02010C */  jal        func_80040B68
    /* 30698 8003FE98 21280000 */   addu      $a1, $zero, $zero
    /* 3069C 8003FE9C 3C004014 */  bnez       $v0, .L8003FF90
    /* 306A0 8003FEA0 00000000 */   nop
    /* 306A4 8003FEA4 AA01010C */  jal        func_800406A8
    /* 306A8 8003FEA8 21200002 */   addu      $a0, $s0, $zero
    /* 306AC 8003FEAC 38004014 */  bnez       $v0, .L8003FF90
    /* 306B0 8003FEB0 00000000 */   nop
    /* 306B4 8003FEB4 1104010C */  jal        func_80041044
    /* 306B8 8003FEB8 21200002 */   addu      $a0, $s0, $zero
    /* 306BC 8003FEBC 16004014 */  bnez       $v0, .L8003FF18
    /* 306C0 8003FEC0 21200002 */   addu      $a0, $s0, $zero
    /* 306C4 8003FEC4 F500010C */  jal        func_800403D4
    /* 306C8 8003FEC8 21280000 */   addu      $a1, $zero, $zero
    /* 306CC 8003FECC 30004014 */  bnez       $v0, .L8003FF90
    /* 306D0 8003FED0 21200002 */   addu      $a0, $s0, $zero
    /* 306D4 8003FED4 1A01010C */  jal        func_80040468
    /* 306D8 8003FED8 21280000 */   addu      $a1, $zero, $zero
    /* 306DC 8003FEDC 2C004014 */  bnez       $v0, .L8003FF90
    /* 306E0 8003FEE0 00000000 */   nop
    /* 306E4 8003FEE4 E000010C */  jal        func_80040380
    /* 306E8 8003FEE8 21200002 */   addu      $a0, $s0, $zero
    /* 306EC 8003FEEC 28004014 */  bnez       $v0, .L8003FF90
    /* 306F0 8003FEF0 00000000 */   nop
    /* 306F4 8003FEF4 74010282 */  lb         $v0, 0x174($s0)
    /* 306F8 8003FEF8 00000000 */  nop
    /* 306FC 8003FEFC C0004230 */  andi       $v0, $v0, 0xC0
    /* 30700 8003FF00 1A004014 */  bnez       $v0, .L8003FF6C
    /* 30704 8003FF04 21200002 */   addu      $a0, $s0, $zero
    /* 30708 8003FF08 3F01010C */  jal        func_800404FC
.size func_8003FE7C, . - func_8003FE7C
