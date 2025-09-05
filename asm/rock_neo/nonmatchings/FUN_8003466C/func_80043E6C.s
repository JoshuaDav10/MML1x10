.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80043E6C
    /* 3466C 80043E6C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 34670 80043E70 0800E003 */  jr         $ra
    /* 34674 80043E74 00000000 */   nop
.size func_80043E6C, . - func_80043E6C
