.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005459C
    /* 44D9C 8005459C 08008294 */  lhu        $v0, 0x8($a0)
    /* 44DA0 800545A0 70008590 */  lbu        $a1, 0x70($a0)
    /* 44DA4 800545A4 1400838C */  lw         $v1, 0x14($a0)
    /* 44DA8 800545A8 100082A4 */  sh         $v0, 0x10($a0)
    /* 44DAC 800545AC 12008294 */  lhu        $v0, 0x12($a0)
    /* 44DB0 800545B0 01006324 */  addiu      $v1, $v1, 0x1
    /* 44DB4 800545B4 3E0085A0 */  sb         $a1, 0x3E($a0)
    /* 44DB8 800545B8 140083AC */  sw         $v1, 0x14($a0)
    /* 44DBC 800545BC 0C004224 */  addiu      $v0, $v0, 0xC
    /* 44DC0 800545C0 0800E003 */  jr         $ra
    /* 44DC4 800545C4 120082A4 */   sh        $v0, 0x12($a0)
.size func_8005459C, . - func_8005459C
