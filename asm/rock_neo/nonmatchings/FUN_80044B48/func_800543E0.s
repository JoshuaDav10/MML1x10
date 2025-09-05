.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800543E0
    /* 44BE0 800543E0 6C00828C */  lw         $v0, 0x6C($a0)
    /* 44BE4 800543E4 00000000 */  nop
    /* 44BE8 800543E8 03004224 */  addiu      $v0, $v0, 0x3
    /* 44BEC 800543EC 6C0082AC */  sw         $v0, 0x6C($a0)
    /* 44BF0 800543F0 0800E003 */  jr         $ra
    /* 44BF4 800543F4 01000224 */   addiu     $v0, $zero, 0x1
.size func_800543E0, . - func_800543E0
