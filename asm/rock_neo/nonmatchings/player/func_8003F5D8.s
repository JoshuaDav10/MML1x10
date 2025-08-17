.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003F5D8
    /* 2FDD8 8003F5D8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2FDDC 8003F5DC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2FDE0 8003F5E0 21808000 */  addu       $s0, $a0, $zero
    /* 2FDE4 8003F5E4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2FDE8 8003F5E8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2FDEC 8003F5EC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2FDF0 8003F5F0 1C011296 */  lhu        $s2, 0x11C($s0)
    /* 2FDF4 8003F5F4 1E011196 */  lhu        $s1, 0x11E($s0)
    /* 2FDF8 8003F5F8 BB02010C */  jal        func_80040AEC
    /* 2FDFC 8003F5FC 00000000 */   nop
    /* 2FE00 8003F600 05004014 */  bnez       $v0, .L8003F618
    /* 2FE04 8003F604 00000000 */   nop
    /* 2FE08 8003F608 7704010C */  jal        func_800411DC
    /* 2FE0C 8003F60C 21200002 */   addu      $a0, $s0, $zero
    /* 2FE10 8003F610 03004010 */  beqz       $v0, .L8003F620
    /* 2FE14 8003F614 00000000 */   nop
  .L8003F618:
    /* 2FE18 8003F618 F5FD0008 */  j          .L8003F7D4
    /* 2FE1C 8003F61C 4A0400A2 */   sb        $zero, 0x44A($s0)
  .L8003F620:
    /* 2FE20 8003F620 24010296 */  lhu        $v0, 0x124($s0)
    /* 2FE24 8003F624 26010596 */  lhu        $a1, 0x126($s0)
    /* 2FE28 8003F628 2C010396 */  lhu        $v1, 0x12C($s0)
    /* 2FE2C 8003F62C 2E010496 */  lhu        $a0, 0x12E($s0)
    /* 2FE30 8003F630 25104500 */  or         $v0, $v0, $a1
    /* 2FE34 8003F634 25186400 */  or         $v1, $v1, $a0
    /* 2FE38 8003F638 25104300 */  or         $v0, $v0, $v1
    /* 2FE3C 8003F63C 24102202 */  and        $v0, $s1, $v0
    /* 2FE40 8003F640 02004010 */  beqz       $v0, .L8003F64C
    /* 2FE44 8003F644 00000000 */   nop
    /* 2FE48 8003F648 0B0000A2 */  sb         $zero, 0xB($s0)
  .L8003F64C:
    /* 2FE4C 8003F64C 24010396 */  lhu        $v1, 0x124($s0)
    /* 2FE50 8003F650 26010596 */  lhu        $a1, 0x126($s0)
    /* 2FE54 8003F654 2C010296 */  lhu        $v0, 0x12C($s0)
    /* 2FE58 8003F658 2E010496 */  lhu        $a0, 0x12E($s0)
    /* 2FE5C 8003F65C 25186500 */  or         $v1, $v1, $a1
    /* 2FE60 8003F660 25104400 */  or         $v0, $v0, $a0
    /* 2FE64 8003F664 25186200 */  or         $v1, $v1, $v0
    /* 2FE68 8003F668 38010296 */  lhu        $v0, 0x138($s0)
    /* 2FE6C 8003F66C 3A010496 */  lhu        $a0, 0x13A($s0)
    /* 2FE70 8003F670 3C010596 */  lhu        $a1, 0x13C($s0)
    /* 2FE74 8003F674 25104300 */  or         $v0, $v0, $v1
    /* 2FE78 8003F678 25208500 */  or         $a0, $a0, $a1
    /* 2FE7C 8003F67C 28010396 */  lhu        $v1, 0x128($s0)
    /* 2FE80 8003F680 2A010596 */  lhu        $a1, 0x12A($s0)
    /* 2FE84 8003F684 25104400 */  or         $v0, $v0, $a0
    /* 2FE88 8003F688 25186500 */  or         $v1, $v1, $a1
    /* 2FE8C 8003F68C 25104300 */  or         $v0, $v0, $v1
    /* 2FE90 8003F690 24104202 */  and        $v0, $s2, $v0
    /* 2FE94 8003F694 06004014 */  bnez       $v0, .L8003F6B0
    /* 2FE98 8003F698 00000000 */   nop
    /* 2FE9C 8003F69C 76010292 */  lbu        $v0, 0x176($s0)
    /* 2FEA0 8003F6A0 00000000 */  nop
    /* 2FEA4 8003F6A4 03004230 */  andi       $v0, $v0, 0x3
    /* 2FEA8 8003F6A8 48004010 */  beqz       $v0, .L8003F7CC
    /* 2FEAC 8003F6AC 00000000 */   nop
  .L8003F6B0:
    /* 2FEB0 8003F6B0 4A0400A2 */  sb         $zero, 0x44A($s0)
    /* 2FEB4 8003F6B4 3504010C */  jal        func_800410D4
    /* 2FEB8 8003F6B8 21200002 */   addu      $a0, $s0, $zero
    /* 2FEBC 8003F6BC 3D004014 */  bnez       $v0, .L8003F7B4
    /* 2FEC0 8003F6C0 21200002 */   addu      $a0, $s0, $zero
    /* 2FEC4 8003F6C4 DA02010C */  jal        func_80040B68
    /* 2FEC8 8003F6C8 21280000 */   addu      $a1, $zero, $zero
    /* 2FECC 8003F6CC AA01010C */  jal        func_800406A8
    /* 2FED0 8003F6D0 21200002 */   addu      $a0, $s0, $zero
    /* 2FED4 8003F6D4 3F004014 */  bnez       $v0, .L8003F7D4
    /* 2FED8 8003F6D8 00000000 */   nop
    /* 2FEDC 8003F6DC 1104010C */  jal        func_80041044
    /* 2FEE0 8003F6E0 21200002 */   addu      $a0, $s0, $zero
    /* 2FEE4 8003F6E4 1C004014 */  bnez       $v0, .L8003F758
    /* 2FEE8 8003F6E8 00000000 */   nop
    /* 2FEEC 8003F6EC EA03010C */  jal        func_80040FA8
    /* 2FEF0 8003F6F0 21200002 */   addu      $a0, $s0, $zero
    /* 2FEF4 8003F6F4 18004010 */  beqz       $v0, .L8003F758
    /* 2FEF8 8003F6F8 00000000 */   nop
    /* 2FEFC 8003F6FC 0B000292 */  lbu        $v0, 0xB($s0)
    /* 2FF00 8003F700 00000000 */  nop
    /* 2FF04 8003F704 14004014 */  bnez       $v0, .L8003F758
    /* 2FF08 8003F708 00000000 */   nop
    /* 2FF0C 8003F70C E000010C */  jal        func_80040380
    /* 2FF10 8003F710 21200002 */   addu      $a0, $s0, $zero
    /* 2FF14 8003F714 2F004014 */  bnez       $v0, .L8003F7D4
    /* 2FF18 8003F718 00000000 */   nop
    /* 2FF1C 8003F71C 0B000592 */  lbu        $a1, 0xB($s0)
    /* 2FF20 8003F720 F500010C */  jal        func_800403D4
    /* 2FF24 8003F724 21200002 */   addu      $a0, $s0, $zero
    /* 2FF28 8003F728 2A004014 */  bnez       $v0, .L8003F7D4
    /* 2FF2C 8003F72C 00000000 */   nop
    /* 2FF30 8003F730 0B000592 */  lbu        $a1, 0xB($s0)
    /* 2FF34 8003F734 1A01010C */  jal        func_80040468
    /* 2FF38 8003F738 21200002 */   addu      $a0, $s0, $zero
    /* 2FF3C 8003F73C 25004014 */  bnez       $v0, .L8003F7D4
    /* 2FF40 8003F740 00000000 */   nop
    /* 2FF44 8003F744 0B000592 */  lbu        $a1, 0xB($s0)
    /* 2FF48 8003F748 3F01010C */  jal        func_800404FC
    /* 2FF4C 8003F74C 21200002 */   addu      $a0, $s0, $zero
    /* 2FF50 8003F750 20004014 */  bnez       $v0, .L8003F7D4
    /* 2FF54 8003F754 00000000 */   nop
  .L8003F758:
    /* 2FF58 8003F758 74010282 */  lb         $v0, 0x174($s0)
    /* 2FF5C 8003F75C 00000000 */  nop
    /* 2FF60 8003F760 C0004230 */  andi       $v0, $v0, 0xC0
    /* 2FF64 8003F764 13004014 */  bnez       $v0, .L8003F7B4
    /* 2FF68 8003F768 00000000 */   nop
    /* 2FF6C 8003F76C 77010282 */  lb         $v0, 0x177($s0)
    /* 2FF70 8003F770 00000000 */  nop
    /* 2FF74 8003F774 0F004014 */  bnez       $v0, .L8003F7B4
    /* 2FF78 8003F778 00000000 */   nop
    /* 2FF7C 8003F77C B100010C */  jal        func_800402C4
    /* 2FF80 8003F780 21200002 */   addu      $a0, $s0, $zero
    /* 2FF84 8003F784 13004014 */  bnez       $v0, .L8003F7D4
    /* 2FF88 8003F788 00000000 */   nop
    /* 2FF8C 8003F78C 0B000592 */  lbu        $a1, 0xB($s0)
    /* 2FF90 8003F790 8C01010C */  jal        func_80040630
    /* 2FF94 8003F794 21200002 */   addu      $a0, $s0, $zero
    /* 2FF98 8003F798 0E004014 */  bnez       $v0, .L8003F7D4
    /* 2FF9C 8003F79C 00000000 */   nop
    /* 2FFA0 8003F7A0 0B000592 */  lbu        $a1, 0xB($s0)
    /* 2FFA4 8003F7A4 C300010C */  jal        func_8004030C
    /* 2FFA8 8003F7A8 21200002 */   addu      $a0, $s0, $zero
    /* 2FFAC 8003F7AC 09004014 */  bnez       $v0, .L8003F7D4
    /* 2FFB0 8003F7B0 00000000 */   nop
  .L8003F7B4:
    /* 2FFB4 8003F7B4 5604010C */  jal        func_80041158
    /* 2FFB8 8003F7B8 21200002 */   addu      $a0, $s0, $zero
    /* 2FFBC 8003F7BC 03004014 */  bnez       $v0, .L8003F7CC
    /* 2FFC0 8003F7C0 00000000 */   nop
    /* 2FFC4 8003F7C4 7D01010C */  jal        func_800405F4
    /* 2FFC8 8003F7C8 21200002 */   addu      $a0, $s0, $zero
  .L8003F7CC:
    /* 2FFCC 8003F7CC 5D01010C */  jal        func_80040574
    /* 2FFD0 8003F7D0 21200002 */   addu      $a0, $s0, $zero
  .L8003F7D4:
    /* 2FFD4 8003F7D4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2FFD8 8003F7D8 1800B28F */  lw         $s2, 0x18($sp)
    /* 2FFDC 8003F7DC 1400B18F */  lw         $s1, 0x14($sp)
    /* 2FFE0 8003F7E0 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FFE4 8003F7E4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2FFE8 8003F7E8 0800E003 */  jr         $ra
    /* 2FFEC 8003F7EC 00000000 */   nop
.size func_8003F5D8, . - func_8003F5D8
