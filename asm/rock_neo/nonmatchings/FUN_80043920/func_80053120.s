.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80053120
    /* 43920 80053120 21100002 */  addu       $v0, $s0, $zero
  .L80053124:
    /* 43924 80053124 8C00BF8F */  lw         $ra, 0x8C($sp)
    /* 43928 80053128 8800BE8F */  lw         $fp, 0x88($sp)
    /* 4392C 8005312C 8400B78F */  lw         $s7, 0x84($sp)
    /* 43930 80053130 8000B68F */  lw         $s6, 0x80($sp)
    /* 43934 80053134 7C00B58F */  lw         $s5, 0x7C($sp)
    /* 43938 80053138 7800B48F */  lw         $s4, 0x78($sp)
    /* 4393C 8005313C 7400B38F */  lw         $s3, 0x74($sp)
    /* 43940 80053140 7000B28F */  lw         $s2, 0x70($sp)
    /* 43944 80053144 6C00B18F */  lw         $s1, 0x6C($sp)
    /* 43948 80053148 6800B08F */  lw         $s0, 0x68($sp)
    /* 4394C 8005314C 9000BD27 */  addiu      $sp, $sp, 0x90
    /* 43950 80053150 0800E003 */  jr         $ra
    /* 43954 80053154 00000000 */   nop
.size func_80053120, . - func_80053120
