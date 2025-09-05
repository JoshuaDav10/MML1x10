.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005AB78
    /* 4B378 8005AB78 21288000 */  addu       $a1, $a0, $zero
    /* 4B37C 8005AB7C 7D00A390 */  lbu        $v1, 0x7D($a1)
.size func_8005AB78, . - func_8005AB78
