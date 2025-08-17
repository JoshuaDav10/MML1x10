.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800543F8
    /* 44BF8 800543F8 6C00828C */  lw         $v0, 0x6C($a0)
    /* 44BFC 800543FC 00000000 */  nop
    /* 44C00 80054400 05004224 */  addiu      $v0, $v0, 0x5
    /* 44C04 80054404 6C0082AC */  sw         $v0, 0x6C($a0)
    /* 44C08 80054408 0800E003 */  jr         $ra
    /* 44C0C 8005440C 01000224 */   addiu     $v0, $zero, 0x1
.size func_800543F8, . - func_800543F8
