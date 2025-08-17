.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80040170
    /* 30970 80040170 0800E003 */  jr         $ra
    /* 30974 80040174 00000000 */   nop
.size func_80040170, . - func_80040170
