.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005B180
    /* 4B980 8005B180 8C000396 */  lhu        $v1, 0x8C($s0)
    /* 4B984 8005B184 9800068E */  lw         $a2, 0x98($s0)
    /* 4B988 8005B188 21104300 */  addu       $v0, $v0, $v1
    /* 4B98C 8005B18C 0C00C2A4 */  sh         $v0, 0xC($a2)
    /* 4B990 8005B190 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4B994 8005B194 8E000396 */  lhu        $v1, 0x8E($s0)
    /* 4B998 8005B198 9800068E */  lw         $a2, 0x98($s0)
    /* 4B99C 8005B19C 21104300 */  addu       $v0, $v0, $v1
    /* 4B9A0 8005B1A0 0E00C2A4 */  sh         $v0, 0xE($a2)
    /* 4B9A4 8005B1A4 08000296 */  lhu        $v0, 0x8($s0)
    /* 4B9A8 8005B1A8 90000396 */  lhu        $v1, 0x90($s0)
    /* 4B9AC 8005B1AC 9800068E */  lw         $a2, 0x98($s0)
    /* 4B9B0 8005B1B0 21104300 */  addu       $v0, $v0, $v1
    /* 4B9B4 8005B1B4 1000C2A4 */  sh         $v0, 0x10($a2)
    /* 4B9B8 8005B1B8 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4B9BC 8005B1BC 92000396 */  lhu        $v1, 0x92($s0)
    /* 4B9C0 8005B1C0 9800068E */  lw         $a2, 0x98($s0)
    /* 4B9C4 8005B1C4 21104300 */  addu       $v0, $v0, $v1
    /* 4B9C8 8005B1C8 1200C2A4 */  sh         $v0, 0x12($a2)
    /* 4B9CC 8005B1CC 08000296 */  lhu        $v0, 0x8($s0)
    /* 4B9D0 8005B1D0 94000396 */  lhu        $v1, 0x94($s0)
    /* 4B9D4 8005B1D4 9800068E */  lw         $a2, 0x98($s0)
    /* 4B9D8 8005B1D8 21104300 */  addu       $v0, $v0, $v1
    /* 4B9DC 8005B1DC 1400C2A4 */  sh         $v0, 0x14($a2)
    /* 4B9E0 8005B1E0 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4B9E4 8005B1E4 96000396 */  lhu        $v1, 0x96($s0)
    /* 4B9E8 8005B1E8 9800068E */  lw         $a2, 0x98($s0)
    /* 4B9EC 8005B1EC 21104300 */  addu       $v0, $v0, $v1
    /* 4B9F0 8005B1F0 1600C2A4 */  sh         $v0, 0x16($a2)
    /* 4B9F4 8005B1F4 3D000282 */  lb         $v0, 0x3D($s0)
    /* 4B9F8 8005B1F8 9800068E */  lw         $a2, 0x98($s0)
    /* 4B9FC 8005B1FC 80100200 */  sll        $v0, $v0, 2
.size func_8005B180, . - func_8005B180
