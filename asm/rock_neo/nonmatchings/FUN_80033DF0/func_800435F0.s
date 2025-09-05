.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800435F0
    /* 33DF0 800435F0 0800E003 */  jr         $ra
    /* 33DF4 800435F4 00000000 */   nop
.size func_800435F0, . - func_800435F0
