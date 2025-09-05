.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005CEE4
    /* 4D6E4 8005CEE4 2000B28F */  lw         $s2, 0x20($sp)
    /* 4D6E8 8005CEE8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4D6EC 8005CEEC 1800B08F */  lw         $s0, 0x18($sp)
    /* 4D6F0 8005CEF0 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 4D6F4 8005CEF4 0800E003 */  jr         $ra
    /* 4D6F8 8005CEF8 00000000 */   nop
.size func_8005CEE4, . - func_8005CEE4
