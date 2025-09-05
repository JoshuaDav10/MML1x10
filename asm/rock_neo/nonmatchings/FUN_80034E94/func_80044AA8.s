.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80044AA8
    /* 352A8 80044AA8 0800E003 */  jr         $ra
    /* 352AC 80044AAC 00000000 */   nop
.size func_80044AA8, . - func_80044AA8
