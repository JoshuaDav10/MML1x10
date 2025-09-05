.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80045FB4
    /* 367B4 80045FB4 5000BE8F */  lw         $fp, 0x50($sp)
    /* 367B8 80045FB8 4C00B78F */  lw         $s7, 0x4C($sp)
    /* 367BC 80045FBC 4800B68F */  lw         $s6, 0x48($sp)
    /* 367C0 80045FC0 4400B58F */  lw         $s5, 0x44($sp)
    /* 367C4 80045FC4 4000B48F */  lw         $s4, 0x40($sp)
    /* 367C8 80045FC8 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 367CC 80045FCC 3800B28F */  lw         $s2, 0x38($sp)
    /* 367D0 80045FD0 3400B18F */  lw         $s1, 0x34($sp)
    /* 367D4 80045FD4 3000B08F */  lw         $s0, 0x30($sp)
    /* 367D8 80045FD8 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 367DC 80045FDC 0800E003 */  jr         $ra
    /* 367E0 80045FE0 00000000 */   nop
.size func_80045FB4, . - func_80045FB4
