.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005AF80
    /* 4B780 8005AF80 08000296 */  lhu        $v0, 0x8($s0)
    /* 4B784 8005AF84 8C000396 */  lhu        $v1, 0x8C($s0)
    /* 4B788 8005AF88 00FF133C */  lui        $s3, (0xFF000000 >> 16)
    /* 4B78C 8005AF8C 21104300 */  addu       $v0, $v0, $v1
    /* 4B790 8005AF90 AC00038E */  lw         $v1, 0xAC($s0)
    /* 4B794 8005AF94 01004224 */  addiu      $v0, $v0, 0x1
    /* 4B798 8005AF98 100062A4 */  sh         $v0, 0x10($v1)
    /* 4B79C 8005AF9C 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4B7A0 8005AFA0 8E000396 */  lhu        $v1, 0x8E($s0)
    /* 4B7A4 8005AFA4 801F143C */  lui        $s4, (0x1F800070 >> 16)
    /* 4B7A8 8005AFA8 21104300 */  addu       $v0, $v0, $v1
    /* 4B7AC 8005AFAC AC00038E */  lw         $v1, 0xAC($s0)
    /* 4B7B0 8005AFB0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4B7B4 8005AFB4 120062A4 */  sh         $v0, 0x12($v1)
    /* 4B7B8 8005AFB8 08000296 */  lhu        $v0, 0x8($s0)
    /* 4B7BC 8005AFBC 94000396 */  lhu        $v1, 0x94($s0)
    /* 4B7C0 8005AFC0 AC00048E */  lw         $a0, 0xAC($s0)
    /* 4B7C4 8005AFC4 21104300 */  addu       $v0, $v0, $v1
    /* 4B7C8 8005AFC8 180082A4 */  sh         $v0, 0x18($a0)
    /* 4B7CC 8005AFCC 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4B7D0 8005AFD0 96000396 */  lhu        $v1, 0x96($s0)
    /* 4B7D4 8005AFD4 AC00048E */  lw         $a0, 0xAC($s0)
    /* 4B7D8 8005AFD8 21104300 */  addu       $v0, $v0, $v1
    /* 4B7DC 8005AFDC 1A0082A4 */  sh         $v0, 0x1A($a0)
    /* 4B7E0 8005AFE0 08000296 */  lhu        $v0, 0x8($s0)
    /* 4B7E4 8005AFE4 94000396 */  lhu        $v1, 0x94($s0)
    /* 4B7E8 8005AFE8 70009436 */  ori        $s4, $s4, (0x1F800070 & 0xFFFF)
    /* 4B7EC 8005AFEC 21104300 */  addu       $v0, $v0, $v1
    /* 4B7F0 8005AFF0 AC00038E */  lw         $v1, 0xAC($s0)
    /* 4B7F4 8005AFF4 01004224 */  addiu      $v0, $v0, 0x1
    /* 4B7F8 8005AFF8 200062A4 */  sh         $v0, 0x20($v1)
    /* 4B7FC 8005AFFC 0A000296 */  lhu        $v0, 0xA($s0)
.size func_8005AF80, . - func_8005AF80
