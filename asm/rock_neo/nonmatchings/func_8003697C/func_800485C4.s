.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800485C4
    /* 38DC4 800485C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 38DC8 800485C8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 38DCC 800485CC 62C6000C */  jal        func_80031988
    /* 38DD0 800485D0 00000000 */   nop
    /* 38DD4 800485D4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 38DD8 800485D8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 38DDC 800485DC 0800E003 */  jr         $ra
    /* 38DE0 800485E0 00000000 */   nop
.size func_800485C4, . - func_800485C4
