.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80040130
    /* 30930 80040130 0800E003 */  jr         $ra
    /* 30934 80040134 00000000 */   nop
.size func_80040130, . - func_80040130
