.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80040294
    /* 30A94 80040294 0800E003 */  jr         $ra
    /* 30A98 80040298 00000000 */   nop
.size func_80040294, . - func_80040294
