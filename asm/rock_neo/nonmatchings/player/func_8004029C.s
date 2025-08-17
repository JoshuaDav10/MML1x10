.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004029C
    /* 30A9C 8004029C 0800E003 */  jr         $ra
    /* 30AA0 800402A0 00000000 */   nop
.size func_8004029C, . - func_8004029C
