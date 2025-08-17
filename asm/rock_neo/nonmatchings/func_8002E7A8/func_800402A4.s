.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800402A4
    /* 30AA4 800402A4 0800E003 */  jr         $ra
    /* 30AA8 800402A8 00000000 */   nop
.size func_800402A4, . - func_800402A4
