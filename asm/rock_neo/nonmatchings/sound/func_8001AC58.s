.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001AC58
    /* B458 8001AC58 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* B45C 8001AC5C 1800B2AF */  sw         $s2, 0x18($sp)
    /* B460 8001AC60 21908000 */  addu       $s2, $a0, $zero
    /* B464 8001AC64 2800BFAF */  sw         $ra, 0x28($sp)
    /* B468 8001AC68 2400B5AF */  sw         $s5, 0x24($sp)
    /* B46C 8001AC6C 2000B4AF */  sw         $s4, 0x20($sp)
    /* B470 8001AC70 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* B474 8001AC74 1400B1AF */  sw         $s1, 0x14($sp)
    /* B478 8001AC78 1000B0AF */  sw         $s0, 0x10($sp)
    /* B47C 8001AC7C 02004286 */  lh         $v0, 0x2($s2)
    /* B480 8001AC80 0880033C */  lui        $v1, %hi(D_8008241C)
    /* B484 8001AC84 1C246324 */  addiu      $v1, $v1, %lo(D_8008241C)
    /* B488 8001AC88 80100200 */  sll        $v0, $v0, 2
    /* B48C 8001AC8C 21884300 */  addu       $s1, $v0, $v1
    /* B490 8001AC90 00002492 */  lbu        $a0, 0x0($s1)
    /* B494 8001AC94 7F68000C */  jal        func_8001A1FC
    /* B498 8001AC98 3F008430 */   andi      $a0, $a0, 0x3F
    /* B49C 8001AC9C 0B80153C */  lui        $s5, %hi(D_800AD140)
    /* B4A0 8001ACA0 40D1B526 */  addiu      $s5, $s5, %lo(D_800AD140)
    /* B4A4 8001ACA4 21A04000 */  addu       $s4, $v0, $zero
    /* B4A8 8001ACA8 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* B4AC 8001ACAC 65009012 */  beq        $s4, $s0, .L8001AE44
    /* B4B0 8001ACB0 00000000 */   nop
    /* B4B4 8001ACB4 01002492 */  lbu        $a0, 0x1($s1)
    /* B4B8 8001ACB8 8E68000C */  jal        func_8001A238
    /* B4BC 8001ACBC 7F008430 */   andi      $a0, $a0, 0x7F
    /* B4C0 8001ACC0 21984000 */  addu       $s3, $v0, $zero
    /* B4C4 8001ACC4 5F007012 */  beq        $s3, $s0, .L8001AE44
    /* B4C8 8001ACC8 00000000 */   nop
    /* B4CC 8001ACCC 0A80033C */  lui        $v1, %hi(D_80098AF8)
    /* B4D0 8001ACD0 F88A6324 */  addiu      $v1, $v1, %lo(D_80098AF8)
    /* B4D4 8001ACD4 02002292 */  lbu        $v0, 0x2($s1)
    /* B4D8 8001ACD8 0400448E */  lw         $a0, 0x4($s2)
    /* B4DC 8001ACDC 02110200 */  srl        $v0, $v0, 4
    /* B4E0 8001ACE0 C0100200 */  sll        $v0, $v0, 3
    /* B4E4 8001ACE4 0E008014 */  bnez       $a0, .L8001AD20
    /* B4E8 8001ACE8 21804300 */   addu      $s0, $v0, $v1
    /* B4EC 8001ACEC 05000292 */  lbu        $v0, 0x5($s0)
    /* B4F0 8001ACF0 00000000 */  nop
    /* B4F4 8001ACF4 0A004010 */  beqz       $v0, .L8001AD20
    /* B4F8 8001ACF8 00000000 */   nop
    /* B4FC 8001ACFC 06000386 */  lh         $v1, 0x6($s0)
    /* B500 8001AD00 02004286 */  lh         $v0, 0x2($s2)
    /* B504 8001AD04 00000000 */  nop
    /* B508 8001AD08 05006214 */  bne        $v1, $v0, .L8001AD20
    /* B50C 8001AD0C 7F000224 */   addiu     $v0, $zero, 0x7F
    /* B510 8001AD10 0B80013C */  lui        $at, %hi(D_800AD152)
    /* B514 8001AD14 52D122A4 */  sh         $v0, %lo(D_800AD152)($at)
    /* B518 8001AD18 916B0008 */  j          .L8001AE44
    /* B51C 8001AD1C 00000000 */   nop
  .L8001AD20:
    /* B520 8001AD20 02002292 */  lbu        $v0, 0x2($s1)
    /* B524 8001AD24 03000382 */  lb         $v1, 0x3($s0)
    /* B528 8001AD28 0F004230 */  andi       $v0, $v0, 0xF
    /* B52C 8001AD2C 2A104300 */  slt        $v0, $v0, $v1
    /* B530 8001AD30 44004014 */  bnez       $v0, .L8001AE44
    /* B534 8001AD34 FFFF0324 */   addiu     $v1, $zero, -0x1
    /* B538 8001AD38 00000486 */  lh         $a0, 0x0($s0)
    /* B53C 8001AD3C 00000000 */  nop
    /* B540 8001AD40 14008310 */  beq        $a0, $v1, .L8001AD94
    /* B544 8001AD44 00000000 */   nop
    /* B548 8001AD48 02000282 */  lb         $v0, 0x2($s0)
    /* B54C 8001AD4C 00000000 */  nop
    /* B550 8001AD50 10004310 */  beq        $v0, $v1, .L8001AD94
    /* B554 8001AD54 00000000 */   nop
    /* B558 8001AD58 08004014 */  bnez       $v0, .L8001AD7C
    /* B55C 8001AD5C 00000000 */   nop
    /* B560 8001AD60 45C0010C */  jal        func_80070114
    /* B564 8001AD64 00000000 */   nop
    /* B568 8001AD68 00000486 */  lh         $a0, 0x0($s0)
    /* B56C 8001AD6C 19AD010C */  jal        SsSeqClose
    /* B570 8001AD70 00000000 */   nop
    /* B574 8001AD74 666B0008 */  j          .L8001AD98
    /* B578 8001AD78 C0181300 */   sll       $v1, $s3, 3
  .L8001AD7C:
    /* B57C 8001AD7C 04000592 */  lbu        $a1, 0x4($s0)
    /* B580 8001AD80 4FC0010C */  jal        func_8007013C
    /* B584 8001AD84 00000000 */   nop
    /* B588 8001AD88 00000486 */  lh         $a0, 0x0($s0)
    /* B58C 8001AD8C 22AD010C */  jal        SsSepClose
    /* B590 8001AD90 00000000 */   nop
  .L8001AD94:
    /* B594 8001AD94 C0181300 */  sll        $v1, $s3, 3
  .L8001AD98:
    /* B598 8001AD98 C0101400 */  sll        $v0, $s4, 3
    /* B59C 8001AD9C 0A80013C */  lui        $at, %hi(D_80098AD4)
    /* B5A0 8001ADA0 21082300 */  addu       $at, $at, $v1
    /* B5A4 8001ADA4 D48A248C */  lw         $a0, %lo(D_80098AD4)($at)
    /* B5A8 8001ADA8 0C80013C */  lui        $at, %hi(Game_work + 0x1B8)
    /* B5AC 8001ADAC 21082200 */  addu       $at, $at, $v0
    /* B5B0 8001ADB0 C81C2584 */  lh         $a1, %lo(Game_work + 0x1B8)($at)
    /* B5B4 8001ADB4 0A80013C */  lui        $at, %hi(D_80098AD1)
    /* B5B8 8001ADB8 21082300 */  addu       $at, $at, $v1
    /* B5BC 8001ADBC D18A2690 */  lbu        $a2, %lo(D_80098AD1)($at)
    /* B5C0 8001ADC0 99AD010C */  jal        SsSepOpen
    /* B5C4 8001ADC4 00000000 */   nop
    /* B5C8 8001ADC8 000002A6 */  sh         $v0, 0x0($s0)
    /* B5CC 8001ADCC 02002292 */  lbu        $v0, 0x2($s1)
    /* B5D0 8001ADD0 01000324 */  addiu      $v1, $zero, 0x1
    /* B5D4 8001ADD4 020003A2 */  sb         $v1, 0x2($s0)
    /* B5D8 8001ADD8 00000386 */  lh         $v1, 0x0($s0)
    /* B5DC 8001ADDC 0F004230 */  andi       $v0, $v0, 0xF
    /* B5E0 8001ADE0 030002A2 */  sb         $v0, 0x3($s0)
    /* B5E4 8001ADE4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* B5E8 8001ADE8 16006210 */  beq        $v1, $v0, .L8001AE44
    /* B5EC 8001ADEC 00000000 */   nop
    /* B5F0 8001ADF0 03002292 */  lbu        $v0, 0x3($s1)
    /* B5F4 8001ADF4 00000000 */  nop
    /* B5F8 8001ADF8 1F004530 */  andi       $a1, $v0, 0x1F
    /* B5FC 8001ADFC 040005A2 */  sb         $a1, 0x4($s0)
    /* B600 8001AE00 01002292 */  lbu        $v0, 0x1($s1)
    /* B604 8001AE04 00000000 */  nop
    /* B608 8001AE08 80004230 */  andi       $v0, $v0, 0x80
    /* B60C 8001AE0C 04004010 */  beqz       $v0, .L8001AE20
    /* B610 8001AE10 01000624 */   addiu     $a2, $zero, 0x1
    /* B614 8001AE14 00000486 */  lh         $a0, 0x0($s0)
    /* B618 8001AE18 8A6B0008 */  j          .L8001AE28
    /* B61C 8001AE1C 21380000 */   addu      $a3, $zero, $zero
  .L8001AE20:
    /* B620 8001AE20 00000486 */  lh         $a0, 0x0($s0)
    /* B624 8001AE24 01000724 */  addiu      $a3, $zero, 0x1
  .L8001AE28:
    /* B628 8001AE28 CEB8010C */  jal        SsSepPlay
    /* B62C 8001AE2C 00000000 */   nop
    /* B630 8001AE30 7F000224 */  addiu      $v0, $zero, 0x7F
    /* B634 8001AE34 1200A2A6 */  sh         $v0, 0x12($s5)
    /* B638 8001AE38 02004296 */  lhu        $v0, 0x2($s2)
    /* B63C 8001AE3C 00000000 */  nop
    /* B640 8001AE40 060002A6 */  sh         $v0, 0x6($s0)
  .L8001AE44:
    /* B644 8001AE44 2800BF8F */  lw         $ra, 0x28($sp)
    /* B648 8001AE48 2400B58F */  lw         $s5, 0x24($sp)
    /* B64C 8001AE4C 2000B48F */  lw         $s4, 0x20($sp)
    /* B650 8001AE50 1C00B38F */  lw         $s3, 0x1C($sp)
    /* B654 8001AE54 1800B28F */  lw         $s2, 0x18($sp)
    /* B658 8001AE58 1400B18F */  lw         $s1, 0x14($sp)
    /* B65C 8001AE5C 1000B08F */  lw         $s0, 0x10($sp)
    /* B660 8001AE60 3000BD27 */  addiu      $sp, $sp, 0x30
    /* B664 8001AE64 0800E003 */  jr         $ra
    /* B668 8001AE68 00000000 */   nop
.size func_8001AC58, . - func_8001AC58
