.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D388
    /* 4DB88 8005D388 24186800 */  and        $v1, $v1, $t0
    /* 4DB8C 8005D38C 24104500 */  and        $v0, $v0, $a1
    /* 4DB90 8005D390 25104300 */  or         $v0, $v0, $v1
    /* 4DB94 8005D394 0800E003 */  jr         $ra
    /* 4DB98 8005D398 780082AC */   sw        $v0, 0x78($a0)
.size func_8005D388, . - func_8005D388
