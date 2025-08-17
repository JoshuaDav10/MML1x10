.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800358E8
    /* 260E8 800358E8 0800E003 */  jr         $ra
    /* 260EC 800358EC 00000000 */   nop
.size func_800358E8, . - func_800358E8
