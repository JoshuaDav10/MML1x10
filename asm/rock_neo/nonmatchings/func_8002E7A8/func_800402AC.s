.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800402AC
    /* 30AAC 800402AC 0800E003 */  jr         $ra
    /* 30AB0 800402B0 00000000 */   nop
.size func_800402AC, . - func_800402AC
