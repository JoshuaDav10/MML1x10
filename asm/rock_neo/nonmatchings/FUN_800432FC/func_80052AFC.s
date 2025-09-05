.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80052AFC
    /* 432FC 80052AFC 0800E003 */  jr         $ra
    /* 43300 80052B00 00000000 */   nop
.size func_80052AFC, . - func_80052AFC
