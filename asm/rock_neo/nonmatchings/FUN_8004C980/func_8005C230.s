.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005C230
    /* 4CA30 8005C230 7C1184AF */  sw         $a0, %gp_rel(D_800989E0)($gp)
    /* 4CA34 8005C234 0800E003 */  jr         $ra
    /* 4CA38 8005C238 00000000 */   nop
.size func_8005C230, . - func_8005C230
