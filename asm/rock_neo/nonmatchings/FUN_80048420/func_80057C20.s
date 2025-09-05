.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057C20
    /* 48420 80057C20 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 48424 80057C24 0800E003 */  jr         $ra
    /* 48428 80057C28 00000000 */   nop
.size func_80057C20, . - func_80057C20
