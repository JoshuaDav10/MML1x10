.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80043DF8
    /* 345F8 80043DF8 0800E003 */  jr         $ra
    /* 345FC 80043DFC 00000000 */   nop
.size func_80043DF8, . - func_80043DF8
