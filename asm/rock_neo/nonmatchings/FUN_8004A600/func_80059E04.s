.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059E04
    /* 4A604 80059E04 6C0002AE */  sw         $v0, 0x6C($s0)
    /* 4A608 80059E08 01000224 */  addiu      $v0, $zero, 0x1
    /* 4A60C 80059E0C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4A610 80059E10 1400B18F */  lw         $s1, 0x14($sp)
    /* 4A614 80059E14 1000B08F */  lw         $s0, 0x10($sp)
    /* 4A618 80059E18 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4A61C 80059E1C 0800E003 */  jr         $ra
    /* 4A620 80059E20 00000000 */   nop
.size func_80059E04, . - func_80059E04
