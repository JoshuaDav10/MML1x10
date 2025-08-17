.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80036478
    /* 26C78 80036478 02310600 */  srl        $a2, $a2, 4
    /* 26C7C 8003647C 060085A0 */  sb         $a1, 0x6($a0)
    /* 26C80 80036480 0F0086A0 */  sb         $a2, 0xF($a0)
    /* 26C84 80036484 0800E003 */  jr         $ra
    /* 26C88 80036488 070080A0 */   sb        $zero, 0x7($a0)
.size func_80036478, . - func_80036478
