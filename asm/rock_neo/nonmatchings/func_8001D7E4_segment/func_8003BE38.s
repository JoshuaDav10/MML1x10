.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003BE38
    /* 2C638 8003BE38 0800E003 */  jr         $ra
    /* 2C63C 8003BE3C 00000000 */   nop
.size func_8003BE38, . - func_8003BE38
