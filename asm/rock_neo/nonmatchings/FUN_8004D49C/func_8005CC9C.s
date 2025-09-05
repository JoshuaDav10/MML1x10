.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005CC9C
    /* 4D49C 8005CC9C 2128C003 */  addu       $a1, $fp, $zero
    /* 4D4A0 8005CCA0 2330D702 */  subu       $a2, $s6, $s7
    /* 4D4A4 8005CCA4 00340600 */  sll        $a2, $a2, 16
    /* 4D4A8 8005CCA8 03340600 */  sra        $a2, $a2, 16
    /* 4D4AC 8005CCAC 1000E726 */  addiu      $a3, $s7, 0x10
    /* 4D4B0 8005CCB0 003A0700 */  sll        $a3, $a3, 8
    /* 4D4B4 8005CCB4 1000E734 */  ori        $a3, $a3, 0x10
    /* 4D4B8 8005CCB8 A674010C */  jal        func_8005D298
    /* 4D4BC 8005CCBC 10FFE730 */   andi      $a3, $a3, 0xFF10
    /* 4D4C0 8005CCC0 5400BF8F */  lw         $ra, 0x54($sp)
    /* 4D4C4 8005CCC4 5000BE8F */  lw         $fp, 0x50($sp)
    /* 4D4C8 8005CCC8 4C00B78F */  lw         $s7, 0x4C($sp)
    /* 4D4CC 8005CCCC 4800B68F */  lw         $s6, 0x48($sp)
    /* 4D4D0 8005CCD0 4400B58F */  lw         $s5, 0x44($sp)
    /* 4D4D4 8005CCD4 4000B48F */  lw         $s4, 0x40($sp)
    /* 4D4D8 8005CCD8 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 4D4DC 8005CCDC 3800B28F */  lw         $s2, 0x38($sp)
    /* 4D4E0 8005CCE0 3400B18F */  lw         $s1, 0x34($sp)
    /* 4D4E4 8005CCE4 3000B08F */  lw         $s0, 0x30($sp)
    /* 4D4E8 8005CCE8 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 4D4EC 8005CCEC 0800E003 */  jr         $ra
    /* 4D4F0 8005CCF0 00000000 */   nop
.size func_8005CC9C, . - func_8005CC9C
