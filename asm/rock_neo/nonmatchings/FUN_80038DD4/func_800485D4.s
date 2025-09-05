.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800485D4
    /* 38DD4 800485D4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 38DD8 800485D8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 38DDC 800485DC 0800E003 */  jr         $ra
    /* 38DE0 800485E0 00000000 */   nop
.size func_800485D4, . - func_800485D4
