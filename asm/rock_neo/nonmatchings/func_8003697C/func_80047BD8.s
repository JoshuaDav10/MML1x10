.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80047BD8
    /* 383D8 80047BD8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 383DC 80047BDC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 383E0 80047BE0 62C6000C */  jal        func_80031988
    /* 383E4 80047BE4 00000000 */   nop
    /* 383E8 80047BE8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 383EC 80047BEC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 383F0 80047BF0 0800E003 */  jr         $ra
    /* 383F4 80047BF4 00000000 */   nop
.size func_80047BD8, . - func_80047BD8
