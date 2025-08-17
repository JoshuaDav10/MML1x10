.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800543C8
    /* 44BC8 800543C8 6C00828C */  lw         $v0, 0x6C($a0)
    /* 44BCC 800543CC 00000000 */  nop
    /* 44BD0 800543D0 02004224 */  addiu      $v0, $v0, 0x2
    /* 44BD4 800543D4 6C0082AC */  sw         $v0, 0x6C($a0)
    /* 44BD8 800543D8 0800E003 */  jr         $ra
    /* 44BDC 800543DC 01000224 */   addiu     $v0, $zero, 0x1
.size func_800543C8, . - func_800543C8
