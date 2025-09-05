.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80046008
    /* 36808 80046008 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3680C 8004600C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 36810 80046010 01008490 */  lbu        $a0, 0x1($a0)
    /* 36814 80046014 9DBF000C */  jal        func_8002FE74
    /* 36818 80046018 00000000 */   nop
    /* 3681C 8004601C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 36820 80046020 21184000 */  addu       $v1, $v0, $zero
    /* 36824 80046024 0800E003 */  jr         $ra
    /* 36828 80046028 1800BD27 */   addiu     $sp, $sp, 0x18
.size func_80046008, . - func_80046008
