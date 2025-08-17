.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054310
    /* 44B10 80054310 1400828C */  lw         $v0, 0x14($a0)
    /* 44B14 80054314 00000000 */  nop
    /* 44B18 80054318 02004224 */  addiu      $v0, $v0, 0x2
    /* 44B1C 8005431C 0800E003 */  jr         $ra
    /* 44B20 80054320 140082AC */   sw        $v0, 0x14($a0)
.size func_80054310, . - func_80054310
