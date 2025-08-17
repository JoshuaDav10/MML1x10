.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800402B4
    /* 30AB4 800402B4 0800E003 */  jr         $ra
    /* 30AB8 800402B8 00000000 */   nop
.size func_800402B4, . - func_800402B4
