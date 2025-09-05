.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A580
    /* 4AD80 8005A580 7800B28F */  lw         $s2, 0x78($sp)
    /* 4AD84 8005A584 7400B18F */  lw         $s1, 0x74($sp)
    /* 4AD88 8005A588 7000B08F */  lw         $s0, 0x70($sp)
    /* 4AD8C 8005A58C 8000BD27 */  addiu      $sp, $sp, 0x80
    /* 4AD90 8005A590 0800E003 */  jr         $ra
    /* 4AD94 8005A594 00000000 */   nop
.size func_8005A580, . - func_8005A580
