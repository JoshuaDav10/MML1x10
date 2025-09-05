.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800486D8
    /* 38ED8 800486D8 A40002AE */  sw         $v0, 0xA4($s0)
    /* 38EDC 800486DC 0C0000AE */  sw         $zero, 0xC($s0)
    /* 38EE0 800486E0 050000A2 */  sb         $zero, 0x5($s0)
    /* 38EE4 800486E4 01006324 */  addiu      $v1, $v1, 0x1
    /* 38EE8 800486E8 040003A2 */  sb         $v1, 0x4($s0)
  .L800486EC:
    /* 38EEC 800486EC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 38EF0 800486F0 1400B18F */  lw         $s1, 0x14($sp)
    /* 38EF4 800486F4 1000B08F */  lw         $s0, 0x10($sp)
    /* 38EF8 800486F8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 38EFC 800486FC 0800E003 */  jr         $ra
    /* 38F00 80048700 00000000 */   nop
.size func_800486D8, . - func_800486D8
