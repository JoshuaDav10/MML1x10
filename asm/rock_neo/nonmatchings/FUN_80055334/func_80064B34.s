.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80064B34
    /* 55334 80064B34 D1920108 */  j          .L80064B44
    /* 55338 80064B38 04000224 */   addiu     $v0, $zero, 0x4
  .L80064B3C:
    /* 5533C 80064B3C 23100200 */  negu       $v0, $v0
    /* 55340 80064B40 03004230 */  andi       $v0, $v0, 0x3
  .L80064B44:
    /* 55344 80064B44 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 55348 80064B48 1800B28F */  lw         $s2, 0x18($sp)
    /* 5534C 80064B4C 1400B18F */  lw         $s1, 0x14($sp)
    /* 55350 80064B50 1000B08F */  lw         $s0, 0x10($sp)
    /* 55354 80064B54 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 55358 80064B58 0800E003 */  jr         $ra
    /* 5535C 80064B5C 00000000 */   nop
.size func_80064B34, . - func_80064B34
