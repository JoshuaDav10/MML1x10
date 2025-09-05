.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003FF40
    /* 30740 8003FF40 21200002 */  addu       $a0, $s0, $zero
    /* 30744 8003FF44 12004014 */  bnez       $v0, .L8003FF90
    /* 30748 8003FF48 21200002 */   addu      $a0, $s0, $zero
    /* 3074C 8003FF4C 8C01010C */  jal        func_80040630
    /* 30750 8003FF50 21280000 */   addu      $a1, $zero, $zero
    /* 30754 8003FF54 0E004014 */  bnez       $v0, .L8003FF90
    /* 30758 8003FF58 21200002 */   addu      $a0, $s0, $zero
    /* 3075C 8003FF5C C300010C */  jal        func_8004030C
    /* 30760 8003FF60 21280000 */   addu      $a1, $zero, $zero
    /* 30764 8003FF64 0A004014 */  bnez       $v0, .L8003FF90
    /* 30768 8003FF68 00000000 */   nop
  .L8003FF6C:
    /* 3076C 8003FF6C 28010296 */  lhu        $v0, 0x128($s0)
    /* 30770 8003FF70 2A010396 */  lhu        $v1, 0x12A($s0)
    /* 30774 8003FF74 00000000 */  nop
    /* 30778 8003FF78 25104300 */  or         $v0, $v0, $v1
    /* 3077C 8003FF7C 24102202 */  and        $v0, $s1, $v0
    /* 30780 8003FF80 03004014 */  bnez       $v0, .L8003FF90
    /* 30784 8003FF84 00000000 */   nop
  .L8003FF88:
    /* 30788 8003FF88 090000A2 */  sb         $zero, 0x9($s0)
    /* 3078C 8003FF8C 0A0000A6 */  sh         $zero, 0xA($s0)
  .L8003FF90:
    /* 30790 8003FF90 1800BF8F */  lw         $ra, 0x18($sp)
    /* 30794 8003FF94 1400B18F */  lw         $s1, 0x14($sp)
    /* 30798 8003FF98 1000B08F */  lw         $s0, 0x10($sp)
    /* 3079C 8003FF9C 2000BD27 */  addiu      $sp, $sp, 0x20
.size func_8003FF40, . - func_8003FF40
