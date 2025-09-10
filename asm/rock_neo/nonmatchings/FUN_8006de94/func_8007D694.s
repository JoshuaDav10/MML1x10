.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8007D694
    /* 6DE94 8007D694 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6DE98 8007D698 0800E003 */  jr         $ra
    /* 6DE9C 8007D69C 00000000 */   nop
.size func_8007D694, . - func_8007D694
