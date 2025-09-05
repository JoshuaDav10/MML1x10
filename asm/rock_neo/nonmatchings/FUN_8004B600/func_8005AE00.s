.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005AE00
    /* 4B600 8005AE00 08000296 */  lhu        $v0, 0x8($s0)
    /* 4B604 8005AE04 94000396 */  lhu        $v1, 0x94($s0)
    /* 4B608 8005AE08 A400048E */  lw         $a0, 0xA4($s0)
    /* 4B60C 8005AE0C 21104300 */  addu       $v0, $v0, $v1
    /* 4B610 8005AE10 100082A4 */  sh         $v0, 0x10($a0)
    /* 4B614 8005AE14 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4B618 8005AE18 96000396 */  lhu        $v1, 0x96($s0)
    /* 4B61C 8005AE1C A400048E */  lw         $a0, 0xA4($s0)
    /* 4B620 8005AE20 21104300 */  addu       $v0, $v0, $v1
    /* 4B624 8005AE24 120082A4 */  sh         $v0, 0x12($a0)
    /* 4B628 8005AE28 08000296 */  lhu        $v0, 0x8($s0)
    /* 4B62C 8005AE2C 90000396 */  lhu        $v1, 0x90($s0)
    /* 4B630 8005AE30 00000000 */  nop
    /* 4B634 8005AE34 21104300 */  addu       $v0, $v0, $v1
    /* 4B638 8005AE38 A400038E */  lw         $v1, 0xA4($s0)
    /* 4B63C 8005AE3C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4B640 8005AE40 180062A4 */  sh         $v0, 0x18($v1)
    /* 4B644 8005AE44 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4B648 8005AE48 92000396 */  lhu        $v1, 0x92($s0)
    /* 4B64C 8005AE4C 00000000 */  nop
    /* 4B650 8005AE50 21104300 */  addu       $v0, $v0, $v1
    /* 4B654 8005AE54 A400038E */  lw         $v1, 0xA4($s0)
    /* 4B658 8005AE58 01004224 */  addiu      $v0, $v0, 0x1
    /* 4B65C 8005AE5C 1A0062A4 */  sh         $v0, 0x1A($v1)
    /* 4B660 8005AE60 08000296 */  lhu        $v0, 0x8($s0)
    /* 4B664 8005AE64 94000396 */  lhu        $v1, 0x94($s0)
    /* 4B668 8005AE68 00000000 */  nop
    /* 4B66C 8005AE6C 21104300 */  addu       $v0, $v0, $v1
    /* 4B670 8005AE70 A400038E */  lw         $v1, 0xA4($s0)
    /* 4B674 8005AE74 01004224 */  addiu      $v0, $v0, 0x1
    /* 4B678 8005AE78 200062A4 */  sh         $v0, 0x20($v1)
    /* 4B67C 8005AE7C 0A000296 */  lhu        $v0, 0xA($s0)
.size func_8005AE00, . - func_8005AE00
