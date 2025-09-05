.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800646E0
    /* 54EE0 800646E0 25104400 */  or         $v0, $v0, $a0
    /* 54EE4 800646E4 700062AC */  sw         $v0, 0x70($v1)
    /* 54EE8 800646E8 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* 54EEC 800646EC 4800BE8F */  lw         $fp, 0x48($sp)
    /* 54EF0 800646F0 4400B78F */  lw         $s7, 0x44($sp)
    /* 54EF4 800646F4 4000B68F */  lw         $s6, 0x40($sp)
    /* 54EF8 800646F8 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 54EFC 800646FC 3800B48F */  lw         $s4, 0x38($sp)
.size func_800646E0, . - func_800646E0
