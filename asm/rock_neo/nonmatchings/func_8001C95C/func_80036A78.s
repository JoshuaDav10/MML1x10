.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80036A78
    /* 27278 80036A78 801F013C */  lui        $at, (0x1F800076 >> 16)
    /* 2727C 80036A7C 760024A4 */  sh         $a0, (0x1F800076 & 0xFFFF)($at)
    /* 27280 80036A80 0800E003 */  jr         $ra
    /* 27284 80036A84 00000000 */   nop
.size func_80036A78, . - func_80036A78
