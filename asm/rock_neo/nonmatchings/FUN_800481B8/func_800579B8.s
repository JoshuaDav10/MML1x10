.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800579B8
    /* 481B8 800579B8 02006324 */  addiu      $v1, $v1, 0x2
    /* 481BC 800579BC 6C0023AE */  sw         $v1, 0x6C($s1)
    /* 481C0 800579C0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 481C4 800579C4 1400B18F */  lw         $s1, 0x14($sp)
    /* 481C8 800579C8 1000B08F */  lw         $s0, 0x10($sp)
    /* 481CC 800579CC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 481D0 800579D0 0800E003 */  jr         $ra
    /* 481D4 800579D4 00000000 */   nop
.size func_800579B8, . - func_800579B8
