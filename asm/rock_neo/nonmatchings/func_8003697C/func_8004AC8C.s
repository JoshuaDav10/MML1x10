.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004AC8C
    /* 3B48C 8004AC8C F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 3B490 8004AC90 21308000 */  addu       $a2, $a0, $zero
    /* 3B494 8004AC94 2138A000 */  addu       $a3, $a1, $zero
    /* 3B498 8004AC98 0003E230 */  andi       $v0, $a3, 0x300
    /* 3B49C 8004AC9C 52004010 */  beqz       $v0, .L8004ADE8
    /* 3B4A0 8004ACA0 21400000 */   addu      $t0, $zero, $zero
    /* 3B4A4 8004ACA4 000CE230 */  andi       $v0, $a3, 0xC00
    /* 3B4A8 8004ACA8 40004010 */  beqz       $v0, .L8004ADAC
    /* 3B4AC 8004ACAC 0001E230 */   andi      $v0, $a3, 0x100
    /* 3B4B0 8004ACB0 0300C288 */  lwl        $v0, 0x3($a2)
    /* 3B4B4 8004ACB4 0000C298 */  lwr        $v0, 0x0($a2)
    /* 3B4B8 8004ACB8 0700C388 */  lwl        $v1, 0x7($a2)
    /* 3B4BC 8004ACBC 0400C398 */  lwr        $v1, 0x4($a2)
    /* 3B4C0 8004ACC0 0300A2AB */  swl        $v0, 0x3($sp)
    /* 3B4C4 8004ACC4 0000A2BB */  swr        $v0, 0x0($sp)
    /* 3B4C8 8004ACC8 0700A3AB */  swl        $v1, 0x7($sp)
    /* 3B4CC 8004ACCC 0400A3BB */  swr        $v1, 0x4($sp)
    /* 3B4D0 8004ACD0 0001E230 */  andi       $v0, $a3, 0x100
    /* 3B4D4 8004ACD4 1C004010 */  beqz       $v0, .L8004AD48
    /* 3B4D8 8004ACD8 01000824 */   addiu     $t0, $zero, 0x1
    /* 3B4DC 8004ACDC 0004E230 */  andi       $v0, $a3, 0x400
    /* 3B4E0 8004ACE0 0F004010 */  beqz       $v0, .L8004AD20
    /* 3B4E4 8004ACE4 00000000 */   nop
    /* 3B4E8 8004ACE8 0400A287 */  lh         $v0, 0x4($sp)
    /* 3B4EC 8004ACEC 00000000 */  nop
    /* 3B4F0 8004ACF0 02004104 */  bgez       $v0, .L8004ACFC
    /* 3B4F4 8004ACF4 00000000 */   nop
    /* 3B4F8 8004ACF8 23100200 */  negu       $v0, $v0
  .L8004ACFC:
    /* 3B4FC 8004ACFC 23100200 */  negu       $v0, $v0
    /* 3B500 8004AD00 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 3B504 8004AD04 0000A287 */  lh         $v0, 0x0($sp)
    /* 3B508 8004AD08 00000000 */  nop
    /* 3B50C 8004AD0C 02004104 */  bgez       $v0, .L8004AD18
    /* 3B510 8004AD10 00000000 */   nop
    /* 3B514 8004AD14 23100200 */  negu       $v0, $v0
  .L8004AD18:
    /* 3B518 8004AD18 8B2B0108 */  j          .L8004AE2C
    /* 3B51C 8004AD1C 23100200 */   negu      $v0, $v0
  .L8004AD20:
    /* 3B520 8004AD20 0400A287 */  lh         $v0, 0x4($sp)
    /* 3B524 8004AD24 00000000 */  nop
    /* 3B528 8004AD28 02004104 */  bgez       $v0, .L8004AD34
    /* 3B52C 8004AD2C 00000000 */   nop
    /* 3B530 8004AD30 23100200 */  negu       $v0, $v0
  .L8004AD34:
    /* 3B534 8004AD34 23100200 */  negu       $v0, $v0
    /* 3B538 8004AD38 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 3B53C 8004AD3C 0000A287 */  lh         $v0, 0x0($sp)
    /* 3B540 8004AD40 872B0108 */  j          .L8004AE1C
    /* 3B544 8004AD44 00000000 */   nop
  .L8004AD48:
    /* 3B548 8004AD48 0004E230 */  andi       $v0, $a3, 0x400
    /* 3B54C 8004AD4C 0E004010 */  beqz       $v0, .L8004AD88
    /* 3B550 8004AD50 00000000 */   nop
    /* 3B554 8004AD54 0400A287 */  lh         $v0, 0x4($sp)
    /* 3B558 8004AD58 00000000 */  nop
    /* 3B55C 8004AD5C 02004104 */  bgez       $v0, .L8004AD68
    /* 3B560 8004AD60 00000000 */   nop
    /* 3B564 8004AD64 23100200 */  negu       $v0, $v0
  .L8004AD68:
    /* 3B568 8004AD68 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 3B56C 8004AD6C 0000A287 */  lh         $v0, 0x0($sp)
    /* 3B570 8004AD70 00000000 */  nop
    /* 3B574 8004AD74 02004104 */  bgez       $v0, .L8004AD80
    /* 3B578 8004AD78 00000000 */   nop
    /* 3B57C 8004AD7C 23100200 */  negu       $v0, $v0
  .L8004AD80:
    /* 3B580 8004AD80 8B2B0108 */  j          .L8004AE2C
    /* 3B584 8004AD84 23100200 */   negu      $v0, $v0
  .L8004AD88:
    /* 3B588 8004AD88 0400A287 */  lh         $v0, 0x4($sp)
    /* 3B58C 8004AD8C 00000000 */  nop
    /* 3B590 8004AD90 02004104 */  bgez       $v0, .L8004AD9C
    /* 3B594 8004AD94 00000000 */   nop
    /* 3B598 8004AD98 23100200 */  negu       $v0, $v0
  .L8004AD9C:
    /* 3B59C 8004AD9C 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 3B5A0 8004ADA0 0000A287 */  lh         $v0, 0x0($sp)
    /* 3B5A4 8004ADA4 872B0108 */  j          .L8004AE1C
    /* 3B5A8 8004ADA8 00000000 */   nop
  .L8004ADAC:
    /* 3B5AC 8004ADAC 08004010 */  beqz       $v0, .L8004ADD0
    /* 3B5B0 8004ADB0 01000824 */   addiu     $t0, $zero, 0x1
    /* 3B5B4 8004ADB4 0000C284 */  lh         $v0, 0x0($a2)
    /* 3B5B8 8004ADB8 00000000 */  nop
    /* 3B5BC 8004ADBC 02004104 */  bgez       $v0, .L8004ADC8
    /* 3B5C0 8004ADC0 00000000 */   nop
    /* 3B5C4 8004ADC4 23100200 */  negu       $v0, $v0
  .L8004ADC8:
    /* 3B5C8 8004ADC8 792B0108 */  j          .L8004ADE4
    /* 3B5CC 8004ADCC 23100200 */   negu      $v0, $v0
  .L8004ADD0:
    /* 3B5D0 8004ADD0 0000C284 */  lh         $v0, 0x0($a2)
    /* 3B5D4 8004ADD4 00000000 */  nop
    /* 3B5D8 8004ADD8 02004104 */  bgez       $v0, .L8004ADE4
    /* 3B5DC 8004ADDC 00000000 */   nop
    /* 3B5E0 8004ADE0 23100200 */  negu       $v0, $v0
  .L8004ADE4:
    /* 3B5E4 8004ADE4 0000C2A4 */  sh         $v0, 0x0($a2)
  .L8004ADE8:
    /* 3B5E8 8004ADE8 000CE230 */  andi       $v0, $a3, 0xC00
    /* 3B5EC 8004ADEC 10004010 */  beqz       $v0, .L8004AE30
    /* 3B5F0 8004ADF0 0004E230 */   andi      $v0, $a3, 0x400
    /* 3B5F4 8004ADF4 08004010 */  beqz       $v0, .L8004AE18
    /* 3B5F8 8004ADF8 01000824 */   addiu     $t0, $zero, 0x1
    /* 3B5FC 8004ADFC 0400C284 */  lh         $v0, 0x4($a2)
    /* 3B600 8004AE00 00000000 */  nop
    /* 3B604 8004AE04 02004104 */  bgez       $v0, .L8004AE10
    /* 3B608 8004AE08 00000000 */   nop
    /* 3B60C 8004AE0C 23100200 */  negu       $v0, $v0
  .L8004AE10:
    /* 3B610 8004AE10 8B2B0108 */  j          .L8004AE2C
    /* 3B614 8004AE14 23100200 */   negu      $v0, $v0
  .L8004AE18:
    /* 3B618 8004AE18 0400C284 */  lh         $v0, 0x4($a2)
  .L8004AE1C:
    /* 3B61C 8004AE1C 00000000 */  nop
    /* 3B620 8004AE20 02004104 */  bgez       $v0, .L8004AE2C
    /* 3B624 8004AE24 00000000 */   nop
    /* 3B628 8004AE28 23100200 */  negu       $v0, $v0
  .L8004AE2C:
    /* 3B62C 8004AE2C 0400C2A4 */  sh         $v0, 0x4($a2)
  .L8004AE30:
    /* 3B630 8004AE30 0030E230 */  andi       $v0, $a3, 0x3000
    /* 3B634 8004AE34 10004010 */  beqz       $v0, .L8004AE78
    /* 3B638 8004AE38 0010E230 */   andi      $v0, $a3, 0x1000
    /* 3B63C 8004AE3C 08004010 */  beqz       $v0, .L8004AE60
    /* 3B640 8004AE40 01000824 */   addiu     $t0, $zero, 0x1
    /* 3B644 8004AE44 0200C284 */  lh         $v0, 0x2($a2)
    /* 3B648 8004AE48 00000000 */  nop
    /* 3B64C 8004AE4C 02004104 */  bgez       $v0, .L8004AE58
    /* 3B650 8004AE50 00000000 */   nop
    /* 3B654 8004AE54 23100200 */  negu       $v0, $v0
  .L8004AE58:
    /* 3B658 8004AE58 9D2B0108 */  j          .L8004AE74
    /* 3B65C 8004AE5C 23100200 */   negu      $v0, $v0
  .L8004AE60:
    /* 3B660 8004AE60 0200C284 */  lh         $v0, 0x2($a2)
    /* 3B664 8004AE64 00000000 */  nop
    /* 3B668 8004AE68 02004104 */  bgez       $v0, .L8004AE74
    /* 3B66C 8004AE6C 00000000 */   nop
    /* 3B670 8004AE70 23100200 */  negu       $v0, $v0
  .L8004AE74:
    /* 3B674 8004AE74 0200C2A4 */  sh         $v0, 0x2($a2)
  .L8004AE78:
    /* 3B678 8004AE78 21100001 */  addu       $v0, $t0, $zero
    /* 3B67C 8004AE7C 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 3B680 8004AE80 0800E003 */  jr         $ra
    /* 3B684 8004AE84 00000000 */   nop
.size func_8004AC8C, . - func_8004AC8C
