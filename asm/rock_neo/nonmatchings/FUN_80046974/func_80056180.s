.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80056180
    /* 46980 80056180 1400838C */  lw         $v1, 0x14($a0)
    /* 46984 80056184 1400828C */  lw         $v0, 0x14($a0)
    /* 46988 80056188 01006390 */  lbu        $v1, 0x1($v1)
    /* 4698C 8005618C 02004224 */  addiu      $v0, $v0, 0x2
    /* 46990 80056190 140082AC */  sw         $v0, 0x14($a0)
    /* 46994 80056194 0800E003 */  jr         $ra
    /* 46998 80056198 780083A0 */   sb        $v1, 0x78($a0)
.size func_80056180, . - func_80056180
