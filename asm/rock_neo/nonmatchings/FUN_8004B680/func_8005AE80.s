.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005AE80
    /* 4B680 8005AE80 96000396 */  lhu        $v1, 0x96($s0)
    /* 4B684 8005AE84 00000000 */  nop
    /* 4B688 8005AE88 21104300 */  addu       $v0, $v0, $v1
    /* 4B68C 8005AE8C A400038E */  lw         $v1, 0xA4($s0)
    /* 4B690 8005AE90 01004224 */  addiu      $v0, $v0, 0x1
    /* 4B694 8005AE94 220062A4 */  sh         $v0, 0x22($v1)
    /* 4B698 8005AE98 08000296 */  lhu        $v0, 0x8($s0)
    /* 4B69C 8005AE9C 88000396 */  lhu        $v1, 0x88($s0)
    /* 4B6A0 8005AEA0 00000000 */  nop
    /* 4B6A4 8005AEA4 21104300 */  addu       $v0, $v0, $v1
    /* 4B6A8 8005AEA8 A800038E */  lw         $v1, 0xA8($s0)
    /* 4B6AC 8005AEAC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4B6B0 8005AEB0 080062A4 */  sh         $v0, 0x8($v1)
    /* 4B6B4 8005AEB4 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4B6B8 8005AEB8 8A000396 */  lhu        $v1, 0x8A($s0)
    /* 4B6BC 8005AEBC 00000000 */  nop
    /* 4B6C0 8005AEC0 21104300 */  addu       $v0, $v0, $v1
    /* 4B6C4 8005AEC4 A800038E */  lw         $v1, 0xA8($s0)
    /* 4B6C8 8005AEC8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4B6CC 8005AECC 0A0062A4 */  sh         $v0, 0xA($v1)
    /* 4B6D0 8005AED0 08000296 */  lhu        $v0, 0x8($s0)
    /* 4B6D4 8005AED4 88000396 */  lhu        $v1, 0x88($s0)
    /* 4B6D8 8005AED8 A800048E */  lw         $a0, 0xA8($s0)
    /* 4B6DC 8005AEDC 21104300 */  addu       $v0, $v0, $v1
    /* 4B6E0 8005AEE0 100082A4 */  sh         $v0, 0x10($a0)
    /* 4B6E4 8005AEE4 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4B6E8 8005AEE8 8A000396 */  lhu        $v1, 0x8A($s0)
    /* 4B6EC 8005AEEC A800048E */  lw         $a0, 0xA8($s0)
    /* 4B6F0 8005AEF0 21104300 */  addu       $v0, $v0, $v1
    /* 4B6F4 8005AEF4 120082A4 */  sh         $v0, 0x12($a0)
    /* 4B6F8 8005AEF8 08000296 */  lhu        $v0, 0x8($s0)
    /* 4B6FC 8005AEFC 90000396 */  lhu        $v1, 0x90($s0)
.size func_8005AE80, . - func_8005AE80
