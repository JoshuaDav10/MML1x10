.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059D00
    /* 4A500 80059D00 480023AE */  sw         $v1, 0x48($s1)
    /* 4A504 80059D04 6C0023AE */  sw         $v1, 0x6C($s1)
    /* 4A508 80059D08 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4A50C 80059D0C 1400B18F */  lw         $s1, 0x14($sp)
    /* 4A510 80059D10 1000B08F */  lw         $s0, 0x10($sp)
    /* 4A514 80059D14 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4A518 80059D18 0800E003 */  jr         $ra
    /* 4A51C 80059D1C 00000000 */   nop
.size func_80059D00, . - func_80059D00
