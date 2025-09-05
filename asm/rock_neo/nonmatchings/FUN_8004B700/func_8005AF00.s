.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005AF00
    /* 4B700 8005AF00 FF00123C */  lui        $s2, (0xFFFFFF >> 16)
    /* 4B704 8005AF04 21104300 */  addu       $v0, $v0, $v1
    /* 4B708 8005AF08 A800038E */  lw         $v1, 0xA8($s0)
    /* 4B70C 8005AF0C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4B710 8005AF10 180062A4 */  sh         $v0, 0x18($v1)
    /* 4B714 8005AF14 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4B718 8005AF18 92000396 */  lhu        $v1, 0x92($s0)
    /* 4B71C 8005AF1C FFFF5236 */  ori        $s2, $s2, (0xFFFFFF & 0xFFFF)
    /* 4B720 8005AF20 21104300 */  addu       $v0, $v0, $v1
    /* 4B724 8005AF24 A800038E */  lw         $v1, 0xA8($s0)
    /* 4B728 8005AF28 01004224 */  addiu      $v0, $v0, 0x1
    /* 4B72C 8005AF2C 1A0062A4 */  sh         $v0, 0x1A($v1)
    /* 4B730 8005AF30 08000296 */  lhu        $v0, 0x8($s0)
    /* 4B734 8005AF34 90000396 */  lhu        $v1, 0x90($s0)
    /* 4B738 8005AF38 A800048E */  lw         $a0, 0xA8($s0)
    /* 4B73C 8005AF3C 21104300 */  addu       $v0, $v0, $v1
    /* 4B740 8005AF40 200082A4 */  sh         $v0, 0x20($a0)
    /* 4B744 8005AF44 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4B748 8005AF48 92000396 */  lhu        $v1, 0x92($s0)
    /* 4B74C 8005AF4C A800048E */  lw         $a0, 0xA8($s0)
    /* 4B750 8005AF50 21104300 */  addu       $v0, $v0, $v1
    /* 4B754 8005AF54 220082A4 */  sh         $v0, 0x22($a0)
    /* 4B758 8005AF58 08000296 */  lhu        $v0, 0x8($s0)
    /* 4B75C 8005AF5C 8C000396 */  lhu        $v1, 0x8C($s0)
    /* 4B760 8005AF60 AC00048E */  lw         $a0, 0xAC($s0)
    /* 4B764 8005AF64 21104300 */  addu       $v0, $v0, $v1
    /* 4B768 8005AF68 080082A4 */  sh         $v0, 0x8($a0)
    /* 4B76C 8005AF6C 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4B770 8005AF70 8E000396 */  lhu        $v1, 0x8E($s0)
    /* 4B774 8005AF74 AC00048E */  lw         $a0, 0xAC($s0)
    /* 4B778 8005AF78 21104300 */  addu       $v0, $v0, $v1
    /* 4B77C 8005AF7C 0A0082A4 */  sh         $v0, 0xA($a0)
.size func_8005AF00, . - func_8005AF00
