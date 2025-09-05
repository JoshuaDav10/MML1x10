.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80061E00
    /* 52600 80061E00 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 52604 80061E04 0800E003 */  jr         $ra
    /* 52608 80061E08 00000000 */   nop
.size func_80061E00, . - func_80061E00
