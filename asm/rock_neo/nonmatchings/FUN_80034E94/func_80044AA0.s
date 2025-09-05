.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80044AA0
    /* 352A0 80044AA0 0800E003 */  jr         $ra
    /* 352A4 80044AA4 00000000 */   nop
.size func_80044AA0, . - func_80044AA0
