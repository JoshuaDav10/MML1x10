.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800394A4
    /* 29CA4 800394A4 0800E003 */  jr         $ra
    /* 29CA8 800394A8 00000000 */   nop
.size func_800394A4, . - func_800394A4
