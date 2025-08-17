.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054338
    /* 44B38 80054338 1400828C */  lw         $v0, 0x14($a0)
    /* 44B3C 8005433C 00000000 */  nop
    /* 44B40 80054340 04004224 */  addiu      $v0, $v0, 0x4
    /* 44B44 80054344 0800E003 */  jr         $ra
    /* 44B48 80054348 140082AC */   sw        $v0, 0x14($a0)
.size func_80054338, . - func_80054338
