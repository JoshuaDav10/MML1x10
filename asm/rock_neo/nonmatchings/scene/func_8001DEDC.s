.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001DEDC
    /* E6DC 8001DEDC 0800E003 */  jr         $ra
    /* E6E0 8001DEE0 00000000 */   nop
.size func_8001DEDC, . - func_8001DEDC
