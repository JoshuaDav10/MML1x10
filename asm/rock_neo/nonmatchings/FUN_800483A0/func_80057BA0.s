.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057BA0
    /* 483A0 80057BA0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 483A4 80057BA4 1000B08F */  lw         $s0, 0x10($sp)
    /* 483A8 80057BA8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 483AC 80057BAC 0800E003 */  jr         $ra
    /* 483B0 80057BB0 00000000 */   nop
.size func_80057BA0, . - func_80057BA0
