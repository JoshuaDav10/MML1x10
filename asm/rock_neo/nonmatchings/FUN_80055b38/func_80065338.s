.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80065338
    /* 55B38 80065338 B8C98424 */  addiu      $a0, $a0, -0x3648
    /* 55B3C 8006533C 80128526 */  addiu      $a1, $s4, 0x1280
    /* 55B40 80065340 B75D000C */  jal        .L800176DC
    /* 55B44 80065344 50000624 */   addiu     $a2, $zero, 0x50
    /* 55B48 80065348 8400A426 */  addiu      $a0, $s5, 0x84
    /* 55B4C 8006534C 401D8526 */  addiu      $a1, $s4, 0x1D40
    /* 55B50 80065350 A95D000C */  jal        .L800176A4
    /* 55B54 80065354 0F000624 */   addiu     $a2, $zero, 0xF
    /* 55B58 80065358 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 55B5C 8006535C 2800B68F */  lw         $s6, 0x28($sp)
    /* 55B60 80065360 2400B58F */  lw         $s5, 0x24($sp)
    /* 55B64 80065364 2000B48F */  lw         $s4, 0x20($sp)
    /* 55B68 80065368 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 55B6C 8006536C 1800B28F */  lw         $s2, 0x18($sp)
    /* 55B70 80065370 1400B18F */  lw         $s1, 0x14($sp)
    /* 55B74 80065374 1000B08F */  lw         $s0, 0x10($sp)
    /* 55B78 80065378 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 55B7C 8006537C 0800E003 */  jr         $ra
.size func_80065338, . - func_80065338
