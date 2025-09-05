.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800578F8
    /* 480F8 800578F8 480002AE */  sw         $v0, 0x48($s0)
    /* 480FC 800578FC 6C0002AE */  sw         $v0, 0x6C($s0)
    /* 48100 80057900 3E0000A2 */  sb         $zero, 0x3E($s0)
    /* 48104 80057904 3C0000A2 */  sb         $zero, 0x3C($s0)
    /* 48108 80057908 720000A2 */  sb         $zero, 0x72($s0)
  .L8005790C:
    /* 4810C 8005790C 01000224 */  addiu      $v0, $zero, 0x1
    /* 48110 80057910 1400BF8F */  lw         $ra, 0x14($sp)
    /* 48114 80057914 1000B08F */  lw         $s0, 0x10($sp)
    /* 48118 80057918 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4811C 8005791C 0800E003 */  jr         $ra
    /* 48120 80057920 00000000 */   nop
.size func_800578F8, . - func_800578F8
