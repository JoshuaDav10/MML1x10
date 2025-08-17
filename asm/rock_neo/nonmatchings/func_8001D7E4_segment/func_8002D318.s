.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002D318
    /* 1DB18 8002D318 0800E003 */  jr         $ra
    /* 1DB1C 8002D31C 00000000 */   nop
.size func_8002D318, . - func_8002D318
