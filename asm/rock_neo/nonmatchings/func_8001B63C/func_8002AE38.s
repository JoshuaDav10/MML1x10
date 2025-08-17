.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002AE38
    /* 1B638 8002AE38 21104400 */  addu       $v0, $v0, $a0
    /* 1B63C 8002AE3C 21186500 */  addu       $v1, $v1, $a1
.size func_8002AE38, . - func_8002AE38
