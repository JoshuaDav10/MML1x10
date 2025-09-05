.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003FFA0
    /* 307A0 8003FFA0 0800E003 */  jr         $ra
    /* 307A4 8003FFA4 00000000 */   nop
.size func_8003FFA0, . - func_8003FFA0
