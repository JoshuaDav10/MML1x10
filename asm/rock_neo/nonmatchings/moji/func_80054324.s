.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054324
    /* 44B24 80054324 1400828C */  lw         $v0, 0x14($a0)
    /* 44B28 80054328 00000000 */  nop
    /* 44B2C 8005432C 03004224 */  addiu      $v0, $v0, 0x3
    /* 44B30 80054330 0800E003 */  jr         $ra
    /* 44B34 80054334 140082AC */   sw        $v0, 0x14($a0)
.size func_80054324, . - func_80054324
