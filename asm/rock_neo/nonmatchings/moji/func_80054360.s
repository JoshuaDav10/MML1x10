.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054360
    /* 44B60 80054360 1400828C */  lw         $v0, 0x14($a0)
    /* 44B64 80054364 00000000 */  nop
    /* 44B68 80054368 06004224 */  addiu      $v0, $v0, 0x6
    /* 44B6C 8005436C 0800E003 */  jr         $ra
    /* 44B70 80054370 140082AC */   sw        $v0, 0x14($a0)
.size func_80054360, . - func_80054360
