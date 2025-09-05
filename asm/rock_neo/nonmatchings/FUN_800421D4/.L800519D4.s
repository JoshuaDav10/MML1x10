.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L800519D4
    /* 421D4 800519D4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 421D8 800519D8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 421DC 800519DC 0800E003 */  jr         $ra
    /* 421E0 800519E0 00000000 */   nop
.size .L800519D4, . - .L800519D4
