.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060280
    /* 50A80 80060280 180086A0 */  sb         $a2, 0x18($a0)
    /* 50A84 80060284 1B0087A0 */  sb         $a3, 0x1B($a0)
    /* 50A88 80060288 200088A0 */  sb         $t0, 0x20($a0)
    /* 50A8C 8006028C 230089A0 */  sb         $t1, 0x23($a0)
    /* 50A90 80060290 28008AA0 */  sb         $t2, 0x28($a0)
    /* 50A94 80060294 2B008BA0 */  sb         $t3, 0x2B($a0)
    /* 50A98 80060298 30008CA0 */  sb         $t4, 0x30($a0)
    /* 50A9C 8006029C 0800E003 */  jr         $ra
    /* 50AA0 800602A0 33008DA0 */   sb        $t5, 0x33($a0)
.size func_80060280, . - func_80060280
