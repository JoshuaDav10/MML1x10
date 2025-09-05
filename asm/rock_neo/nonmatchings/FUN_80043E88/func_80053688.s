.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80053688
    /* 43E88 80053688 21104300 */  addu       $v0, $v0, $v1
    /* 43E8C 8005368C 080022AE */  sw         $v0, 0x8($s1)
  .L80053690:
    /* 43E90 80053690 6000BF8F */  lw         $ra, 0x60($sp)
    /* 43E94 80053694 5C00B38F */  lw         $s3, 0x5C($sp)
    /* 43E98 80053698 5800B28F */  lw         $s2, 0x58($sp)
    /* 43E9C 8005369C 5400B18F */  lw         $s1, 0x54($sp)
    /* 43EA0 800536A0 5000B08F */  lw         $s0, 0x50($sp)
    /* 43EA4 800536A4 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 43EA8 800536A8 0800E003 */  jr         $ra
    /* 43EAC 800536AC 00000000 */   nop
.size func_80053688, . - func_80053688
