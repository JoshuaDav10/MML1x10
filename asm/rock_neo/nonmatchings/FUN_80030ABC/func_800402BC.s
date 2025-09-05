.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800402BC
    /* 30ABC 800402BC 0800E003 */  jr         $ra
    /* 30AC0 800402C0 00000000 */   nop
.size func_800402BC, . - func_800402BC
