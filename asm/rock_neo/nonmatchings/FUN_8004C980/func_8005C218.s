.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005C218
    /* 4CA18 8005C218 CC0F84A3 */  sb         $a0, %gp_rel(D_80098830)($gp)
    /* 4CA1C 8005C21C 0800E003 */  jr         $ra
    /* 4CA20 8005C220 00000000 */   nop
.size func_8005C218, . - func_8005C218
