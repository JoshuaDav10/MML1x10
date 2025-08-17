.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001B63C
    /* BE3C 8001B63C 0800E003 */  jr         $ra
    /* BE40 8001B640 00000000 */   nop
.size func_8001B63C, . - func_8001B63C
