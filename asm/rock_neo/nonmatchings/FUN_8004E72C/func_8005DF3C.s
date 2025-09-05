.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005DF3C
    /* 4E73C 8005DF3C 940E80A7 */  sh         $zero, %gp_rel(D_800986F8)($gp)
    /* 4E740 8005DF40 980E80A7 */  sh         $zero, %gp_rel(D_800986FC)($gp)
    /* 4E744 8005DF44 0800E003 */  jr         $ra
    /* 4E748 8005DF48 00000000 */   nop
.size func_8005DF3C, . - func_8005DF3C
