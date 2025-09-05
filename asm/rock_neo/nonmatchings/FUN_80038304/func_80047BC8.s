.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80047BC8
    /* 383C8 80047BC8 0800E003 */  jr         $ra
    /* 383CC 80047BCC 00000000 */   nop
.size func_80047BC8, . - func_80047BC8
