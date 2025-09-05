.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80044A80
    /* 35280 80044A80 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 35284 80044A84 1000BFAF */  sw         $ra, 0x10($sp)
    /* 35288 80044A88 62C6000C */  jal        func_80031988
    /* 3528C 80044A8C 000080A0 */   sb        $zero, 0x0($a0)
    /* 35290 80044A90 1000BF8F */  lw         $ra, 0x10($sp)
    /* 35294 80044A94 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 35298 80044A98 0800E003 */  jr         $ra
    /* 3529C 80044A9C 00000000 */   nop
.size func_80044A80, . - func_80044A80
