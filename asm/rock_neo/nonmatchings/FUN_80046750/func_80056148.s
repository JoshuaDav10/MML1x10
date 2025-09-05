.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80056148
    /* 46948 80056148 08008294 */  lhu        $v0, 0x8($a0)
    /* 4694C 8005614C 00000000 */  nop
    /* 46950 80056150 100082A4 */  sh         $v0, 0x10($a0)
    /* 46954 80056154 1400828C */  lw         $v0, 0x14($a0)
    /* 46958 80056158 70008390 */  lbu        $v1, 0x70($a0)
    /* 4695C 8005615C 01004590 */  lbu        $a1, 0x1($v0)
    /* 46960 80056160 1400828C */  lw         $v0, 0x14($a0)
.size func_80056148, . - func_80056148
