.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80013418
    /* 3C18 80013418 0800E003 */  jr         $ra
    /* 3C1C 8001341C 00000000 */   nop
.size func_80013418, . - func_80013418
