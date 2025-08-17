.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003648C
    /* 26C8C 8003648C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 26C90 80036490 1000BFAF */  sw         $ra, 0x10($sp)
    /* 26C94 80036494 5600A684 */  lh         $a2, 0x56($a1)
    /* 26C98 80036498 2CD9000C */  jal        func_800364B0
    /* 26C9C 8003649C 00000000 */   nop
    /* 26CA0 800364A0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 26CA4 800364A4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 26CA8 800364A8 0800E003 */  jr         $ra
    /* 26CAC 800364AC 00000000 */   nop
.size func_8003648C, . - func_8003648C
