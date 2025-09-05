.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80045FE4
    /* 367E4 80045FE4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 367E8 80045FE8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 367EC 80045FEC 01008490 */  lbu        $a0, 0x1($a0)
    /* 367F0 80045FF0 9DBF000C */  jal        func_8002FE74
    /* 367F4 80045FF4 00000000 */   nop
    /* 367F8 80045FF8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 367FC 80045FFC 21184000 */  addu       $v1, $v0, $zero
    /* 36800 80046000 0800E003 */  jr         $ra
    /* 36804 80046004 1800BD27 */   addiu     $sp, $sp, 0x18
.size func_80045FE4, . - func_80045FE4
