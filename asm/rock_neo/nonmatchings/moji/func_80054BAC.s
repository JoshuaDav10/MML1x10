.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054BAC
    /* 453AC 80054BAC 0800E003 */  jr         $ra
    /* 453B0 80054BB0 21100000 */   addu      $v0, $zero, $zero
.size func_80054BAC, . - func_80054BAC
