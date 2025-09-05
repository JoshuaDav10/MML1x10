.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058500
    /* 48D00 80058500 21102002 */  addu       $v0, $s1, $zero
    /* 48D04 80058504 5800BF8F */  lw         $ra, 0x58($sp)
    /* 48D08 80058508 5400B18F */  lw         $s1, 0x54($sp)
    /* 48D0C 8005850C 5000B08F */  lw         $s0, 0x50($sp)
    /* 48D10 80058510 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 48D14 80058514 0800E003 */  jr         $ra
    /* 48D18 80058518 00000000 */   nop
.size func_80058500, . - func_80058500
