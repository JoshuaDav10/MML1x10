.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005C858
    /* 4D058 8005C858 0800E003 */  jr         $ra
    /* 4D05C 8005C85C 00000000 */   nop
.size func_8005C858, . - func_8005C858
