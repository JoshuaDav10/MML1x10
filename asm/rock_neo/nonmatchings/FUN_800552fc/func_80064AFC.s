.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80064AFC
    /* 552FC 80064AFC 11004014 */  bnez       $v0, .L80064B44
.size func_80064AFC, . - func_80064AFC
