.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004E488
    /* 3EC88 8004E488 0800E003 */  jr         $ra
    /* 3EC8C 8004E48C 21100000 */   addu      $v0, $zero, $zero
.size func_8004E488, . - func_8004E488
