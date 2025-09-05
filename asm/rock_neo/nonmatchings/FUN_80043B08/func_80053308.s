.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80053308
    /* 43B08 80053308 7400B18F */  lw         $s1, 0x74($sp)
    /* 43B0C 8005330C 7000B08F */  lw         $s0, 0x70($sp)
    /* 43B10 80053310 8800BD27 */  addiu      $sp, $sp, 0x88
    /* 43B14 80053314 0800E003 */  jr         $ra
    /* 43B18 80053318 00000000 */   nop
.size func_80053308, . - func_80053308
