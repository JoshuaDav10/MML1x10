.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8007D88C
    /* 6E08C 8007D88C 0400C38C */  lw         $v1, 0x4($a2)
    /* 6E090 8007D890 0800C48C */  lw         $a0, 0x8($a2)
    /* 6E094 8007D894 0000E2AC */  sw         $v0, 0x0($a3)
    /* 6E098 8007D898 0400E3AC */  sw         $v1, 0x4($a3)
    /* 6E09C 8007D89C 0800E4AC */  sw         $a0, 0x8($a3)
    /* 6E0A0 8007D8A0 2000BF8F */  lw         $ra, 0x20($sp)
    /* 6E0A4 8007D8A4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6E0A8 8007D8A8 1800B28F */  lw         $s2, 0x18($sp)
    /* 6E0AC 8007D8AC 1400B18F */  lw         $s1, 0x14($sp)
    /* 6E0B0 8007D8B0 1000B08F */  lw         $s0, 0x10($sp)
    /* 6E0B4 8007D8B4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 6E0B8 8007D8B8 0800E003 */  jr         $ra
    /* 6E0BC 8007D8BC 00000000 */   nop
.size func_8007D88C, . - func_8007D88C
