.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005C24C
    /* 4CA4C 8005C24C 701184A3 */  sb         $a0, %gp_rel(D_800989D4)($gp)
    /* 4CA50 8005C250 0800E003 */  jr         $ra
    /* 4CA54 8005C254 00000000 */   nop
.size func_8005C24C, . - func_8005C24C
