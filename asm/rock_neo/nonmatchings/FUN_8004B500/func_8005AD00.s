.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005AD00
    /* 4B500 8005AD00 940002A6 */  sh         $v0, 0x94($s0)
    /* 4B504 8005AD04 0980013C */  lui        $at, %hi(D_8008AF18)
    /* 4B508 8005AD08 21082400 */  addu       $at, $at, $a0
    /* 4B50C 8005AD0C 18AF2590 */  lbu        $a1, %lo(D_8008AF18)($at)
    /* 4B510 8005AD10 396F010C */  jal        func_8005BCE4
    /* 4B514 8005AD14 21200002 */   addu      $a0, $s0, $zero
    /* 4B518 8005AD18 08000296 */  lhu        $v0, 0x8($s0)
    /* 4B51C 8005AD1C 88000396 */  lhu        $v1, 0x88($s0)
    /* 4B520 8005AD20 00000000 */  nop
    /* 4B524 8005AD24 21104300 */  addu       $v0, $v0, $v1
    /* 4B528 8005AD28 A000038E */  lw         $v1, 0xA0($s0)
    /* 4B52C 8005AD2C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4B530 8005AD30 080062A4 */  sh         $v0, 0x8($v1)
    /* 4B534 8005AD34 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4B538 8005AD38 8A000396 */  lhu        $v1, 0x8A($s0)
    /* 4B53C 8005AD3C 00000000 */  nop
    /* 4B540 8005AD40 21104300 */  addu       $v0, $v0, $v1
    /* 4B544 8005AD44 A000038E */  lw         $v1, 0xA0($s0)
    /* 4B548 8005AD48 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4B54C 8005AD4C 0A0062A4 */  sh         $v0, 0xA($v1)
    /* 4B550 8005AD50 08000296 */  lhu        $v0, 0x8($s0)
    /* 4B554 8005AD54 8C000396 */  lhu        $v1, 0x8C($s0)
    /* 4B558 8005AD58 00000000 */  nop
    /* 4B55C 8005AD5C 21104300 */  addu       $v0, $v0, $v1
    /* 4B560 8005AD60 A000038E */  lw         $v1, 0xA0($s0)
    /* 4B564 8005AD64 01004224 */  addiu      $v0, $v0, 0x1
    /* 4B568 8005AD68 100062A4 */  sh         $v0, 0x10($v1)
    /* 4B56C 8005AD6C 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4B570 8005AD70 8E000396 */  lhu        $v1, 0x8E($s0)
    /* 4B574 8005AD74 00000000 */  nop
    /* 4B578 8005AD78 21104300 */  addu       $v0, $v0, $v1
    /* 4B57C 8005AD7C A000038E */  lw         $v1, 0xA0($s0)
    /* 4B580 8005AD80 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4B584 8005AD84 120062A4 */  sh         $v0, 0x12($v1)
    /* 4B588 8005AD88 08000296 */  lhu        $v0, 0x8($s0)
    /* 4B58C 8005AD8C 88000396 */  lhu        $v1, 0x88($s0)
    /* 4B590 8005AD90 A000048E */  lw         $a0, 0xA0($s0)
    /* 4B594 8005AD94 21104300 */  addu       $v0, $v0, $v1
    /* 4B598 8005AD98 180082A4 */  sh         $v0, 0x18($a0)
    /* 4B59C 8005AD9C 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4B5A0 8005ADA0 8A000396 */  lhu        $v1, 0x8A($s0)
    /* 4B5A4 8005ADA4 A000048E */  lw         $a0, 0xA0($s0)
    /* 4B5A8 8005ADA8 21104300 */  addu       $v0, $v0, $v1
    /* 4B5AC 8005ADAC 1A0082A4 */  sh         $v0, 0x1A($a0)
    /* 4B5B0 8005ADB0 08000296 */  lhu        $v0, 0x8($s0)
    /* 4B5B4 8005ADB4 8C000396 */  lhu        $v1, 0x8C($s0)
    /* 4B5B8 8005ADB8 A000048E */  lw         $a0, 0xA0($s0)
    /* 4B5BC 8005ADBC 21104300 */  addu       $v0, $v0, $v1
    /* 4B5C0 8005ADC0 200082A4 */  sh         $v0, 0x20($a0)
    /* 4B5C4 8005ADC4 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4B5C8 8005ADC8 8E000396 */  lhu        $v1, 0x8E($s0)
    /* 4B5CC 8005ADCC A000048E */  lw         $a0, 0xA0($s0)
    /* 4B5D0 8005ADD0 21104300 */  addu       $v0, $v0, $v1
    /* 4B5D4 8005ADD4 220082A4 */  sh         $v0, 0x22($a0)
    /* 4B5D8 8005ADD8 08000296 */  lhu        $v0, 0x8($s0)
    /* 4B5DC 8005ADDC 90000396 */  lhu        $v1, 0x90($s0)
    /* 4B5E0 8005ADE0 A400048E */  lw         $a0, 0xA4($s0)
    /* 4B5E4 8005ADE4 21104300 */  addu       $v0, $v0, $v1
    /* 4B5E8 8005ADE8 080082A4 */  sh         $v0, 0x8($a0)
    /* 4B5EC 8005ADEC 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4B5F0 8005ADF0 92000396 */  lhu        $v1, 0x92($s0)
    /* 4B5F4 8005ADF4 A400048E */  lw         $a0, 0xA4($s0)
    /* 4B5F8 8005ADF8 21104300 */  addu       $v0, $v0, $v1
    /* 4B5FC 8005ADFC 0A0082A4 */  sh         $v0, 0xA($a0)
.size func_8005AD00, . - func_8005AD00
