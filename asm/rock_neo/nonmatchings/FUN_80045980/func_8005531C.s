.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005531C
    /* 45B1C 8005531C FFF7053C */  lui        $a1, (0xF7FFFFFF >> 16)
    /* 45B20 80055320 FFFFA534 */  ori        $a1, $a1, (0xF7FFFFFF & 0xFFFF)
    /* 45B24 80055324 0000828C */  lw         $v0, 0x0($a0)
    /* 45B28 80055328 6C00838C */  lw         $v1, 0x6C($a0)
    /* 45B2C 8005532C 24104500 */  and        $v0, $v0, $a1
    /* 45B30 80055330 01006324 */  addiu      $v1, $v1, 0x1
    /* 45B34 80055334 000082AC */  sw         $v0, 0x0($a0)
    /* 45B38 80055338 01000224 */  addiu      $v0, $zero, 0x1
    /* 45B3C 8005533C 0800E003 */  jr         $ra
    /* 45B40 80055340 6C0083AC */   sw        $v1, 0x6C($a0)
.size func_8005531C, . - func_8005531C
