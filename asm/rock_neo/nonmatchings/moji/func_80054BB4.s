.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054BB4
    /* 453B4 80054BB4 4000063C */  lui        $a2, (0x400800 >> 16)
    /* 453B8 80054BB8 72008590 */  lbu        $a1, 0x72($a0)
    /* 453BC 80054BBC 0000828C */  lw         $v0, 0x0($a0)
    /* 453C0 80054BC0 6C00838C */  lw         $v1, 0x6C($a0)
    /* 453C4 80054BC4 0008C634 */  ori        $a2, $a2, (0x400800 & 0xFFFF)
    /* 453C8 80054BC8 BC0080A4 */  sh         $zero, 0xBC($a0)
    /* 453CC 80054BCC 0100A524 */  addiu      $a1, $a1, 0x1
    /* 453D0 80054BD0 25104600 */  or         $v0, $v0, $a2
    /* 453D4 80054BD4 03006324 */  addiu      $v1, $v1, 0x3
    /* 453D8 80054BD8 000082AC */  sw         $v0, 0x0($a0)
    /* 453DC 80054BDC 01000224 */  addiu      $v0, $zero, 0x1
    /* 453E0 80054BE0 720085A0 */  sb         $a1, 0x72($a0)
    /* 453E4 80054BE4 0800E003 */  jr         $ra
    /* 453E8 80054BE8 6C0083AC */   sw        $v1, 0x6C($a0)
.size func_80054BB4, . - func_80054BB4
