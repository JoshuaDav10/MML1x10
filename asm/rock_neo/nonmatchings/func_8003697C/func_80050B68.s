.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80050B68
    /* 41368 80050B68 02008284 */  lh         $v0, 0x2($a0)
    /* 4136C 80050B6C 0800E003 */  jr         $ra
    /* 41370 80050B70 2B100200 */   sltu      $v0, $zero, $v0
.size func_80050B68, . - func_80050B68
