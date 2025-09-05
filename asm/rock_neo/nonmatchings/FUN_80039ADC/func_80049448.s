.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80049448
    /* 39C48 80049448 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 39C4C 8004944C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 39C50 80049450 7800858C */  lw         $a1, 0x78($a0)
    /* 39C54 80049454 01008690 */  lbu        $a2, 0x1($a0)
    /* 39C58 80049458 1C25010C */  jal        func_80049470
    /* 39C5C 8004945C 14008424 */   addiu     $a0, $a0, 0x14
    /* 39C60 80049460 1000BF8F */  lw         $ra, 0x10($sp)
    /* 39C64 80049464 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 39C68 80049468 0800E003 */  jr         $ra
    /* 39C6C 8004946C 00000000 */   nop
.size func_80049448, . - func_80049448
