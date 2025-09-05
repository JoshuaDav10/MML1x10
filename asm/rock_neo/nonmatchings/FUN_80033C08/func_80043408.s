.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80043408
    /* 33C08 80043408 3000BFAF */  sw         $ra, 0x30($sp)
.size func_80043408, . - func_80043408
