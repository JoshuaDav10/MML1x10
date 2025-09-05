.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80064A24
    /* 55224 80064A24 1000BF8F */  lw         $ra, 0x10($sp)
    /* 55228 80064A28 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 5522C 80064A2C 0800E003 */  jr         $ra
    /* 55230 80064A30 00000000 */   nop
.size func_80064A24, . - func_80064A24
