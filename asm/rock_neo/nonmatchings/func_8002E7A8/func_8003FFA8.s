.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003FFA8
    /* 307A8 8003FFA8 0800E003 */  jr         $ra
    /* 307AC 8003FFAC 00000000 */   nop
.size func_8003FFA8, . - func_8003FFA8
