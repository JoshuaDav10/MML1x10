.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005DCB4
    /* 4E4B4 8005DCB4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4E4B8 8005DCB8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4E4BC 8005DCBC 3777010C */  jal        func_8005DCDC
    /* 4E4C0 8005DCC0 00000000 */   nop
    /* 4E4C4 8005DCC4 8A77010C */  jal        func_8005DE28
    /* 4E4C8 8005DCC8 00000000 */   nop
    /* 4E4CC 8005DCCC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4E4D0 8005DCD0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4E4D4 8005DCD4 0800E003 */  jr         $ra
    /* 4E4D8 8005DCD8 00000000 */   nop
.size func_8005DCB4, . - func_8005DCB4
