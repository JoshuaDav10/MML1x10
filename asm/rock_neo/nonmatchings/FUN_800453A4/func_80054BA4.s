.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054BA4
    /* 453A4 80054BA4 0800E003 */  jr         $ra
    /* 453A8 80054BA8 6C0083AC */   sw        $v1, 0x6C($a0)
.size func_80054BA4, . - func_80054BA4
