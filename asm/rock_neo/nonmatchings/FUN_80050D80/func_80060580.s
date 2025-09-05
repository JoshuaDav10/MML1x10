.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060580
    /* 50D80 80060580 A4000424 */  addiu      $a0, $zero, 0xA4
    /* 50D84 80060584 2A000692 */  lbu        $a2, 0x2A($s0)
    /* 50D88 80060588 2E000792 */  lbu        $a3, 0x2E($s0)
    /* 50D8C 8006058C 1487010C */  jal        Sub_screen_gauge_set2
    /* 50D90 80060590 BC000524 */   addiu     $a1, $zero, 0xBC
    /* 50D94 80060594 A4000424 */  addiu      $a0, $zero, 0xA4
    /* 50D98 80060598 32000692 */  lbu        $a2, 0x32($s0)
    /* 50D9C 8006059C 36000792 */  lbu        $a3, 0x36($s0)
    /* 50DA0 800605A0 1487010C */  jal        Sub_screen_gauge_set2
    /* 50DA4 800605A4 C6000524 */   addiu     $a1, $zero, 0xC6
    /* 50DA8 800605A8 05000492 */  lbu        $a0, 0x5($s0)
    /* 50DAC 800605AC 00000000 */  nop
    /* 50DB0 800605B0 03008010 */  beqz       $a0, .L800605C0
    /* 50DB4 800605B4 00000000 */   nop
    /* 50DB8 800605B8 4688010C */  jal        Sub_screen_status_param_set
    /* 50DBC 800605BC 00000000 */   nop
  .L800605C0:
    /* 50DC0 800605C0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 50DC4 800605C4 1800B28F */  lw         $s2, 0x18($sp)
    /* 50DC8 800605C8 1400B18F */  lw         $s1, 0x14($sp)
    /* 50DCC 800605CC 1000B08F */  lw         $s0, 0x10($sp)
    /* 50DD0 800605D0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 50DD4 800605D4 0800E003 */  jr         $ra
    /* 50DD8 800605D8 00000000 */   nop
.size func_80060580, . - func_80060580
