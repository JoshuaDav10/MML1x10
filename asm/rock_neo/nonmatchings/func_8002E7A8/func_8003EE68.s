.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003EE68
    /* 2F668 8003EE68 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2F66C 8003EE6C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2F670 8003EE70 21808000 */  addu       $s0, $a0, $zero
    /* 2F674 8003EE74 07000224 */  addiu      $v0, $zero, 0x7
    /* 2F678 8003EE78 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2F67C 8003EE7C 090002A2 */  sb         $v0, 0x9($s0)
    /* 2F680 8003EE80 04000224 */  addiu      $v0, $zero, 0x4
    /* 2F684 8003EE84 0A0002A6 */  sh         $v0, 0xA($s0)
    /* 2F688 8003EE88 01000224 */  addiu      $v0, $zero, 0x1
    /* 2F68C 8003EE8C 750002A2 */  sb         $v0, 0x75($s0)
    /* 2F690 8003EE90 F208010C */  jal        Pl00_shot_enable_on
    /* 2F694 8003EE94 740002A2 */   sb        $v0, 0x74($s0)
    /* 2F698 8003EE98 21200002 */  addu       $a0, $s0, $zero
    /* 2F69C 8003EE9C 12000524 */  addiu      $a1, $zero, 0x12
    /* 2F6A0 8003EEA0 21300000 */  addu       $a2, $zero, $zero
    /* 2F6A4 8003EEA4 7707010C */  jal        func_80041DDC
    /* 2F6A8 8003EEA8 01000724 */   addiu     $a3, $zero, 0x1
    /* 2F6AC 8003EEAC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2F6B0 8003EEB0 1000B08F */  lw         $s0, 0x10($sp)
    /* 2F6B4 8003EEB4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2F6B8 8003EEB8 0800E003 */  jr         $ra
    /* 2F6BC 8003EEBC 00000000 */   nop
.size func_8003EE68, . - func_8003EE68
