.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004617C
    /* 3697C 8004617C 180043AC */  sw         $v1, 0x18($v0)
  .L80046180:
    /* 36980 80046180 2400BF8F */  lw         $ra, 0x24($sp)
    /* 36984 80046184 2000B48F */  lw         $s4, 0x20($sp)
    /* 36988 80046188 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3698C 8004618C 1800B28F */  lw         $s2, 0x18($sp)
    /* 36990 80046190 1400B18F */  lw         $s1, 0x14($sp)
    /* 36994 80046194 1000B08F */  lw         $s0, 0x10($sp)
    /* 36998 80046198 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3699C 8004619C 0800E003 */  jr         $ra
    /* 369A0 800461A0 00000000 */   nop
.size func_8004617C, . - func_8004617C
