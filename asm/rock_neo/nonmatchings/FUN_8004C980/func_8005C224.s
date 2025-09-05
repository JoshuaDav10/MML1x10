.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005C224
    /* 4CA24 8005C224 901284AF */  sw         $a0, %gp_rel(D_80098AF4)($gp)
    /* 4CA28 8005C228 0800E003 */  jr         $ra
    /* 4CA2C 8005C22C 00000000 */   nop
.size func_8005C224, . - func_8005C224
