.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80040138
    /* 30938 80040138 0800E003 */  jr         $ra
    /* 3093C 8004013C 00000000 */   nop
.size func_80040138, . - func_80040138
