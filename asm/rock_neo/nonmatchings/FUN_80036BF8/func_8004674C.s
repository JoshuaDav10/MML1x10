.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004674C
    /* 36F4C 8004674C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 36F50 80046750 1000BFAF */  sw         $ra, 0x10($sp)
    /* 36F54 80046754 62C6000C */  jal        func_80031988
    /* 36F58 80046758 00000000 */   nop
    /* 36F5C 8004675C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 36F60 80046760 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 36F64 80046764 0800E003 */  jr         $ra
    /* 36F68 80046768 00000000 */   nop
.size func_8004674C, . - func_8004674C
