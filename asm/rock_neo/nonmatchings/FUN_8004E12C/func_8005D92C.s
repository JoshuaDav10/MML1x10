.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D92C
    /* 4E12C 8005D92C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4E130 8005D930 0800E003 */  jr         $ra
    /* 4E134 8005D934 00000000 */   nop
.size func_8005D92C, . - func_8005D92C
