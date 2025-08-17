.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80038324
    /* 28B24 80038324 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 28B28 80038328 1000BFAF */  sw         $ra, 0x10($sp)
    /* 28B2C 8003832C 0A80093C */  lui        $t1, %hi(D_800A39A0)
    /* 28B30 80038330 A0392925 */  addiu      $t1, $t1, %lo(D_800A39A0)
    /* 28B34 80038334 0000828C */  lw         $v0, 0x0($a0)
    /* 28B38 80038338 0400838C */  lw         $v1, 0x4($a0)
    /* 28B3C 8003833C 0800888C */  lw         $t0, 0x8($a0)
    /* 28B40 80038340 000022AD */  sw         $v0, 0x0($t1)
    /* 28B44 80038344 040023AD */  sw         $v1, 0x4($t1)
    /* 28B48 80038348 080028AD */  sw         $t0, 0x8($t1)
    /* 28B4C 8003834C 0C00828C */  lw         $v0, 0xC($a0)
    /* 28B50 80038350 00000000 */  nop
    /* 28B54 80038354 0C0022AD */  sw         $v0, 0xC($t1)
    /* 28B58 80038358 EDDF000C */  jal        func_80037FB4
    /* 28B5C 8003835C 00000000 */   nop
    /* 28B60 80038360 1000BF8F */  lw         $ra, 0x10($sp)
    /* 28B64 80038364 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 28B68 80038368 0800E003 */  jr         $ra
    /* 28B6C 8003836C 00000000 */   nop
.size func_80038324, . - func_80038324
