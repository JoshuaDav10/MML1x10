.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80052AE8
    /* 432E8 80052AE8 9400B38F */  lw         $s3, 0x94($sp)
    /* 432EC 80052AEC 9000B28F */  lw         $s2, 0x90($sp)
    /* 432F0 80052AF0 8C00B18F */  lw         $s1, 0x8C($sp)
    /* 432F4 80052AF4 8800B08F */  lw         $s0, 0x88($sp)
    /* 432F8 80052AF8 A800BD27 */  addiu      $sp, $sp, 0xA8
.size func_80052AE8, . - func_80052AE8
