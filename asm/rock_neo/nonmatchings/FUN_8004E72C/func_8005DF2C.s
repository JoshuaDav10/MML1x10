.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005DF2C
    /* 4E72C 8005DF2C 3000B08F */  lw         $s0, 0x30($sp)
    /* 4E730 8005DF30 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 4E734 8005DF34 0800E003 */  jr         $ra
    /* 4E738 8005DF38 00000000 */   nop
.size func_8005DF2C, . - func_8005DF2C
