.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80044934
    /* 35134 80044934 0800E003 */  jr         $ra
    /* 35138 80044938 00000000 */   nop
.size func_80044934, . - func_80044934
