.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005439C
    /* 44B9C 8005439C 1400828C */  lw         $v0, 0x14($a0)
    /* 44BA0 800543A0 00000000 */  nop
    /* 44BA4 800543A4 0B004224 */  addiu      $v0, $v0, 0xB
    /* 44BA8 800543A8 0800E003 */  jr         $ra
    /* 44BAC 800543AC 140082AC */   sw        $v0, 0x14($a0)
.size func_8005439C, . - func_8005439C
