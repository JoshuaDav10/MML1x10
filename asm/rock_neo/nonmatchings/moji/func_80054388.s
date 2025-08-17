.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054388
    /* 44B88 80054388 1400828C */  lw         $v0, 0x14($a0)
    /* 44B8C 8005438C 00000000 */  nop
    /* 44B90 80054390 09004224 */  addiu      $v0, $v0, 0x9
    /* 44B94 80054394 0800E003 */  jr         $ra
    /* 44B98 80054398 140082AC */   sw        $v0, 0x14($a0)
.size func_80054388, . - func_80054388
