.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005B300
    /* 4BB00 8005B300 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4BB04 8005B304 8E000396 */  lhu        $v1, 0x8E($s0)
    /* 4BB08 8005B308 9C00068E */  lw         $a2, 0x9C($s0)
    /* 4BB0C 8005B30C 21104300 */  addu       $v0, $v0, $v1
    /* 4BB10 8005B310 0E00C2A4 */  sh         $v0, 0xE($a2)
    /* 4BB14 8005B314 08000296 */  lhu        $v0, 0x8($s0)
    /* 4BB18 8005B318 90000396 */  lhu        $v1, 0x90($s0)
    /* 4BB1C 8005B31C 9C00068E */  lw         $a2, 0x9C($s0)
    /* 4BB20 8005B320 21104300 */  addu       $v0, $v0, $v1
    /* 4BB24 8005B324 1000C2A4 */  sh         $v0, 0x10($a2)
    /* 4BB28 8005B328 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4BB2C 8005B32C 92000396 */  lhu        $v1, 0x92($s0)
    /* 4BB30 8005B330 9C00068E */  lw         $a2, 0x9C($s0)
    /* 4BB34 8005B334 21104300 */  addu       $v0, $v0, $v1
    /* 4BB38 8005B338 1200C2A4 */  sh         $v0, 0x12($a2)
    /* 4BB3C 8005B33C 08000296 */  lhu        $v0, 0x8($s0)
    /* 4BB40 8005B340 94000396 */  lhu        $v1, 0x94($s0)
    /* 4BB44 8005B344 9C00068E */  lw         $a2, 0x9C($s0)
    /* 4BB48 8005B348 21104300 */  addu       $v0, $v0, $v1
    /* 4BB4C 8005B34C 1400C2A4 */  sh         $v0, 0x14($a2)
    /* 4BB50 8005B350 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4BB54 8005B354 96000396 */  lhu        $v1, 0x96($s0)
    /* 4BB58 8005B358 9C00068E */  lw         $a2, 0x9C($s0)
    /* 4BB5C 8005B35C 21104300 */  addu       $v0, $v0, $v1
    /* 4BB60 8005B360 1600C2A4 */  sh         $v0, 0x16($a2)
    /* 4BB64 8005B364 3D000282 */  lb         $v0, 0x3D($s0)
    /* 4BB68 8005B368 9C00068E */  lw         $a2, 0x9C($s0)
    /* 4BB6C 8005B36C 80100200 */  sll        $v0, $v0, 2
    /* 4BB70 8005B370 21104800 */  addu       $v0, $v0, $t0
    /* 4BB74 8005B374 0000C38C */  lw         $v1, 0x0($a2)
    /* 4BB78 8005B378 7000428C */  lw         $v0, 0x70($v0)
    /* 4BB7C 8005B37C 24187300 */  and        $v1, $v1, $s3
.size func_8005B300, . - func_8005B300
