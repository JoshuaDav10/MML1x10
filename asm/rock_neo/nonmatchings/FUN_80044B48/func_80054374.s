.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054374
    /* 44B74 80054374 1400828C */  lw         $v0, 0x14($a0)
    /* 44B78 80054378 00000000 */  nop
    /* 44B7C 8005437C 07004224 */  addiu      $v0, $v0, 0x7
    /* 44B80 80054380 0800E003 */  jr         $ra
    /* 44B84 80054384 140082AC */   sw        $v0, 0x14($a0)
.size func_80054374, . - func_80054374
