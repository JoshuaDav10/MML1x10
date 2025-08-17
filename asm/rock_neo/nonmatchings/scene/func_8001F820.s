.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001F820
    /* 10020 8001F820 0800E003 */  jr         $ra
    /* 10024 8001F824 00000000 */   nop
.size func_8001F820, . - func_8001F820
