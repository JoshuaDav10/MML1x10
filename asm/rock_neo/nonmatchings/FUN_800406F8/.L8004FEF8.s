.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L8004FEF8
    /* 406F8 8004FEF8 2400BF8F */  lw         $ra, 0x24($sp)
    /* 406FC 8004FEFC 2000B28F */  lw         $s2, 0x20($sp)
    /* 40700 8004FF00 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 40704 8004FF04 1800B08F */  lw         $s0, 0x18($sp)
    /* 40708 8004FF08 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 4070C 8004FF0C 0800E003 */  jr         $ra
    /* 40710 8004FF10 00000000 */   nop
.size .L8004FEF8, . - .L8004FEF8
