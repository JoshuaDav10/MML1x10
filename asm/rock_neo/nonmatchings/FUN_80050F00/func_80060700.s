.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060700
    /* 50F00 80060700 0B4E010C */  jal        MojiTaskExec
    /* 50F04 80060704 2F000624 */   addiu     $a2, $zero, 0x2F
    /* 50F08 80060708 72012282 */  lb         $v0, 0x172($s1)
    /* 50F0C 8006070C 00000000 */  nop
    /* 50F10 80060710 06004014 */  bnez       $v0, .L8006072C
    /* 50F14 80060714 01000424 */   addiu     $a0, $zero, 0x1
    /* 50F18 80060718 21200000 */  addu       $a0, $zero, $zero
    /* 50F1C 8006071C 0200053C */  lui        $a1, (0x2001C >> 16)
    /* 50F20 80060720 F08F010C */  jal        func_80063FC0
    /* 50F24 80060724 1C00A534 */   ori       $a1, $a1, (0x2001C & 0xFFFF)
    /* 50F28 80060728 01000424 */  addiu      $a0, $zero, 0x1
  .L8006072C:
    /* 50F2C 8006072C 0200053C */  lui        $a1, (0x20009 >> 16)
    /* 50F30 80060730 F08F010C */  jal        func_80063FC0
    /* 50F34 80060734 0900A534 */   ori       $a1, $a1, (0x20009 & 0xFFFF)
    /* 50F38 80060738 02000424 */  addiu      $a0, $zero, 0x2
    /* 50F3C 8006073C 0200053C */  lui        $a1, (0x20017 >> 16)
    /* 50F40 80060740 F08F010C */  jal        func_80063FC0
    /* 50F44 80060744 1700A534 */   ori       $a1, $a1, (0x20017 & 0xFFFF)
    /* 50F48 80060748 03000424 */  addiu      $a0, $zero, 0x3
    /* 50F4C 8006074C 0200053C */  lui        $a1, (0x20008 >> 16)
    /* 50F50 80060750 F08F010C */  jal        func_80063FC0
    /* 50F54 80060754 0800A534 */   ori       $a1, $a1, (0x20008 & 0xFFFF)
    /* 50F58 80060758 21200002 */  addu       $a0, $s0, $zero
    /* 50F5C 8006075C 1086010C */  jal        Sub_screen_status_calc
    /* 50F60 80060760 21280000 */   addu      $a1, $zero, $zero
    /* 50F64 80060764 21200002 */  addu       $a0, $s0, $zero
  .L80060768:
    /* 50F68 80060768 A980010C */  jal        func_800602A4
    /* 50F6C 8006076C 01000524 */   addiu     $a1, $zero, 0x1
    /* 50F70 80060770 01000292 */  lbu        $v0, 0x1($s0)
  .L80060774:
    /* 50F74 80060774 00000000 */  nop
    /* 50F78 80060778 01004224 */  addiu      $v0, $v0, 0x1
    /* 50F7C 8006077C B7820108 */  j          .L80060ADC
.size func_80060700, . - func_80060700
