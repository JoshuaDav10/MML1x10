.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058780
    /* 48F80 80058780 0800E003 */  jr         $ra
    /* 48F84 80058784 140083AC */   sw        $v1, 0x14($a0)
.size func_80058780, . - func_80058780
