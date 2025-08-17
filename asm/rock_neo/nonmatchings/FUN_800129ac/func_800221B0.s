.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800221B0
    /* 129B0 800221B0 3800BE8F */  lw         $fp, 0x38($sp)
    /* 129B4 800221B4 3400B78F */  lw         $s7, 0x34($sp)
    /* 129B8 800221B8 3000B68F */  lw         $s6, 0x30($sp)
    /* 129BC 800221BC 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 129C0 800221C0 2800B48F */  lw         $s4, 0x28($sp)
    /* 129C4 800221C4 2400B38F */  lw         $s3, 0x24($sp)
    /* 129C8 800221C8 2000B28F */  lw         $s2, 0x20($sp)
    /* 129CC 800221CC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 129D0 800221D0 1800B08F */  lw         $s0, 0x18($sp)
    /* 129D4 800221D4 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 129D8 800221D8 0800E003 */  jr         $ra
    /* 129DC 800221DC 00000000 */   nop
.size func_800221B0, . - func_800221B0
