.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L800433B4
    /* 33BB4 800433B4 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 33BB8 800433B8 0800E003 */  jr         $ra
    /* 33BBC 800433BC 00000000 */   nop
.size .L800433B4, . - .L800433B4
