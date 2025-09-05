.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800423D0
    /* 32BD0 800423D0 01004234 */  ori        $v0, $v0, 0x1
    /* 32BD4 800423D4 0800E003 */  jr         $ra
    /* 32BD8 800423D8 750182A0 */   sb        $v0, 0x175($a0)
.size func_800423D0, . - func_800423D0
