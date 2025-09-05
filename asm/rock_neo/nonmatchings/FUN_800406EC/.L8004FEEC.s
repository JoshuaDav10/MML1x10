.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L8004FEEC
    /* 406EC 8004FEEC DD42010C */  jal        func_80050B74
    /* 406F0 8004FEF0 00000000 */   nop
    /* 406F4 8004FEF4 21100000 */  addu       $v0, $zero, $zero
.size .L8004FEEC, . - .L8004FEEC
