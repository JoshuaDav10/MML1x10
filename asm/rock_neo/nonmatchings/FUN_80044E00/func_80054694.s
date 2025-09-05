.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054694
    /* 44E94 80054694 1400838C */  lw         $v1, 0x14($a0)
    /* 44E98 80054698 1400828C */  lw         $v0, 0x14($a0)
    /* 44E9C 8005469C 01006390 */  lbu        $v1, 0x1($v1)
    /* 44EA0 800546A0 02004224 */  addiu      $v0, $v0, 0x2
    /* 44EA4 800546A4 140082AC */  sw         $v0, 0x14($a0)
    /* 44EA8 800546A8 0800E003 */  jr         $ra
    /* 44EAC 800546AC 3E0083A0 */   sb        $v1, 0x3E($a0)
.size func_80054694, . - func_80054694
