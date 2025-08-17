.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002F420
    /* 1FC20 8002F420 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 1FC24 8002F424 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 1FC28 8002F428 21B88000 */  addu       $s7, $a0, $zero
    /* 1FC2C 8002F42C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 1FC30 8002F430 21A0A000 */  addu       $s4, $a1, $zero
    /* 1FC34 8002F434 0200E232 */  andi       $v0, $s7, 0x2
    /* 1FC38 8002F438 3000BFAF */  sw         $ra, 0x30($sp)
    /* 1FC3C 8002F43C 2800B6AF */  sw         $s6, 0x28($sp)
    /* 1FC40 8002F440 2400B5AF */  sw         $s5, 0x24($sp)
    /* 1FC44 8002F444 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1FC48 8002F448 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1FC4C 8002F44C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1FC50 8002F450 1B004010 */  beqz       $v0, .L8002F4C0
    /* 1FC54 8002F454 1000B0AF */   sw        $s0, 0x10($sp)
    /* 1FC58 8002F458 0A80113C */  lui        $s1, %hi(D_8009F108)
    /* 1FC5C 8002F45C 08F13126 */  addiu      $s1, $s1, %lo(D_8009F108)
    /* 1FC60 8002F460 0A80153C */  lui        $s5, %hi(D_800987E8)
    /* 1FC64 8002F464 E887B58E */  lw         $s5, %lo(D_800987E8)($s5)
    /* 1FC68 8002F468 21800000 */  addu       $s0, $zero, $zero
  .L8002F46C:
    /* 1FC6C 8002F46C 04101502 */  sllv       $v0, $s5, $s0
    /* 1FC70 8002F470 0F004104 */  bgez       $v0, .L8002F4B0
    /* 1FC74 8002F474 00000000 */   nop
    /* 1FC78 8002F478 06002292 */  lbu        $v0, 0x6($s1)
    /* 1FC7C 8002F47C 00000000 */  nop
    /* 1FC80 8002F480 20004230 */  andi       $v0, $v0, 0x20
    /* 1FC84 8002F484 08004010 */  beqz       $v0, .L8002F4A8
    /* 1FC88 8002F488 00000000 */   nop
    /* 1FC8C 8002F48C 08008012 */  beqz       $s4, .L8002F4B0
    /* 1FC90 8002F490 00000000 */   nop
    /* 1FC94 8002F494 21202002 */  addu       $a0, $s1, $zero
    /* 1FC98 8002F498 21BE000C */  jal        func_8002F884
    /* 1FC9C 8002F49C 21288002 */   addu      $a1, $s4, $zero
    /* 1FCA0 8002F4A0 2DBD0008 */  j          .L8002F4B4
    /* 1FCA4 8002F4A4 01001026 */   addiu     $s0, $s0, 0x1
  .L8002F4A8:
    /* 1FCA8 8002F4A8 09C6000C */  jal        func_80031824
    /* 1FCAC 8002F4AC 21202002 */   addu      $a0, $s1, $zero
  .L8002F4B0:
    /* 1FCB0 8002F4B0 01001026 */  addiu      $s0, $s0, 0x1
  .L8002F4B4:
    /* 1FCB4 8002F4B4 1000022A */  slti       $v0, $s0, 0x10
    /* 1FCB8 8002F4B8 ECFF4014 */  bnez       $v0, .L8002F46C
    /* 1FCBC 8002F4BC C0033126 */   addiu     $s1, $s1, 0x3C0
  .L8002F4C0:
    /* 1FCC0 8002F4C0 0400E232 */  andi       $v0, $s7, 0x4
    /* 1FCC4 8002F4C4 1C004010 */  beqz       $v0, .L8002F538
    /* 1FCC8 8002F4C8 0800E232 */   andi      $v0, $s7, 0x8
    /* 1FCCC 8002F4CC 0C80113C */  lui        $s1, %hi(D_800C3580)
    /* 1FCD0 8002F4D0 80353126 */  addiu      $s1, $s1, %lo(D_800C3580)
    /* 1FCD4 8002F4D4 0A80153C */  lui        $s5, %hi(D_80098B20)
    /* 1FCD8 8002F4D8 208BB58E */  lw         $s5, %lo(D_80098B20)($s5)
    /* 1FCDC 8002F4DC 21800000 */  addu       $s0, $zero, $zero
  .L8002F4E0:
    /* 1FCE0 8002F4E0 04101502 */  sllv       $v0, $s5, $s0
    /* 1FCE4 8002F4E4 0F004104 */  bgez       $v0, .L8002F524
    /* 1FCE8 8002F4E8 00000000 */   nop
    /* 1FCEC 8002F4EC 06002292 */  lbu        $v0, 0x6($s1)
    /* 1FCF0 8002F4F0 00000000 */  nop
    /* 1FCF4 8002F4F4 20004230 */  andi       $v0, $v0, 0x20
    /* 1FCF8 8002F4F8 08004010 */  beqz       $v0, .L8002F51C
    /* 1FCFC 8002F4FC 00000000 */   nop
    /* 1FD00 8002F500 08008012 */  beqz       $s4, .L8002F524
    /* 1FD04 8002F504 00000000 */   nop
    /* 1FD08 8002F508 21202002 */  addu       $a0, $s1, $zero
    /* 1FD0C 8002F50C 21BE000C */  jal        func_8002F884
    /* 1FD10 8002F510 21288002 */   addu      $a1, $s4, $zero
    /* 1FD14 8002F514 4ABD0008 */  j          .L8002F528
    /* 1FD18 8002F518 01001026 */   addiu     $s0, $s0, 0x1
  .L8002F51C:
    /* 1FD1C 8002F51C 1FC6000C */  jal        func_8003187C
    /* 1FD20 8002F520 21202002 */   addu      $a0, $s1, $zero
  .L8002F524:
    /* 1FD24 8002F524 01001026 */  addiu      $s0, $s0, 0x1
  .L8002F528:
    /* 1FD28 8002F528 0400022A */  slti       $v0, $s0, 0x4
    /* 1FD2C 8002F52C ECFF4014 */  bnez       $v0, .L8002F4E0
    /* 1FD30 8002F530 A4053126 */   addiu     $s1, $s1, 0x5A4
    /* 1FD34 8002F534 0800E232 */  andi       $v0, $s7, 0x8
  .L8002F538:
    /* 1FD38 8002F538 1C004010 */  beqz       $v0, .L8002F5AC
    /* 1FD3C 8002F53C 1000E232 */   andi      $v0, $s7, 0x10
    /* 1FD40 8002F540 0C80113C */  lui        $s1, %hi(D_800BFB20)
    /* 1FD44 8002F544 20FB3126 */  addiu      $s1, $s1, %lo(D_800BFB20)
    /* 1FD48 8002F548 0A80153C */  lui        $s5, %hi(D_800989F0)
    /* 1FD4C 8002F54C F089B58E */  lw         $s5, %lo(D_800989F0)($s5)
    /* 1FD50 8002F550 21800000 */  addu       $s0, $zero, $zero
  .L8002F554:
    /* 1FD54 8002F554 04101502 */  sllv       $v0, $s5, $s0
    /* 1FD58 8002F558 0F004104 */  bgez       $v0, .L8002F598
    /* 1FD5C 8002F55C 00000000 */   nop
    /* 1FD60 8002F560 06002292 */  lbu        $v0, 0x6($s1)
    /* 1FD64 8002F564 00000000 */  nop
    /* 1FD68 8002F568 20004230 */  andi       $v0, $v0, 0x20
    /* 1FD6C 8002F56C 08004010 */  beqz       $v0, .L8002F590
    /* 1FD70 8002F570 00000000 */   nop
    /* 1FD74 8002F574 08008012 */  beqz       $s4, .L8002F598
    /* 1FD78 8002F578 00000000 */   nop
    /* 1FD7C 8002F57C 21202002 */  addu       $a0, $s1, $zero
    /* 1FD80 8002F580 21BE000C */  jal        func_8002F884
    /* 1FD84 8002F584 21288002 */   addu      $a1, $s4, $zero
    /* 1FD88 8002F588 67BD0008 */  j          .L8002F59C
    /* 1FD8C 8002F58C 01001026 */   addiu     $s0, $s0, 0x1
  .L8002F590:
    /* 1FD90 8002F590 4CC6000C */  jal        func_80031930
    /* 1FD94 8002F594 21202002 */   addu      $a0, $s1, $zero
  .L8002F598:
    /* 1FD98 8002F598 01001026 */  addiu      $s0, $s0, 0x1
  .L8002F59C:
    /* 1FD9C 8002F59C 1000022A */  slti       $v0, $s0, 0x10
    /* 1FDA0 8002F5A0 ECFF4014 */  bnez       $v0, .L8002F554
    /* 1FDA4 8002F5A4 0C013126 */   addiu     $s1, $s1, 0x10C
    /* 1FDA8 8002F5A8 1000E232 */  andi       $v0, $s7, 0x10
  .L8002F5AC:
    /* 1FDAC 8002F5AC 1C004010 */  beqz       $v0, .L8002F620
    /* 1FDB0 8002F5B0 2000E232 */   andi      $v0, $s7, 0x20
    /* 1FDB4 8002F5B4 0A80113C */  lui        $s1, %hi(D_8009CF88)
    /* 1FDB8 8002F5B8 88CF3126 */  addiu      $s1, $s1, %lo(D_8009CF88)
    /* 1FDBC 8002F5BC 0A80153C */  lui        $s5, %hi(D_800987CC)
    /* 1FDC0 8002F5C0 CC87B58E */  lw         $s5, %lo(D_800987CC)($s5)
    /* 1FDC4 8002F5C4 21800000 */  addu       $s0, $zero, $zero
  .L8002F5C8:
    /* 1FDC8 8002F5C8 04101502 */  sllv       $v0, $s5, $s0
    /* 1FDCC 8002F5CC 0F004104 */  bgez       $v0, .L8002F60C
    /* 1FDD0 8002F5D0 00000000 */   nop
    /* 1FDD4 8002F5D4 06002292 */  lbu        $v0, 0x6($s1)
    /* 1FDD8 8002F5D8 00000000 */  nop
    /* 1FDDC 8002F5DC 20004230 */  andi       $v0, $v0, 0x20
    /* 1FDE0 8002F5E0 08004010 */  beqz       $v0, .L8002F604
    /* 1FDE4 8002F5E4 00000000 */   nop
    /* 1FDE8 8002F5E8 08008012 */  beqz       $s4, .L8002F60C
    /* 1FDEC 8002F5EC 00000000 */   nop
    /* 1FDF0 8002F5F0 21202002 */  addu       $a0, $s1, $zero
    /* 1FDF4 8002F5F4 21BE000C */  jal        func_8002F884
    /* 1FDF8 8002F5F8 21288002 */   addu      $a1, $s4, $zero
    /* 1FDFC 8002F5FC 84BD0008 */  j          .L8002F610
    /* 1FE00 8002F600 01001026 */   addiu     $s0, $s0, 0x1
  .L8002F604:
    /* 1FE04 8002F604 36C6000C */  jal        func_800318D8
    /* 1FE08 8002F608 21202002 */   addu      $a0, $s1, $zero
  .L8002F60C:
    /* 1FE0C 8002F60C 01001026 */  addiu      $s0, $s0, 0x1
  .L8002F610:
    /* 1FE10 8002F610 2000022A */  slti       $v0, $s0, 0x20
    /* 1FE14 8002F614 ECFF4014 */  bnez       $v0, .L8002F5C8
    /* 1FE18 8002F618 0C013126 */   addiu     $s1, $s1, 0x10C
    /* 1FE1C 8002F61C 2000E232 */  andi       $v0, $s7, 0x20
  .L8002F620:
    /* 1FE20 8002F620 29004010 */  beqz       $v0, .L8002F6C8
    /* 1FE24 8002F624 4000E232 */   andi      $v0, $s7, 0x40
    /* 1FE28 8002F628 0A80123C */  lui        $s2, %hi(D_800A3B40)
    /* 1FE2C 8002F62C 403B5226 */  addiu      $s2, $s2, %lo(D_800A3B40)
    /* 1FE30 8002F630 21800000 */  addu       $s0, $zero, $zero
    /* 1FE34 8002F634 0A80163C */  lui        $s6, %hi(D_80098838)
    /* 1FE38 8002F638 3888D626 */  addiu      $s6, $s6, %lo(D_80098838)
  .L8002F63C:
    /* 1FE3C 8002F63C 0000D58E */  lw         $s5, 0x0($s6)
    /* 1FE40 8002F640 21880000 */  addu       $s1, $zero, $zero
    /* 1FE44 8002F644 06005326 */  addiu      $s3, $s2, 0x6
  .L8002F648:
    /* 1FE48 8002F648 04103502 */  sllv       $v0, $s5, $s1
    /* 1FE4C 8002F64C 14004104 */  bgez       $v0, .L8002F6A0
    /* 1FE50 8002F650 00000000 */   nop
    /* 1FE54 8002F654 FCFF6292 */  lbu        $v0, -0x4($s3)
    /* 1FE58 8002F658 00000000 */  nop
    /* 1FE5C 8002F65C 8000422C */  sltiu      $v0, $v0, 0x80
    /* 1FE60 8002F660 0F004014 */  bnez       $v0, .L8002F6A0
    /* 1FE64 8002F664 00000000 */   nop
    /* 1FE68 8002F668 00006292 */  lbu        $v0, 0x0($s3)
    /* 1FE6C 8002F66C 00000000 */  nop
    /* 1FE70 8002F670 20004230 */  andi       $v0, $v0, 0x20
    /* 1FE74 8002F674 08004010 */  beqz       $v0, .L8002F698
    /* 1FE78 8002F678 00000000 */   nop
    /* 1FE7C 8002F67C 08008012 */  beqz       $s4, .L8002F6A0
    /* 1FE80 8002F680 00000000 */   nop
    /* 1FE84 8002F684 21204002 */  addu       $a0, $s2, $zero
    /* 1FE88 8002F688 4ABE000C */  jal        func_8002F928
    /* 1FE8C 8002F68C 21288002 */   addu      $a1, $s4, $zero
    /* 1FE90 8002F690 A9BD0008 */  j          .L8002F6A4
    /* 1FE94 8002F694 01003126 */   addiu     $s1, $s1, 0x1
  .L8002F698:
    /* 1FE98 8002F698 62C6000C */  jal        func_80031988
    /* 1FE9C 8002F69C 21204002 */   addu      $a0, $s2, $zero
  .L8002F6A0:
    /* 1FEA0 8002F6A0 01003126 */  addiu      $s1, $s1, 0x1
  .L8002F6A4:
    /* 1FEA4 8002F6A4 48007326 */  addiu      $s3, $s3, 0x48
    /* 1FEA8 8002F6A8 2000222A */  slti       $v0, $s1, 0x20
    /* 1FEAC 8002F6AC E6FF4014 */  bnez       $v0, .L8002F648
    /* 1FEB0 8002F6B0 48005226 */   addiu     $s2, $s2, 0x48
    /* 1FEB4 8002F6B4 01001026 */  addiu      $s0, $s0, 0x1
    /* 1FEB8 8002F6B8 0200022A */  slti       $v0, $s0, 0x2
    /* 1FEBC 8002F6BC DFFF4014 */  bnez       $v0, .L8002F63C
    /* 1FEC0 8002F6C0 0400D626 */   addiu     $s6, $s6, 0x4
    /* 1FEC4 8002F6C4 4000E232 */  andi       $v0, $s7, 0x40
  .L8002F6C8:
    /* 1FEC8 8002F6C8 29004010 */  beqz       $v0, .L8002F770
    /* 1FECC 8002F6CC 8000E232 */   andi      $v0, $s7, 0x80
    /* 1FED0 8002F6D0 0A80123C */  lui        $s2, %hi(D_800A3B40)
    /* 1FED4 8002F6D4 403B5226 */  addiu      $s2, $s2, %lo(D_800A3B40)
    /* 1FED8 8002F6D8 21800000 */  addu       $s0, $zero, $zero
    /* 1FEDC 8002F6DC 0A80163C */  lui        $s6, %hi(D_80098838)
    /* 1FEE0 8002F6E0 3888D626 */  addiu      $s6, $s6, %lo(D_80098838)
  .L8002F6E4:
    /* 1FEE4 8002F6E4 0000D58E */  lw         $s5, 0x0($s6)
    /* 1FEE8 8002F6E8 21880000 */  addu       $s1, $zero, $zero
    /* 1FEEC 8002F6EC 06005326 */  addiu      $s3, $s2, 0x6
  .L8002F6F0:
    /* 1FEF0 8002F6F0 04103502 */  sllv       $v0, $s5, $s1
    /* 1FEF4 8002F6F4 14004104 */  bgez       $v0, .L8002F748
    /* 1FEF8 8002F6F8 00000000 */   nop
    /* 1FEFC 8002F6FC FCFF6292 */  lbu        $v0, -0x4($s3)
    /* 1FF00 8002F700 00000000 */  nop
    /* 1FF04 8002F704 8000422C */  sltiu      $v0, $v0, 0x80
    /* 1FF08 8002F708 0F004010 */  beqz       $v0, .L8002F748
    /* 1FF0C 8002F70C 00000000 */   nop
    /* 1FF10 8002F710 00006292 */  lbu        $v0, 0x0($s3)
    /* 1FF14 8002F714 00000000 */  nop
    /* 1FF18 8002F718 20004230 */  andi       $v0, $v0, 0x20
    /* 1FF1C 8002F71C 08004010 */  beqz       $v0, .L8002F740
    /* 1FF20 8002F720 00000000 */   nop
    /* 1FF24 8002F724 08008012 */  beqz       $s4, .L8002F748
    /* 1FF28 8002F728 00000000 */   nop
    /* 1FF2C 8002F72C 21204002 */  addu       $a0, $s2, $zero
    /* 1FF30 8002F730 4ABE000C */  jal        func_8002F928
    /* 1FF34 8002F734 21288002 */   addu      $a1, $s4, $zero
    /* 1FF38 8002F738 D3BD0008 */  j          .L8002F74C
    /* 1FF3C 8002F73C 01003126 */   addiu     $s1, $s1, 0x1
  .L8002F740:
    /* 1FF40 8002F740 62C6000C */  jal        func_80031988
    /* 1FF44 8002F744 21204002 */   addu      $a0, $s2, $zero
  .L8002F748:
    /* 1FF48 8002F748 01003126 */  addiu      $s1, $s1, 0x1
  .L8002F74C:
    /* 1FF4C 8002F74C 48007326 */  addiu      $s3, $s3, 0x48
    /* 1FF50 8002F750 2000222A */  slti       $v0, $s1, 0x20
    /* 1FF54 8002F754 E6FF4014 */  bnez       $v0, .L8002F6F0
    /* 1FF58 8002F758 48005226 */   addiu     $s2, $s2, 0x48
    /* 1FF5C 8002F75C 01001026 */  addiu      $s0, $s0, 0x1
    /* 1FF60 8002F760 0200022A */  slti       $v0, $s0, 0x2
    /* 1FF64 8002F764 DFFF4014 */  bnez       $v0, .L8002F6E4
    /* 1FF68 8002F768 0400D626 */   addiu     $s6, $s6, 0x4
    /* 1FF6C 8002F76C 8000E232 */  andi       $v0, $s7, 0x80
  .L8002F770:
    /* 1FF70 8002F770 1C004010 */  beqz       $v0, .L8002F7E4
    /* 1FF74 8002F774 0001E232 */   andi      $v0, $s7, 0x100
    /* 1FF78 8002F778 0A80113C */  lui        $s1, %hi(D_800A2D08)
    /* 1FF7C 8002F77C 082D3126 */  addiu      $s1, $s1, %lo(D_800A2D08)
    /* 1FF80 8002F780 0A80153C */  lui        $s5, %hi(D_800987EC)
    /* 1FF84 8002F784 EC87B58E */  lw         $s5, %lo(D_800987EC)($s5)
    /* 1FF88 8002F788 21800000 */  addu       $s0, $zero, $zero
  .L8002F78C:
    /* 1FF8C 8002F78C 04101502 */  sllv       $v0, $s5, $s0
    /* 1FF90 8002F790 0F004104 */  bgez       $v0, .L8002F7D0
    /* 1FF94 8002F794 00000000 */   nop
    /* 1FF98 8002F798 06002292 */  lbu        $v0, 0x6($s1)
    /* 1FF9C 8002F79C 00000000 */  nop
    /* 1FFA0 8002F7A0 20004230 */  andi       $v0, $v0, 0x20
    /* 1FFA4 8002F7A4 08004010 */  beqz       $v0, .L8002F7C8
    /* 1FFA8 8002F7A8 00000000 */   nop
    /* 1FFAC 8002F7AC 08008012 */  beqz       $s4, .L8002F7D0
    /* 1FFB0 8002F7B0 00000000 */   nop
    /* 1FFB4 8002F7B4 21202002 */  addu       $a0, $s1, $zero
    /* 1FFB8 8002F7B8 66BE000C */  jal        func_8002F998
    /* 1FFBC 8002F7BC 21288002 */   addu      $a1, $s4, $zero
    /* 1FFC0 8002F7C0 F5BD0008 */  j          .L8002F7D4
    /* 1FFC4 8002F7C4 01001026 */   addiu     $s0, $s0, 0x1
  .L8002F7C8:
    /* 1FFC8 8002F7C8 7DC6000C */  jal        Close_EVE_WORK
    /* 1FFCC 8002F7CC 21202002 */   addu      $a0, $s1, $zero
  .L8002F7D0:
    /* 1FFD0 8002F7D0 01001026 */  addiu      $s0, $s0, 0x1
  .L8002F7D4:
    /* 1FFD4 8002F7D4 1000022A */  slti       $v0, $s0, 0x10
    /* 1FFD8 8002F7D8 ECFF4014 */  bnez       $v0, .L8002F78C
    /* 1FFDC 8002F7DC 24003126 */   addiu     $s1, $s1, 0x24
    /* 1FFE0 8002F7E0 0001E232 */  andi       $v0, $s7, 0x100
  .L8002F7E4:
    /* 1FFE4 8002F7E4 1B004010 */  beqz       $v0, .L8002F854
    /* 1FFE8 8002F7E8 21800000 */   addu      $s0, $zero, $zero
    /* 1FFEC 8002F7EC 0C80113C */  lui        $s1, %hi(D_800BF118)
    /* 1FFF0 8002F7F0 18F13126 */  addiu      $s1, $s1, %lo(D_800BF118)
    /* 1FFF4 8002F7F4 0A80153C */  lui        $s5, %hi(D_800989CC)
    /* 1FFF8 8002F7F8 CC89B58E */  lw         $s5, %lo(D_800989CC)($s5)
  .L8002F7FC:
    /* 1FFFC 8002F7FC 00000000 */  nop
    /* 20000 8002F800 04101502 */  sllv       $v0, $s5, $s0
    /* 20004 8002F804 0F004104 */  bgez       $v0, .L8002F844
    /* 20008 8002F808 00000000 */   nop
    /* 2000C 8002F80C 06002292 */  lbu        $v0, 0x6($s1)
    /* 20010 8002F810 00000000 */  nop
    /* 20014 8002F814 20004230 */  andi       $v0, $v0, 0x20
    /* 20018 8002F818 08004010 */  beqz       $v0, .L8002F83C
    /* 2001C 8002F81C 00000000 */   nop
    /* 20020 8002F820 08008012 */  beqz       $s4, .L8002F844
    /* 20024 8002F824 00000000 */   nop
    /* 20028 8002F828 21202002 */  addu       $a0, $s1, $zero
    /* 2002C 8002F82C 4ABE000C */  jal        func_8002F928
    /* 20030 8002F830 21288002 */   addu      $a1, $s4, $zero
    /* 20034 8002F834 12BE0008 */  j          .L8002F848
    /* 20038 8002F838 01001026 */   addiu     $s0, $s0, 0x1
  .L8002F83C:
    /* 2003C 8002F83C 93C6000C */  jal        func_80031A4C
    /* 20040 8002F840 21202002 */   addu      $a0, $s1, $zero
  .L8002F844:
    /* 20044 8002F844 01001026 */  addiu      $s0, $s0, 0x1
  .L8002F848:
    /* 20048 8002F848 2000022A */  slti       $v0, $s0, 0x20
    /* 2004C 8002F84C EBFF4014 */  bnez       $v0, .L8002F7FC
    /* 20050 8002F850 50003126 */   addiu     $s1, $s1, 0x50
  .L8002F854:
    /* 20054 8002F854 3000BF8F */  lw         $ra, 0x30($sp)
    /* 20058 8002F858 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 2005C 8002F85C 2800B68F */  lw         $s6, 0x28($sp)
    /* 20060 8002F860 2400B58F */  lw         $s5, 0x24($sp)
    /* 20064 8002F864 2000B48F */  lw         $s4, 0x20($sp)
    /* 20068 8002F868 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2006C 8002F86C 1800B28F */  lw         $s2, 0x18($sp)
    /* 20070 8002F870 1400B18F */  lw         $s1, 0x14($sp)
    /* 20074 8002F874 1000B08F */  lw         $s0, 0x10($sp)
    /* 20078 8002F878 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 2007C 8002F87C 0800E003 */  jr         $ra
    /* 20080 8002F880 00000000 */   nop
.size func_8002F420, . - func_8002F420
