.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054884
    /* 45084 80054884 6C00048E */  lw         $a0, 0x6C($s0)
    /* 45088 80054888 0451010C */  jal        func_80054410
    /* 4508C 8005488C 01008424 */   addiu     $a0, $a0, 0x1
    /* 45090 80054890 FFFF4430 */  andi       $a0, $v0, 0xFFFF
    /* 45094 80054894 21280000 */  addu       $a1, $zero, $zero
    /* 45098 80054898 0268000C */  jal        Sound_call
    /* 4509C 8005489C 21300000 */   addu      $a2, $zero, $zero
    /* 450A0 800548A0 6C00038E */  lw         $v1, 0x6C($s0)
    /* 450A4 800548A4 01000224 */  addiu      $v0, $zero, 0x1
    /* 450A8 800548A8 03006324 */  addiu      $v1, $v1, 0x3
    /* 450AC 800548AC 6C0003AE */  sw         $v1, 0x6C($s0)
    /* 450B0 800548B0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 450B4 800548B4 1000B08F */  lw         $s0, 0x10($sp)
    /* 450B8 800548B8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 450BC 800548BC 0800E003 */  jr         $ra
    /* 450C0 800548C0 00000000 */   nop
.size func_80054884, . - func_80054884
