.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003AD14
    /* 2B514 8003AD14 0C80023C */  lui        $v0, %hi(Game_work + 0x64)
    /* 2B518 8003AD18 741B4294 */  lhu        $v0, %lo(Game_work + 0x64)($v0)
    /* 2B51C 8003AD1C 78FFBD27 */  addiu      $sp, $sp, -0x88
    /* 2B520 8003AD20 8400BFAF */  sw         $ra, 0x84($sp)
    /* 2B524 8003AD24 8000BEAF */  sw         $fp, 0x80($sp)
    /* 2B528 8003AD28 7C00B7AF */  sw         $s7, 0x7C($sp)
    /* 2B52C 8003AD2C 7800B6AF */  sw         $s6, 0x78($sp)
    /* 2B530 8003AD30 7400B5AF */  sw         $s5, 0x74($sp)
    /* 2B534 8003AD34 7000B4AF */  sw         $s4, 0x70($sp)
    /* 2B538 8003AD38 6C00B3AF */  sw         $s3, 0x6C($sp)
    /* 2B53C 8003AD3C 6800B2AF */  sw         $s2, 0x68($sp)
    /* 2B540 8003AD40 6400B1AF */  sw         $s1, 0x64($sp)
    /* 2B544 8003AD44 03004010 */  beqz       $v0, .L8003AD54
    /* 2B548 8003AD48 6000B0AF */   sw        $s0, 0x60($sp)
    /* 2B54C 8003AD4C 6DED000C */  jal        func_8003B5B4
    /* 2B550 8003AD50 00000000 */   nop
  .L8003AD54:
    /* 2B554 8003AD54 0C800E3C */  lui        $t6, %hi(Game_work + 0x50)
    /* 2B558 8003AD58 601BCE81 */  lb         $t6, %lo(Game_work + 0x50)($t6)
    /* 2B55C 8003AD5C 00000000 */  nop
    /* 2B560 8003AD60 5800AEAF */  sw         $t6, 0x58($sp)
    /* 2B564 8003AD64 0980013C */  lui        $at, %hi(D_80089F04)
    /* 2B568 8003AD68 21082E00 */  addu       $at, $at, $t6
    /* 2B56C 8003AD6C 049F2E80 */  lb         $t6, %lo(D_80089F04)($at)
    /* 2B570 8003AD70 00000000 */  nop
    /* 2B574 8003AD74 E500C005 */  bltz       $t6, .L8003B10C
    /* 2B578 8003AD78 5000AEAF */   sw        $t6, 0x50($sp)
    /* 2B57C 8003AD7C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2B580 8003AD80 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2B584 8003AD84 08C022AC */  sw         $v0, %lo(D_8015C008)($at)
    /* 2B588 8003AD88 21A80000 */  addu       $s5, $zero, $zero
    /* 2B58C 8003AD8C 1000BE27 */  addiu      $fp, $sp, 0x10
    /* 2B590 8003AD90 0980163C */  lui        $s6, %hi(D_80089F24)
    /* 2B594 8003AD94 249FD626 */  addiu      $s6, $s6, %lo(D_80089F24)
  .L8003AD98:
    /* 2B598 8003AD98 21A00000 */  addu       $s4, $zero, $zero
    /* 2B59C 8003AD9C 40B91500 */  sll        $s7, $s5, 5
    /* 2B5A0 8003ADA0 2190C002 */  addu       $s2, $s6, $zero
  .L8003ADA4:
    /* 2B5A4 8003ADA4 21980000 */  addu       $s3, $zero, $zero
    /* 2B5A8 8003ADA8 00191400 */  sll        $v1, $s4, 4
    /* 2B5AC 8003ADAC 2110FE02 */  addu       $v0, $s7, $fp
    /* 2B5B0 8003ADB0 21886200 */  addu       $s1, $v1, $v0
    /* 2B5B4 8003ADB4 21804002 */  addu       $s0, $s2, $zero
  .L8003ADB8:
    /* 2B5B8 8003ADB8 0000048E */  lw         $a0, 0x0($s0)
    /* 2B5BC 8003ADBC 04001026 */  addiu      $s0, $s0, 0x4
    /* 2B5C0 8003ADC0 09EB000C */  jal        func_8003AC24
    /* 2B5C4 8003ADC4 01007326 */   addiu     $s3, $s3, 0x1
    /* 2B5C8 8003ADC8 000022AE */  sw         $v0, 0x0($s1)
    /* 2B5CC 8003ADCC 0400622A */  slti       $v0, $s3, 0x4
    /* 2B5D0 8003ADD0 F9FF4014 */  bnez       $v0, .L8003ADB8
    /* 2B5D4 8003ADD4 04003126 */   addiu     $s1, $s1, 0x4
    /* 2B5D8 8003ADD8 01009426 */  addiu      $s4, $s4, 0x1
    /* 2B5DC 8003ADDC 0200822A */  slti       $v0, $s4, 0x2
    /* 2B5E0 8003ADE0 F0FF4014 */  bnez       $v0, .L8003ADA4
    /* 2B5E4 8003ADE4 10005226 */   addiu     $s2, $s2, 0x10
    /* 2B5E8 8003ADE8 0100B526 */  addiu      $s5, $s5, 0x1
    /* 2B5EC 8003ADEC 0200A22A */  slti       $v0, $s5, 0x2
    /* 2B5F0 8003ADF0 E9FF4014 */  bnez       $v0, .L8003AD98
    /* 2B5F4 8003ADF4 2000D626 */   addiu     $s6, $s6, 0x20
    /* 2B5F8 8003ADF8 0C80033C */  lui        $v1, %hi(Game_work + 0x50)
    /* 2B5FC 8003ADFC 601B6380 */  lb         $v1, %lo(Game_work + 0x50)($v1)
    /* 2B600 8003AE00 06000224 */  addiu      $v0, $zero, 0x6
    /* 2B604 8003AE04 2E006214 */  bne        $v1, $v0, .L8003AEC0
    /* 2B608 8003AE08 06000424 */   addiu     $a0, $zero, 0x6
    /* 2B60C 8003AE0C B5EC000C */  jal        func_8003B2D4
    /* 2B610 8003AE10 C7010524 */   addiu     $a1, $zero, 0x1C7
    /* 2B614 8003AE14 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2B618 8003AE18 0200422C */  sltiu      $v0, $v0, 0x2
    /* 2B61C 8003AE1C 08004010 */  beqz       $v0, .L8003AE40
    /* 2B620 8003AE20 00EE0224 */   addiu     $v0, $zero, -0x1200
    /* 2B624 8003AE24 1680013C */  lui        $at, %hi(D_8015D554)
    /* 2B628 8003AE28 54D522A4 */  sh         $v0, %lo(D_8015D554)($at)
    /* 2B62C 8003AE2C 00FD0224 */  addiu      $v0, $zero, -0x300
    /* 2B630 8003AE30 1680013C */  lui        $at, %hi(D_8015D556)
    /* 2B634 8003AE34 56D522A4 */  sh         $v0, %lo(D_8015D556)($at)
    /* 2B638 8003AE38 97EB0008 */  j          .L8003AE5C
    /* 2B63C 8003AE3C 000A0224 */   addiu     $v0, $zero, 0xA00
  .L8003AE40:
    /* 2B640 8003AE40 10EE0224 */  addiu      $v0, $zero, -0x11F0
    /* 2B644 8003AE44 1680013C */  lui        $at, %hi(D_8015D554)
    /* 2B648 8003AE48 54D522A4 */  sh         $v0, %lo(D_8015D554)($at)
    /* 2B64C 8003AE4C 00FD0224 */  addiu      $v0, $zero, -0x300
    /* 2B650 8003AE50 1680013C */  lui        $at, %hi(D_8015D556)
    /* 2B654 8003AE54 56D522A4 */  sh         $v0, %lo(D_8015D556)($at)
    /* 2B658 8003AE58 100A0224 */  addiu      $v0, $zero, 0xA10
  .L8003AE5C:
    /* 2B65C 8003AE5C 1680013C */  lui        $at, %hi(D_8015D558)
    /* 2B660 8003AE60 58D522A4 */  sh         $v0, %lo(D_8015D558)($at)
    /* 2B664 8003AE64 06000424 */  addiu      $a0, $zero, 0x6
    /* 2B668 8003AE68 B5EC000C */  jal        func_8003B2D4
    /* 2B66C 8003AE6C F8010524 */   addiu     $a1, $zero, 0x1F8
    /* 2B670 8003AE70 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2B674 8003AE74 0200422C */  sltiu      $v0, $v0, 0x2
    /* 2B678 8003AE78 08004010 */  beqz       $v0, .L8003AE9C
    /* 2B67C 8003AE7C 00200224 */   addiu     $v0, $zero, 0x2000
    /* 2B680 8003AE80 1680013C */  lui        $at, %hi(D_8015D7A0)
    /* 2B684 8003AE84 A0D722A4 */  sh         $v0, %lo(D_8015D7A0)($at)
    /* 2B688 8003AE88 00FD0224 */  addiu      $v0, $zero, -0x300
    /* 2B68C 8003AE8C 1680013C */  lui        $at, %hi(D_8015D7A2)
    /* 2B690 8003AE90 A2D722A4 */  sh         $v0, %lo(D_8015D7A2)($at)
    /* 2B694 8003AE94 AEEB0008 */  j          .L8003AEB8
    /* 2B698 8003AE98 000E0224 */   addiu     $v0, $zero, 0xE00
  .L8003AE9C:
    /* 2B69C 8003AE9C 10200224 */  addiu      $v0, $zero, 0x2010
    /* 2B6A0 8003AEA0 1680013C */  lui        $at, %hi(D_8015D7A0)
    /* 2B6A4 8003AEA4 A0D722A4 */  sh         $v0, %lo(D_8015D7A0)($at)
    /* 2B6A8 8003AEA8 00FD0224 */  addiu      $v0, $zero, -0x300
    /* 2B6AC 8003AEAC 1680013C */  lui        $at, %hi(D_8015D7A2)
    /* 2B6B0 8003AEB0 A2D722A4 */  sh         $v0, %lo(D_8015D7A2)($at)
    /* 2B6B4 8003AEB4 100E0224 */  addiu      $v0, $zero, 0xE10
  .L8003AEB8:
    /* 2B6B8 8003AEB8 1680013C */  lui        $at, %hi(D_8015D7A4)
    /* 2B6BC 8003AEBC A4D722A4 */  sh         $v0, %lo(D_8015D7A4)($at)
  .L8003AEC0:
    /* 2B6C0 8003AEC0 0C80033C */  lui        $v1, %hi(D_800BD3B8)
    /* 2B6C4 8003AEC4 B8D36324 */  addiu      $v1, $v1, %lo(D_800BD3B8)
    /* 2B6C8 8003AEC8 21980000 */  addu       $s3, $zero, $zero
    /* 2B6CC 8003AECC 1580083C */  lui        $t0, (0x8015C006 >> 16)
    /* 2B6D0 8003AED0 06C00835 */  ori        $t0, $t0, (0x8015C006 & 0xFFFF)
    /* 2B6D4 8003AED4 FFFF0C3C */  lui        $t4, (0xFFFF0000 >> 16)
    /* 2B6D8 8003AED8 5000AE8F */  lw         $t6, 0x50($sp)
    /* 2B6DC 8003AEDC 00810B3C */  lui        $t3, (0x81000000 >> 16)
    /* 2B6E0 8003AEE0 40120E00 */  sll        $v0, $t6, 9
    /* 2B6E4 8003AEE4 5800AE8F */  lw         $t6, 0x58($sp)
    /* 2B6E8 8003AEE8 21684300 */  addu       $t5, $v0, $v1
    /* 2B6EC 8003AEEC FBFFC225 */  addiu      $v0, $t6, -0x5
    /* 2B6F0 8003AEF0 0200492C */  sltiu      $t1, $v0, 0x2
    /* 2B6F4 8003AEF4 03111300 */  sra        $v0, $s3, 4
  .L8003AEF8:
    /* 2B6F8 8003AEF8 80100200 */  sll        $v0, $v0, 2
    /* 2B6FC 8003AEFC 21104D00 */  addu       $v0, $v0, $t5
    /* 2B700 8003AF00 00004A8C */  lw         $t2, 0x0($v0)
    /* 2B704 8003AF04 21A00000 */  addu       $s4, $zero, $zero
    /* 2B708 8003AF08 FF00073C */  lui        $a3, (0xFFFFFF >> 16)
    /* 2B70C 8003AF0C FFFFE734 */  ori        $a3, $a3, (0xFFFFFF & 0xFFFF)
    /* 2B710 8003AF10 1000A627 */  addiu      $a2, $sp, 0x10
    /* 2B714 8003AF14 21286002 */  addu       $a1, $s3, $zero
  .L8003AF18:
    /* 2B718 8003AF18 40100500 */  sll        $v0, $a1, 1
    /* 2B71C 8003AF1C 21104500 */  addu       $v0, $v0, $a1
    /* 2B720 8003AF20 80200200 */  sll        $a0, $v0, 2
    /* 2B724 8003AF24 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2B728 8003AF28 21088100 */  addu       $at, $a0, $at
    /* 2B72C 8003AF2C 08C0228C */  lw         $v0, %lo(D_8015C008)($at)
    /* 2B730 8003AF30 00000000 */  nop
    /* 2B734 8003AF34 75004010 */  beqz       $v0, .L8003B10C
    /* 2B738 8003AF38 00000000 */   nop
    /* 2B73C 8003AF3C 6900A010 */  beqz       $a1, .L8003B0E4
    /* 2B740 8003AF40 40101400 */   sll       $v0, $s4, 1
    /* 2B744 8003AF44 06104A00 */  srlv       $v0, $t2, $v0
    /* 2B748 8003AF48 03004330 */  andi       $v1, $v0, 0x3
    /* 2B74C 8003AF4C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2B750 8003AF50 0A006210 */  beq        $v1, $v0, .L8003AF7C
    /* 2B754 8003AF54 00000000 */   nop
    /* 2B758 8003AF58 05006010 */  beqz       $v1, .L8003AF70
    /* 2B75C 8003AF5C 02000224 */   addiu     $v0, $zero, 0x2
    /* 2B760 8003AF60 33006210 */  beq        $v1, $v0, .L8003B030
    /* 2B764 8003AF64 21188800 */   addu      $v1, $a0, $t0
    /* 2B768 8003AF68 3AEC0008 */  j          .L8003B0E8
    /* 2B76C 8003AF6C 01009426 */   addiu     $s4, $s4, 0x1
  .L8003AF70:
    /* 2B770 8003AF70 21108800 */  addu       $v0, $a0, $t0
    /* 2B774 8003AF74 39EC0008 */  j          .L8003B0E4
    /* 2B778 8003AF78 000040A4 */   sh        $zero, 0x0($v0)
  .L8003AF7C:
    /* 2B77C 8003AF7C 21188800 */  addu       $v1, $a0, $t0
    /* 2B780 8003AF80 64000224 */  addiu      $v0, $zero, 0x64
    /* 2B784 8003AF84 18002011 */  beqz       $t1, .L8003AFE8
    /* 2B788 8003AF88 000062A4 */   sh        $v0, 0x0($v1)
    /* 2B78C 8003AF8C 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2B790 8003AF90 21088100 */  addu       $at, $a0, $at
    /* 2B794 8003AF94 08C0238C */  lw         $v1, %lo(D_8015C008)($at)
    /* 2B798 8003AF98 00000000 */  nop
    /* 2B79C 8003AF9C 0000628C */  lw         $v0, 0x0($v1)
    /* 2B7A0 8003AFA0 00000000 */  nop
    /* 2B7A4 8003AFA4 24104C00 */  and        $v0, $v0, $t4
    /* 2B7A8 8003AFA8 0F004B14 */  bne        $v0, $t3, .L8003AFE8
    /* 2B7AC 8003AFAC 00000000 */   nop
    /* 2B7B0 8003AFB0 1800628C */  lw         $v0, 0x18($v1)
    /* 2B7B4 8003AFB4 00000000 */  nop
    /* 2B7B8 8003AFB8 24104700 */  and        $v0, $v0, $a3
    /* 2B7BC 8003AFBC 0000428C */  lw         $v0, 0x0($v0)
    /* 2B7C0 8003AFC0 00000000 */  nop
    /* 2B7C4 8003AFC4 02130200 */  srl        $v0, $v0, 12
    /* 2B7C8 8003AFC8 0C004230 */  andi       $v0, $v0, 0xC
    /* 2B7CC 8003AFCC 21104600 */  addu       $v0, $v0, $a2
    /* 2B7D0 8003AFD0 0000428C */  lw         $v0, 0x0($v0)
    /* 2B7D4 8003AFD4 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2B7D8 8003AFD8 21088100 */  addu       $at, $a0, $at
    /* 2B7DC 8003AFDC 08C022AC */  sw         $v0, %lo(D_8015C008)($at)
    /* 2B7E0 8003AFE0 3AEC0008 */  j          .L8003B0E8
    /* 2B7E4 8003AFE4 01009426 */   addiu     $s4, $s4, 0x1
  .L8003AFE8:
    /* 2B7E8 8003AFE8 40180500 */  sll        $v1, $a1, 1
    /* 2B7EC 8003AFEC 21186500 */  addu       $v1, $v1, $a1
    /* 2B7F0 8003AFF0 80180300 */  sll        $v1, $v1, 2
    /* 2B7F4 8003AFF4 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2B7F8 8003AFF8 21086100 */  addu       $at, $v1, $at
    /* 2B7FC 8003AFFC 08C0228C */  lw         $v0, %lo(D_8015C008)($at)
    /* 2B800 8003B000 00000000 */  nop
    /* 2B804 8003B004 1800428C */  lw         $v0, 0x18($v0)
    /* 2B808 8003B008 00000000 */  nop
    /* 2B80C 8003B00C 24104700 */  and        $v0, $v0, $a3
    /* 2B810 8003B010 0000428C */  lw         $v0, 0x0($v0)
    /* 2B814 8003B014 00000000 */  nop
    /* 2B818 8003B018 02130200 */  srl        $v0, $v0, 12
    /* 2B81C 8003B01C 0C004230 */  andi       $v0, $v0, 0xC
    /* 2B820 8003B020 21104600 */  addu       $v0, $v0, $a2
    /* 2B824 8003B024 2000428C */  lw         $v0, 0x20($v0)
    /* 2B828 8003B028 36EC0008 */  j          .L8003B0D8
    /* 2B82C 8003B02C 00000000 */   nop
  .L8003B030:
    /* 2B830 8003B030 C8000224 */  addiu      $v0, $zero, 0xC8
    /* 2B834 8003B034 18002011 */  beqz       $t1, .L8003B098
    /* 2B838 8003B038 000062A4 */   sh        $v0, 0x0($v1)
    /* 2B83C 8003B03C 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2B840 8003B040 21088100 */  addu       $at, $a0, $at
    /* 2B844 8003B044 08C0238C */  lw         $v1, %lo(D_8015C008)($at)
    /* 2B848 8003B048 00000000 */  nop
    /* 2B84C 8003B04C 0000628C */  lw         $v0, 0x0($v1)
    /* 2B850 8003B050 00000000 */  nop
    /* 2B854 8003B054 24104C00 */  and        $v0, $v0, $t4
    /* 2B858 8003B058 0F004B14 */  bne        $v0, $t3, .L8003B098
    /* 2B85C 8003B05C 00000000 */   nop
    /* 2B860 8003B060 1800628C */  lw         $v0, 0x18($v1)
    /* 2B864 8003B064 00000000 */  nop
    /* 2B868 8003B068 24104700 */  and        $v0, $v0, $a3
    /* 2B86C 8003B06C 0000428C */  lw         $v0, 0x0($v0)
    /* 2B870 8003B070 00000000 */  nop
    /* 2B874 8003B074 02130200 */  srl        $v0, $v0, 12
    /* 2B878 8003B078 0C004230 */  andi       $v0, $v0, 0xC
    /* 2B87C 8003B07C 21104600 */  addu       $v0, $v0, $a2
    /* 2B880 8003B080 1000428C */  lw         $v0, 0x10($v0)
    /* 2B884 8003B084 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2B888 8003B088 21088100 */  addu       $at, $a0, $at
    /* 2B88C 8003B08C 08C022AC */  sw         $v0, %lo(D_8015C008)($at)
    /* 2B890 8003B090 3AEC0008 */  j          .L8003B0E8
    /* 2B894 8003B094 01009426 */   addiu     $s4, $s4, 0x1
  .L8003B098:
    /* 2B898 8003B098 40180500 */  sll        $v1, $a1, 1
    /* 2B89C 8003B09C 21186500 */  addu       $v1, $v1, $a1
    /* 2B8A0 8003B0A0 80180300 */  sll        $v1, $v1, 2
    /* 2B8A4 8003B0A4 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2B8A8 8003B0A8 21086100 */  addu       $at, $v1, $at
    /* 2B8AC 8003B0AC 08C0228C */  lw         $v0, %lo(D_8015C008)($at)
    /* 2B8B0 8003B0B0 00000000 */  nop
    /* 2B8B4 8003B0B4 1800428C */  lw         $v0, 0x18($v0)
    /* 2B8B8 8003B0B8 00000000 */  nop
    /* 2B8BC 8003B0BC 24104700 */  and        $v0, $v0, $a3
    /* 2B8C0 8003B0C0 0000428C */  lw         $v0, 0x0($v0)
    /* 2B8C4 8003B0C4 00000000 */  nop
    /* 2B8C8 8003B0C8 02130200 */  srl        $v0, $v0, 12
    /* 2B8CC 8003B0CC 0C004230 */  andi       $v0, $v0, 0xC
    /* 2B8D0 8003B0D0 21104600 */  addu       $v0, $v0, $a2
    /* 2B8D4 8003B0D4 3000428C */  lw         $v0, 0x30($v0)
  .L8003B0D8:
    /* 2B8D8 8003B0D8 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2B8DC 8003B0DC 21086100 */  addu       $at, $v1, $at
    /* 2B8E0 8003B0E0 08C022AC */  sw         $v0, %lo(D_8015C008)($at)
  .L8003B0E4:
    /* 2B8E4 8003B0E4 01009426 */  addiu      $s4, $s4, 0x1
  .L8003B0E8:
    /* 2B8E8 8003B0E8 1000822A */  slti       $v0, $s4, 0x10
    /* 2B8EC 8003B0EC 8AFF4014 */  bnez       $v0, .L8003AF18
    /* 2B8F0 8003B0F0 0100A524 */   addiu     $a1, $a1, 0x1
    /* 2B8F4 8003B0F4 10007326 */  addiu      $s3, $s3, 0x10
    /* 2B8F8 8003B0F8 0008622A */  slti       $v0, $s3, 0x800
    /* 2B8FC 8003B0FC 7EFF4014 */  bnez       $v0, .L8003AEF8
    /* 2B900 8003B100 03111300 */   sra       $v0, $s3, 4
    /* 2B904 8003B104 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2B908 8003B108 08C020AC */  sw         $zero, %lo(D_8015C008)($at)
  .L8003B10C:
    /* 2B90C 8003B10C 8400BF8F */  lw         $ra, 0x84($sp)
    /* 2B910 8003B110 8000BE8F */  lw         $fp, 0x80($sp)
    /* 2B914 8003B114 7C00B78F */  lw         $s7, 0x7C($sp)
    /* 2B918 8003B118 7800B68F */  lw         $s6, 0x78($sp)
    /* 2B91C 8003B11C 7400B58F */  lw         $s5, 0x74($sp)
    /* 2B920 8003B120 7000B48F */  lw         $s4, 0x70($sp)
    /* 2B924 8003B124 6C00B38F */  lw         $s3, 0x6C($sp)
    /* 2B928 8003B128 6800B28F */  lw         $s2, 0x68($sp)
    /* 2B92C 8003B12C 6400B18F */  lw         $s1, 0x64($sp)
    /* 2B930 8003B130 6000B08F */  lw         $s0, 0x60($sp)
    /* 2B934 8003B134 8800BD27 */  addiu      $sp, $sp, 0x88
    /* 2B938 8003B138 0800E003 */  jr         $ra
    /* 2B93C 8003B13C 00000000 */   nop
.size func_8003AD14, . - func_8003AD14
