.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80048BE4
    /* 393E4 80048BE4 0800E003 */  jr         $ra
    /* 393E8 80048BE8 00000000 */   nop
.size func_80048BE4, . - func_80048BE4
