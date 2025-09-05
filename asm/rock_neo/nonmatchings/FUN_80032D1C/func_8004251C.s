.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004251C
    /* 32D1C 8004251C 3C00A4B8 */  swr        $a0, 0x3C($a1)
    /* 32D20 80042520 0800E003 */  jr         $ra
    /* 32D24 80042524 00000000 */   nop
.size func_8004251C, . - func_8004251C
