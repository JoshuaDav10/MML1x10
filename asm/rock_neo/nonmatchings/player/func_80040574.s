.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80040574
    /* 30D74 80040574 1C018394 */  lhu        $v1, 0x11C($a0)
    /* 30D78 80040578 34018294 */  lhu        $v0, 0x134($a0)
    /* 30D7C 8004057C 00000000 */  nop
    /* 30D80 80040580 24104300 */  and        $v0, $v0, $v1
    /* 30D84 80040584 17004010 */  beqz       $v0, .L800405E4
    /* 30D88 80040588 00000000 */   nop
    /* 30D8C 8004058C 6B018290 */  lbu        $v0, 0x16B($a0)
    /* 30D90 80040590 00000000 */  nop
    /* 30D94 80040594 02004230 */  andi       $v0, $v0, 0x2
    /* 30D98 80040598 12004010 */  beqz       $v0, .L800405E4
    /* 30D9C 8004059C 00000000 */   nop
    /* 30DA0 800405A0 4A048290 */  lbu        $v0, 0x44A($a0)
    /* 30DA4 800405A4 00000000 */  nop
    /* 30DA8 800405A8 01004224 */  addiu      $v0, $v0, 0x1
    /* 30DAC 800405AC 4A0482A0 */  sb         $v0, 0x44A($a0)
    /* 30DB0 800405B0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 30DB4 800405B4 0900422C */  sltiu      $v0, $v0, 0x9
    /* 30DB8 800405B8 0C004014 */  bnez       $v0, .L800405EC
    /* 30DBC 800405BC 21100000 */   addu      $v0, $zero, $zero
    /* 30DC0 800405C0 4B048290 */  lbu        $v0, 0x44B($a0)
    /* 30DC4 800405C4 00000000 */  nop
    /* 30DC8 800405C8 08004014 */  bnez       $v0, .L800405EC
    /* 30DCC 800405CC 21100000 */   addu      $v0, $zero, $zero
    /* 30DD0 800405D0 01000224 */  addiu      $v0, $zero, 0x1
    /* 30DD4 800405D4 03000324 */  addiu      $v1, $zero, 0x3
    /* 30DD8 800405D8 090083A0 */  sb         $v1, 0x9($a0)
    /* 30DDC 800405DC 7B010108 */  j          .L800405EC
    /* 30DE0 800405E0 0A0080A4 */   sh        $zero, 0xA($a0)
  .L800405E4:
    /* 30DE4 800405E4 4A0480A0 */  sb         $zero, 0x44A($a0)
    /* 30DE8 800405E8 21100000 */  addu       $v0, $zero, $zero
  .L800405EC:
    /* 30DEC 800405EC 0800E003 */  jr         $ra
    /* 30DF0 800405F0 00000000 */   nop
.size func_80040574, . - func_80040574
