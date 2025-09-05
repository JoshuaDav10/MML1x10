.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800592C8
    /* 49AC8 800592C8 1400048E */  lw         $a0, 0x14($s0)
    /* 49ACC 800592CC 01004224 */  addiu      $v0, $v0, 0x1
    /* 49AD0 800592D0 50006324 */  addiu      $v1, $v1, 0x50
    /* 49AD4 800592D4 05008424 */  addiu      $a0, $a0, 0x5
    /* 49AD8 800592D8 780003A2 */  sb         $v1, 0x78($s0)
    /* 49ADC 800592DC 730002A2 */  sb         $v0, 0x73($s0)
    /* 49AE0 800592E0 140004AE */  sw         $a0, 0x14($s0)
    /* 49AE4 800592E4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 49AE8 800592E8 1400B18F */  lw         $s1, 0x14($sp)
    /* 49AEC 800592EC 1000B08F */  lw         $s0, 0x10($sp)
    /* 49AF0 800592F0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 49AF4 800592F4 0800E003 */  jr         $ra
    /* 49AF8 800592F8 00000000 */   nop
.size func_800592C8, . - func_800592C8
