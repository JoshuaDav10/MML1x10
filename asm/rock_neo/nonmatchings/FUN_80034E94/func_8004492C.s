.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004492C
    /* 3512C 8004492C 0800E003 */  jr         $ra
    /* 35130 80044930 00000000 */   nop
.size func_8004492C, . - func_8004492C
