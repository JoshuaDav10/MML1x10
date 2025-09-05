.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80049748
    /* 39F48 80049748 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 39F4C 8004974C 3800B48F */  lw         $s4, 0x38($sp)
    /* 39F50 80049750 3400B38F */  lw         $s3, 0x34($sp)
    /* 39F54 80049754 3000B28F */  lw         $s2, 0x30($sp)
    /* 39F58 80049758 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 39F5C 8004975C 2800B08F */  lw         $s0, 0x28($sp)
    /* 39F60 80049760 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 39F64 80049764 0800E003 */  jr         $ra
    /* 39F68 80049768 00000000 */   nop
.size func_80049748, . - func_80049748
