.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800333B4
    /* 23BB4 800333B4 1C12838F */  lw         $v1, %gp_rel(D_80098A80)($gp)
    /* 23BB8 800333B8 00000000 */  nop
    /* 23BBC 800333BC E0FF6224 */  addiu      $v0, $v1, -0x20
    /* 23BC0 800333C0 1C1282AF */  sw         $v0, %gp_rel(D_80098A80)($gp)
    /* 23BC4 800333C4 0000828C */  lw         $v0, 0x0($a0)
    /* 23BC8 800333C8 0400858C */  lw         $a1, 0x4($a0)
    /* 23BCC 800333CC 0800868C */  lw         $a2, 0x8($a0)
    /* 23BD0 800333D0 0C00878C */  lw         $a3, 0xC($a0)
    /* 23BD4 800333D4 E0FF62AC */  sw         $v0, -0x20($v1)
    /* 23BD8 800333D8 E4FF65AC */  sw         $a1, -0x1C($v1)
    /* 23BDC 800333DC E8FF66AC */  sw         $a2, -0x18($v1)
    /* 23BE0 800333E0 ECFF67AC */  sw         $a3, -0x14($v1)
    /* 23BE4 800333E4 1000828C */  lw         $v0, 0x10($a0)
    /* 23BE8 800333E8 1400858C */  lw         $a1, 0x14($a0)
    /* 23BEC 800333EC 1800868C */  lw         $a2, 0x18($a0)
    /* 23BF0 800333F0 1C00878C */  lw         $a3, 0x1C($a0)
    /* 23BF4 800333F4 F0FF62AC */  sw         $v0, -0x10($v1)
    /* 23BF8 800333F8 F4FF65AC */  sw         $a1, -0xC($v1)
    /* 23BFC 800333FC F8FF66AC */  sw         $a2, -0x8($v1)
    /* 23C00 80033400 FCFF67AC */  sw         $a3, -0x4($v1)
    /* 23C04 80033404 0800E003 */  jr         $ra
    /* 23C08 80033408 00000000 */   nop
.size func_800333B4, . - func_800333B4
