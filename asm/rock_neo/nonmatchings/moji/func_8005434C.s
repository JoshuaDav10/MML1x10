.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005434C
    /* 44B4C 8005434C 1400828C */  lw         $v0, 0x14($a0)
    /* 44B50 80054350 00000000 */  nop
    /* 44B54 80054354 05004224 */  addiu      $v0, $v0, 0x5
    /* 44B58 80054358 0800E003 */  jr         $ra
    /* 44B5C 8005435C 140082AC */   sw        $v0, 0x14($a0)
.size func_8005434C, . - func_8005434C
