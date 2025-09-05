.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80047BD0
    /* 383D0 80047BD0 0800E003 */  jr         $ra
    /* 383D4 80047BD4 00000000 */   nop
.size func_80047BD0, . - func_80047BD0
