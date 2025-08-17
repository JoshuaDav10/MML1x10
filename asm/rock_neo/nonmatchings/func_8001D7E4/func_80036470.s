.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80036470
    /* 26C70 80036470 0800E003 */  jr         $ra
    /* 26C74 80036474 070080A0 */   sb        $zero, 0x7($a0)
.size func_80036470, . - func_80036470
