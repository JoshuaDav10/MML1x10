.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L80058BF4
    /* 493F4 80058BF4 7800A2A0 */  sb         $v0, 0x78($a1)
    /* 493F8 80058BF8 21100000 */  addu       $v0, $zero, $zero
    /* 493FC 80058BFC 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 49400 80058C00 0800E003 */  jr         $ra
    /* 49404 80058C04 00000000 */   nop
.size .L80058BF4, . - .L80058BF4
