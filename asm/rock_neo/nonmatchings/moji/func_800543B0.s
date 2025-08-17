.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800543B0
    /* 44BB0 800543B0 6C00828C */  lw         $v0, 0x6C($a0)
    /* 44BB4 800543B4 00000000 */  nop
    /* 44BB8 800543B8 01004224 */  addiu      $v0, $v0, 0x1
    /* 44BBC 800543BC 6C0082AC */  sw         $v0, 0x6C($a0)
    /* 44BC0 800543C0 0800E003 */  jr         $ra
    /* 44BC4 800543C4 01000224 */   addiu     $v0, $zero, 0x1
.size func_800543B0, . - func_800543B0
