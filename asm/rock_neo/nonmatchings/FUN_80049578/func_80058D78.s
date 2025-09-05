.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058D78
    /* 49578 80058D78 0451010C */  jal        func_80054410
    /* 4957C 80058D7C 01008424 */   addiu     $a0, $a0, 0x1
    /* 49580 80058D80 1400048E */  lw         $a0, 0x14($s0)
    /* 49584 80058D84 100002A6 */  sh         $v0, 0x10($s0)
    /* 49588 80058D88 0451010C */  jal        func_80054410
    /* 4958C 80058D8C 03008424 */   addiu     $a0, $a0, 0x3
    /* 49590 80058D90 1400038E */  lw         $v1, 0x14($s0)
    /* 49594 80058D94 120002A6 */  sh         $v0, 0x12($s0)
    /* 49598 80058D98 05006324 */  addiu      $v1, $v1, 0x5
    /* 4959C 80058D9C 140003AE */  sw         $v1, 0x14($s0)
    /* 495A0 80058DA0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 495A4 80058DA4 1000B08F */  lw         $s0, 0x10($sp)
    /* 495A8 80058DA8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 495AC 80058DAC 0800E003 */  jr         $ra
    /* 495B0 80058DB0 00000000 */   nop
.size func_80058D78, . - func_80058D78
