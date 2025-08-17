.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800461A4
    /* 369A4 800461A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 369A8 800461A8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 369AC 800461AC 21808000 */  addu       $s0, $a0, $zero
    /* 369B0 800461B0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 369B4 800461B4 00000292 */  lbu        $v0, 0x0($s0)
    /* 369B8 800461B8 03000526 */  addiu      $a1, $s0, 0x3
    /* 369BC 800461BC 02004234 */  ori        $v0, $v0, 0x2
    /* 369C0 800461C0 71BE000C */  jal        func_8002F9C4
    /* 369C4 800461C4 000002A2 */   sb        $v0, 0x0($s0)
    /* 369C8 800461C8 9B000424 */  addiu      $a0, $zero, 0x9B
    /* 369CC 800461CC 08000292 */  lbu        $v0, 0x8($s0)
    /* 369D0 800461D0 38000526 */  addiu      $a1, $s0, 0x38
    /* 369D4 800461D4 01004224 */  addiu      $v0, $v0, 0x1
    /* 369D8 800461D8 1468000C */  jal        Sound_call2
    /* 369DC 800461DC 080002A2 */   sb        $v0, 0x8($s0)
    /* 369E0 800461E0 03000292 */  lbu        $v0, 0x3($s0)
    /* 369E4 800461E4 00000000 */  nop
    /* 369E8 800461E8 05004010 */  beqz       $v0, .L80046200
    /* 369EC 800461EC 00000000 */   nop
    /* 369F0 800461F0 241A010C */  jal        func_80046890
    /* 369F4 800461F4 21200002 */   addu      $a0, $s0, $zero
    /* 369F8 800461F8 82180108 */  j          .L80046208
    /* 369FC 800461FC 00000000 */   nop
  .L80046200:
    /* 36A00 80046200 691A010C */  jal        func_800469A4
    /* 36A04 80046204 21200002 */   addu      $a0, $s0, $zero
  .L80046208:
    /* 36A08 80046208 831A010C */  jal        func_80046A0C
    /* 36A0C 8004620C 21200002 */   addu      $a0, $s0, $zero
    /* 36A10 80046210 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 36A14 80046214 0B0002A2 */  sb         $v0, 0xB($s0)
    /* 36A18 80046218 1400BF8F */  lw         $ra, 0x14($sp)
    /* 36A1C 8004621C 1000B08F */  lw         $s0, 0x10($sp)
    /* 36A20 80046220 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 36A24 80046224 0800E003 */  jr         $ra
    /* 36A28 80046228 00000000 */   nop
.size func_800461A4, . - func_800461A4
