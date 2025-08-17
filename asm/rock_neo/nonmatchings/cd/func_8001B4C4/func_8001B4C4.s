.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001B4C4
    /* BCC4 8001B4C4 0800E003 */  jr         $ra
    /* BCC8 8001B4C8 00000000 */   nop
.size func_8001B4C4, . - func_8001B4C4
