.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005F608
    /* 4FE08 8005F608 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4FE0C 8005F60C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4FE10 8005F610 21908000 */  addu       $s2, $a0, $zero
    /* 4FE14 8005F614 2000BFAF */  sw         $ra, 0x20($sp)
    /* 4FE18 8005F618 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 4FE1C 8005F61C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4FE20 8005F620 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4FE24 8005F624 02004482 */  lb         $a0, 0x2($s2)
    /* 4FE28 8005F628 01001024 */  addiu      $s0, $zero, 0x1
    /* 4FE2C 8005F62C 67009010 */  beq        $a0, $s0, .L8005F7CC
    /* 4FE30 8005F630 02008228 */   slti      $v0, $a0, 0x2
    /* 4FE34 8005F634 05004010 */  beqz       $v0, .L8005F64C
    /* 4FE38 8005F638 00000000 */   nop
    /* 4FE3C 8005F63C 08008010 */  beqz       $a0, .L8005F660
    /* 4FE40 8005F640 00000000 */   nop
    /* 4FE44 8005F644 727E0108 */  j          .L8005F9C8
    /* 4FE48 8005F648 00000000 */   nop
  .L8005F64C:
    /* 4FE4C 8005F64C 02000224 */  addiu      $v0, $zero, 0x2
    /* 4FE50 8005F650 D5008210 */  beq        $a0, $v0, .L8005F9A8
    /* 4FE54 8005F654 0008033C */   lui       $v1, (0x8000000 >> 16)
    /* 4FE58 8005F658 727E0108 */  j          .L8005F9C8
    /* 4FE5C 8005F65C 00000000 */   nop
  .L8005F660:
    /* 4FE60 8005F660 04004292 */  lbu        $v0, 0x4($s2)
    /* 4FE64 8005F664 0980013C */  lui        $at, %hi(D_8008DAF4)
    /* 4FE68 8005F668 21082200 */  addu       $at, $at, $v0
    /* 4FE6C 8005F66C F4DA2490 */  lbu        $a0, %lo(D_8008DAF4)($at)
    /* 4FE70 8005F670 9676000C */  jal        Sce_flag_test
    /* 4FE74 8005F674 20058424 */   addiu     $a0, $a0, 0x520
    /* 4FE78 8005F678 4B004010 */  beqz       $v0, .L8005F7A8
    /* 4FE7C 8005F67C 02000224 */   addiu     $v0, $zero, 0x2
    /* 4FE80 8005F680 04004392 */  lbu        $v1, 0x4($s2)
    /* 4FE84 8005F684 00000000 */  nop
    /* 4FE88 8005F688 1B006210 */  beq        $v1, $v0, .L8005F6F8
    /* 4FE8C 8005F68C 03006228 */   slti      $v0, $v1, 0x3
    /* 4FE90 8005F690 05004010 */  beqz       $v0, .L8005F6A8
    /* 4FE94 8005F694 00000000 */   nop
    /* 4FE98 8005F698 0A007010 */  beq        $v1, $s0, .L8005F6C4
    /* 4FE9C 8005F69C 00000000 */   nop
    /* 4FEA0 8005F6A0 657E0108 */  j          .L8005F994
    /* 4FEA4 8005F6A4 00000000 */   nop
  .L8005F6A8:
    /* 4FEA8 8005F6A8 03000224 */  addiu      $v0, $zero, 0x3
    /* 4FEAC 8005F6AC 20006210 */  beq        $v1, $v0, .L8005F730
    /* 4FEB0 8005F6B0 04000224 */   addiu     $v0, $zero, 0x4
    /* 4FEB4 8005F6B4 2C006210 */  beq        $v1, $v0, .L8005F768
    /* 4FEB8 8005F6B8 00000000 */   nop
    /* 4FEBC 8005F6BC 657E0108 */  j          .L8005F994
    /* 4FEC0 8005F6C0 00000000 */   nop
  .L8005F6C4:
    /* 4FEC4 8005F6C4 0B80023C */  lui        $v0, %hi(Player_work + 0x16A)
    /* 4FEC8 8005F6C8 1A534280 */  lb         $v0, %lo(Player_work + 0x16A)($v0)
    /* 4FECC 8005F6CC 00000000 */  nop
    /* 4FED0 8005F6D0 05004010 */  beqz       $v0, .L8005F6E8
    /* 4FED4 8005F6D4 21200000 */   addu      $a0, $zero, $zero
    /* 4FED8 8005F6D8 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4FEDC 8005F6DC 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4FEE0 8005F6E0 E67D0108 */  j          .L8005F798
    /* 4FEE4 8005F6E4 33000624 */   addiu     $a2, $zero, 0x33
  .L8005F6E8:
    /* 4FEE8 8005F6E8 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4FEEC 8005F6EC 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4FEF0 8005F6F0 E67D0108 */  j          .L8005F798
    /* 4FEF4 8005F6F4 32000624 */   addiu     $a2, $zero, 0x32
  .L8005F6F8:
    /* 4FEF8 8005F6F8 0B80023C */  lui        $v0, %hi(Player_work + 0x16B)
    /* 4FEFC 8005F6FC 1B534290 */  lbu        $v0, %lo(Player_work + 0x16B)($v0)
    /* 4FF00 8005F700 00000000 */  nop
    /* 4FF04 8005F704 02004230 */  andi       $v0, $v0, 0x2
    /* 4FF08 8005F708 05004010 */  beqz       $v0, .L8005F720
    /* 4FF0C 8005F70C 21200000 */   addu      $a0, $zero, $zero
    /* 4FF10 8005F710 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4FF14 8005F714 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4FF18 8005F718 E67D0108 */  j          .L8005F798
    /* 4FF1C 8005F71C 39000624 */   addiu     $a2, $zero, 0x39
  .L8005F720:
    /* 4FF20 8005F720 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4FF24 8005F724 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4FF28 8005F728 E67D0108 */  j          .L8005F798
    /* 4FF2C 8005F72C 38000624 */   addiu     $a2, $zero, 0x38
  .L8005F730:
    /* 4FF30 8005F730 0B80023C */  lui        $v0, %hi(Player_work + 0x16B)
    /* 4FF34 8005F734 1B534290 */  lbu        $v0, %lo(Player_work + 0x16B)($v0)
    /* 4FF38 8005F738 00000000 */  nop
    /* 4FF3C 8005F73C 01004230 */  andi       $v0, $v0, 0x1
    /* 4FF40 8005F740 05004010 */  beqz       $v0, .L8005F758
    /* 4FF44 8005F744 21200000 */   addu      $a0, $zero, $zero
    /* 4FF48 8005F748 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4FF4C 8005F74C 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4FF50 8005F750 E67D0108 */  j          .L8005F798
    /* 4FF54 8005F754 35000624 */   addiu     $a2, $zero, 0x35
  .L8005F758:
    /* 4FF58 8005F758 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4FF5C 8005F75C 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4FF60 8005F760 E67D0108 */  j          .L8005F798
    /* 4FF64 8005F764 34000624 */   addiu     $a2, $zero, 0x34
  .L8005F768:
    /* 4FF68 8005F768 0B80023C */  lui        $v0, %hi(Player_work + 0x16C)
    /* 4FF6C 8005F76C 1C534280 */  lb         $v0, %lo(Player_work + 0x16C)($v0)
    /* 4FF70 8005F770 00000000 */  nop
    /* 4FF74 8005F774 05004010 */  beqz       $v0, .L8005F78C
    /* 4FF78 8005F778 21200000 */   addu      $a0, $zero, $zero
    /* 4FF7C 8005F77C 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4FF80 8005F780 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4FF84 8005F784 E67D0108 */  j          .L8005F798
    /* 4FF88 8005F788 49000624 */   addiu     $a2, $zero, 0x49
  .L8005F78C:
    /* 4FF8C 8005F78C 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4FF90 8005F790 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4FF94 8005F794 48000624 */  addiu      $a2, $zero, 0x48
  .L8005F798:
    /* 4FF98 8005F798 0B4E010C */  jal        MojiTaskExec
    /* 4FF9C 8005F79C 00000000 */   nop
    /* 4FFA0 8005F7A0 657E0108 */  j          .L8005F994
    /* 4FFA4 8005F7A4 00000000 */   nop
  .L8005F7A8:
    /* 4FFA8 8005F7A8 83000424 */  addiu      $a0, $zero, 0x83
    /* 4FFAC 8005F7AC 01000524 */  addiu      $a1, $zero, 0x1
    /* 4FFB0 8005F7B0 0268000C */  jal        Sound_call
    /* 4FFB4 8005F7B4 21300000 */   addu      $a2, $zero, $zero
    /* 4FFB8 8005F7B8 02004292 */  lbu        $v0, 0x2($s2)
    /* 4FFBC 8005F7BC 00000000 */  nop
    /* 4FFC0 8005F7C0 02004224 */  addiu      $v0, $v0, 0x2
    /* 4FFC4 8005F7C4 727E0108 */  j          .L8005F9C8
    /* 4FFC8 8005F7C8 020042A2 */   sb        $v0, 0x2($s2)
  .L8005F7CC:
    /* 4FFCC 8005F7CC 0A80033C */  lui        $v1, %hi(Moji_flag)
    /* 4FFD0 8005F7D0 588A638C */  lw         $v1, %lo(Moji_flag)($v1)
    /* 4FFD4 8005F7D4 0040023C */  lui        $v0, (0x40000000 >> 16)
    /* 4FFD8 8005F7D8 24106200 */  and        $v0, $v1, $v0
    /* 4FFDC 8005F7DC 7A004010 */  beqz       $v0, .L8005F9C8
    /* 4FFE0 8005F7E0 FF006230 */   andi      $v0, $v1, 0xFF
    /* 4FFE4 8005F7E4 6B004014 */  bnez       $v0, .L8005F994
    /* 4FFE8 8005F7E8 02000224 */   addiu     $v0, $zero, 0x2
    /* 4FFEC 8005F7EC 04004392 */  lbu        $v1, 0x4($s2)
    /* 4FFF0 8005F7F0 00000000 */  nop
    /* 4FFF4 8005F7F4 20006210 */  beq        $v1, $v0, .L8005F878
    /* 4FFF8 8005F7F8 03006228 */   slti      $v0, $v1, 0x3
    /* 4FFFC 8005F7FC 05004010 */  beqz       $v0, .L8005F814
    /* 50000 8005F800 00000000 */   nop
.size func_8005F608, . - func_8005F608
