.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005ED9C
    /* 4F59C 8005ED9C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4F5A0 8005EDA0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4F5A4 8005EDA4 21808000 */  addu       $s0, $a0, $zero
    /* 4F5A8 8005EDA8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 4F5AC 8005EDAC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4F5B0 8005EDB0 01000382 */  lb         $v1, 0x1($s0)
    /* 4F5B4 8005EDB4 0B80063C */  lui        $a2, %hi(Player_work)
    /* 4F5B8 8005EDB8 B051C624 */  addiu      $a2, $a2, %lo(Player_work)
    /* 4F5BC 8005EDBC 0800622C */  sltiu      $v0, $v1, 0x8
    /* 4F5C0 8005EDC0 0C014010 */  beqz       $v0, .L8005F1F4
    /* 4F5C4 8005EDC4 80100300 */   sll       $v0, $v1, 2
    /* 4F5C8 8005EDC8 0180013C */  lui        $at, %hi(jtbl_80011264)
    /* 4F5CC 8005EDCC 21082200 */  addu       $at, $at, $v0
    /* 4F5D0 8005EDD0 6412228C */  lw         $v0, %lo(jtbl_80011264)($at)
    /* 4F5D4 8005EDD4 00000000 */  nop
    /* 4F5D8 8005EDD8 08004000 */  jr         $v0
    /* 4F5DC 8005EDDC 00000000 */   nop
  glabel .L8005EDE0
    /* 4F5E0 8005EDE0 8C4E010C */  jal        MojiTaskKill
    /* 4F5E4 8005EDE4 00000000 */   nop
    /* 4F5E8 8005EDE8 CA8F010C */  jal        Game_logo_kill
    /* 4F5EC 8005EDEC FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 4F5F0 8005EDF0 1075000C */  jal        Cd_read_comb
    /* 4F5F4 8005EDF4 CC000424 */   addiu     $a0, $zero, 0xCC
    /* 4F5F8 8005EDF8 5D7C0108 */  j          .L8005F174
    /* 4F5FC 8005EDFC 00000000 */   nop
  glabel .L8005EE00
    /* 4F600 8005EE00 0E76000C */  jal        Cd_read_sync2
    /* 4F604 8005EE04 00000000 */   nop
    /* 4F608 8005EE08 FB004014 */  bnez       $v0, .L8005F1F8
    /* 4F60C 8005EE0C 21100000 */   addu      $v0, $zero, $zero
    /* 4F610 8005EE10 EB75000C */  jal        func_8001D7AC
    /* 4F614 8005EE14 16000424 */   addiu     $a0, $zero, 0x16
    /* 4F618 8005EE18 01000424 */  addiu      $a0, $zero, 0x1
    /* 4F61C 8005EE1C 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F620 8005EE20 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F624 8005EE24 0B4E010C */  jal        MojiTaskExec
    /* 4F628 8005EE28 14000624 */   addiu     $a2, $zero, 0x14
    /* 4F62C 8005EE2C 5D7C0108 */  j          .L8005F174
    /* 4F630 8005EE30 00000000 */   nop
  glabel .L8005EE34
    /* 4F634 8005EE34 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 4F638 8005EE38 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 4F63C 8005EE3C 0040033C */  lui        $v1, (0x40000000 >> 16)
    /* 4F640 8005EE40 24104300 */  and        $v0, $v0, $v1
    /* 4F644 8005EE44 19004010 */  beqz       $v0, .L8005EEAC
    /* 4F648 8005EE48 FF000324 */   addiu     $v1, $zero, 0xFF
    /* 4F64C 8005EE4C 0A80023C */  lui        $v0, %hi(Moji_flag3)
    /* 4F650 8005EE50 308B4290 */  lbu        $v0, %lo(Moji_flag3)($v0)
    /* 4F654 8005EE54 00000000 */  nop
    /* 4F658 8005EE58 040002A2 */  sb         $v0, 0x4($s0)
    /* 4F65C 8005EE5C FF004230 */  andi       $v0, $v0, 0xFF
    /* 4F660 8005EE60 0C004310 */  beq        $v0, $v1, .L8005EE94
    /* 4F664 8005EE64 82000424 */   addiu     $a0, $zero, 0x82
    /* 4F668 8005EE68 01000524 */  addiu      $a1, $zero, 0x1
    /* 4F66C 8005EE6C 0268000C */  jal        Sound_call
    /* 4F670 8005EE70 21300000 */   addu      $a2, $zero, $zero
    /* 4F674 8005EE74 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 4F678 8005EE78 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 4F67C 8005EE7C 00000000 */  nop
    /* 4F680 8005EE80 00404234 */  ori        $v0, $v0, 0x4000
    /* 4F684 8005EE84 0A80013C */  lui        $at, %hi(Moji_flag)
    /* 4F688 8005EE88 588A22AC */  sw         $v0, %lo(Moji_flag)($at)
    /* 4F68C 8005EE8C 5D7C0108 */  j          .L8005F174
    /* 4F690 8005EE90 00000000 */   nop
  .L8005EE94:
    /* 4F694 8005EE94 83000424 */  addiu      $a0, $zero, 0x83
    /* 4F698 8005EE98 01000524 */  addiu      $a1, $zero, 0x1
    /* 4F69C 8005EE9C 0268000C */  jal        Sound_call
    /* 4F6A0 8005EEA0 21300000 */   addu      $a2, $zero, $zero
    /* 4F6A4 8005EEA4 7E7C0108 */  j          .L8005F1F8
    /* 4F6A8 8005EEA8 21100000 */   addu      $v0, $zero, $zero
  .L8005EEAC:
    /* 4F6AC 8005EEAC 9983010C */  jal        Sub_screen_cancel_check
    /* 4F6B0 8005EEB0 00000000 */   nop
    /* 4F6B4 8005EEB4 06004010 */  beqz       $v0, .L8005EED0
    /* 4F6B8 8005EEB8 00000000 */   nop
    /* 4F6BC 8005EEBC 01000292 */  lbu        $v0, 0x1($s0)
    /* 4F6C0 8005EEC0 00000000 */  nop
    /* 4F6C4 8005EEC4 05004224 */  addiu      $v0, $v0, 0x5
    /* 4F6C8 8005EEC8 7D7C0108 */  j          .L8005F1F4
    /* 4F6CC 8005EECC 010002A2 */   sb        $v0, 0x1($s0)
  .L8005EED0:
    /* 4F6D0 8005EED0 B083010C */  jal        Sub_screen_shift_check
    /* 4F6D4 8005EED4 21200002 */   addu      $a0, $s0, $zero
    /* 4F6D8 8005EED8 7E7C0108 */  j          .L8005F1F8
    /* 4F6DC 8005EEDC 21100000 */   addu      $v0, $zero, $zero
  glabel .L8005EEE0
    /* 4F6E0 8005EEE0 04000392 */  lbu        $v1, 0x4($s0)
    /* 4F6E4 8005EEE4 42000224 */  addiu      $v0, $zero, 0x42
    /* 4F6E8 8005EEE8 48006210 */  beq        $v1, $v0, .L8005F00C
    /* 4F6EC 8005EEEC 43006228 */   slti      $v0, $v1, 0x43
    /* 4F6F0 8005EEF0 07004010 */  beqz       $v0, .L8005EF10
    /* 4F6F4 8005EEF4 40000224 */   addiu     $v0, $zero, 0x40
    /* 4F6F8 8005EEF8 0A006210 */  beq        $v1, $v0, .L8005EF24
    /* 4F6FC 8005EEFC 41000224 */   addiu     $v0, $zero, 0x41
    /* 4F700 8005EF00 19006210 */  beq        $v1, $v0, .L8005EF68
    /* 4F704 8005EF04 00000000 */   nop
    /* 4F708 8005EF08 107C0108 */  j          .L8005F040
    /* 4F70C 8005EF0C 00000000 */   nop
  .L8005EF10:
    /* 4F710 8005EF10 43000224 */  addiu      $v0, $zero, 0x43
    /* 4F714 8005EF14 44006210 */  beq        $v1, $v0, .L8005F028
    /* 4F718 8005EF18 21200000 */   addu      $a0, $zero, $zero
    /* 4F71C 8005EF1C 107C0108 */  j          .L8005F040
    /* 4F720 8005EF20 00000000 */   nop
  .L8005EF24:
    /* 4F724 8005EF24 5776010C */  jal        func_8005D95C
    /* 4F728 8005EF28 00000000 */   nop
    /* 4F72C 8005EF2C 08004014 */  bnez       $v0, .L8005EF50
    /* 4F730 8005EF30 21200000 */   addu      $a0, $zero, $zero
    /* 4F734 8005EF34 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F738 8005EF38 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F73C 8005EF3C 58000624 */  addiu      $a2, $zero, 0x58
  .L8005EF40:
    /* 4F740 8005EF40 0B4E010C */  jal        MojiTaskExec
    /* 4F744 8005EF44 00000000 */   nop
    /* 4F748 8005EF48 587C0108 */  j          .L8005F160
    /* 4F74C 8005EF4C 00000000 */   nop
  .L8005EF50:
    /* 4F750 8005EF50 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F754 8005EF54 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F758 8005EF58 0B4E010C */  jal        MojiTaskExec
    /* 4F75C 8005EF5C 50000624 */   addiu     $a2, $zero, 0x50
    /* 4F760 8005EF60 5D7C0108 */  j          .L8005F174
    /* 4F764 8005EF64 00000000 */   nop
  .L8005EF68:
    /* 4F768 8005EF68 7201C580 */  lb         $a1, 0x172($a2)
    /* 4F76C 8005EF6C 00000000 */  nop
    /* 4F770 8005EF70 40100500 */  sll        $v0, $a1, 1
    /* 4F774 8005EF74 0980013C */  lui        $at, %hi(D_8008DB08)
    /* 4F778 8005EF78 21082200 */  addu       $at, $at, $v0
    /* 4F77C 8005EF7C 08DB2394 */  lhu        $v1, %lo(D_8008DB08)($at)
    /* 4F780 8005EF80 00000000 */  nop
    /* 4F784 8005EF84 80100300 */  sll        $v0, $v1, 2
    /* 4F788 8005EF88 21104300 */  addu       $v0, $v0, $v1
    /* 4F78C 8005EF8C 80100200 */  sll        $v0, $v0, 2
    /* 4F790 8005EF90 C0180500 */  sll        $v1, $a1, 3
    /* 4F794 8005EF94 2188C300 */  addu       $s1, $a2, $v1
    /* 4F798 8005EF98 0980033C */  lui        $v1, %hi(D_8008D7EC)
    /* 4F79C 8005EF9C ECD76324 */  addiu      $v1, $v1, %lo(D_8008D7EC)
    /* 4F7A0 8005EFA0 F5042482 */  lb         $a0, 0x4F5($s1)
    /* 4F7A4 8005EFA4 21104300 */  addu       $v0, $v0, $v1
    /* 4F7A8 8005EFA8 21104400 */  addu       $v0, $v0, $a0
    /* 4F7AC 8005EFAC 00004390 */  lbu        $v1, 0x0($v0)
    /* 4F7B0 8005EFB0 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 4F7B4 8005EFB4 05006214 */  bne        $v1, $v0, .L8005EFCC
    /* 4F7B8 8005EFB8 21200000 */   addu      $a0, $zero, $zero
    /* 4F7BC 8005EFBC 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F7C0 8005EFC0 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F7C4 8005EFC4 D07B0108 */  j          .L8005EF40
    /* 4F7C8 8005EFC8 3B000624 */   addiu     $a2, $zero, 0x3B
  .L8005EFCC:
    /* 4F7CC 8005EFCC 81DD000C */  jal        func_80037604
    /* 4F7D0 8005EFD0 2120C000 */   addu      $a0, $a2, $zero
    /* 4F7D4 8005EFD4 FA042386 */  lh         $v1, 0x4FA($s1)
    /* 4F7D8 8005EFD8 00000000 */  nop
    /* 4F7DC 8005EFDC 05004314 */  bne        $v0, $v1, .L8005EFF4
    /* 4F7E0 8005EFE0 21200000 */   addu      $a0, $zero, $zero
    /* 4F7E4 8005EFE4 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F7E8 8005EFE8 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F7EC 8005EFEC D07B0108 */  j          .L8005EF40
    /* 4F7F0 8005EFF0 3A000624 */   addiu     $a2, $zero, 0x3A
  .L8005EFF4:
    /* 4F7F4 8005EFF4 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F7F8 8005EFF8 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F7FC 8005EFFC 0B4E010C */  jal        MojiTaskExec
    /* 4F800 8005F000 52000624 */   addiu     $a2, $zero, 0x52
    /* 4F804 8005F004 5D7C0108 */  j          .L8005F174
    /* 4F808 8005F008 00000000 */   nop
  .L8005F00C:
    /* 4F80C 8005F00C 21200000 */  addu       $a0, $zero, $zero
    /* 4F810 8005F010 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F814 8005F014 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F818 8005F018 0B4E010C */  jal        MojiTaskExec
    /* 4F81C 8005F01C 54000624 */   addiu     $a2, $zero, 0x54
    /* 4F820 8005F020 5D7C0108 */  j          .L8005F174
    /* 4F824 8005F024 00000000 */   nop
  .L8005F028:
    /* 4F828 8005F028 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F82C 8005F02C 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F830 8005F030 0B4E010C */  jal        MojiTaskExec
    /* 4F834 8005F034 56000624 */   addiu     $a2, $zero, 0x56
    /* 4F838 8005F038 5D7C0108 */  j          .L8005F174
    /* 4F83C 8005F03C 00000000 */   nop
  .L8005F040:
    /* 4F840 8005F040 04000292 */  lbu        $v0, 0x4($s0)
    /* 4F844 8005F044 00000000 */  nop
    /* 4F848 8005F048 5800422C */  sltiu      $v0, $v0, 0x58
    /* 4F84C 8005F04C 05004010 */  beqz       $v0, .L8005F064
    /* 4F850 8005F050 21200000 */   addu      $a0, $zero, $zero
    /* 4F854 8005F054 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F858 8005F058 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F85C 8005F05C D07B0108 */  j          .L8005EF40
    /* 4F860 8005F060 5A000624 */   addiu     $a2, $zero, 0x5A
  .L8005F064:
    /* 4F864 8005F064 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F868 8005F068 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F86C 8005F06C D07B0108 */  j          .L8005EF40
    /* 4F870 8005F070 5B000624 */   addiu     $a2, $zero, 0x5B
  glabel .L8005F074
    /* 4F874 8005F074 0A80033C */  lui        $v1, %hi(Moji_flag)
    /* 4F878 8005F078 588A638C */  lw         $v1, %lo(Moji_flag)($v1)
    /* 4F87C 8005F07C 0040023C */  lui        $v0, (0x40000000 >> 16)
    /* 4F880 8005F080 24106200 */  and        $v0, $v1, $v0
    /* 4F884 8005F084 5B004010 */  beqz       $v0, .L8005F1F4
    /* 4F888 8005F088 FF006230 */   andi      $v0, $v1, 0xFF
    /* 4F88C 8005F08C 39004014 */  bnez       $v0, .L8005F174
    /* 4F890 8005F090 42000224 */   addiu     $v0, $zero, 0x42
    /* 4F894 8005F094 04000392 */  lbu        $v1, 0x4($s0)
    /* 4F898 8005F098 00000000 */  nop
    /* 4F89C 8005F09C 1F006210 */  beq        $v1, $v0, .L8005F11C
    /* 4F8A0 8005F0A0 43006228 */   slti      $v0, $v1, 0x43
    /* 4F8A4 8005F0A4 07004010 */  beqz       $v0, .L8005F0C4
    /* 4F8A8 8005F0A8 40000224 */   addiu     $v0, $zero, 0x40
    /* 4F8AC 8005F0AC 0A006210 */  beq        $v1, $v0, .L8005F0D8
    /* 4F8B0 8005F0B0 41000224 */   addiu     $v0, $zero, 0x41
    /* 4F8B4 8005F0B4 11006210 */  beq        $v1, $v0, .L8005F0FC
    /* 4F8B8 8005F0B8 21200000 */   addu      $a0, $zero, $zero
    /* 4F8BC 8005F0BC 587C0108 */  j          .L8005F160
    /* 4F8C0 8005F0C0 00000000 */   nop
  .L8005F0C4:
    /* 4F8C4 8005F0C4 43000224 */  addiu      $v0, $zero, 0x43
    /* 4F8C8 8005F0C8 1D006210 */  beq        $v1, $v0, .L8005F140
    /* 4F8CC 8005F0CC 21200000 */   addu      $a0, $zero, $zero
    /* 4F8D0 8005F0D0 587C0108 */  j          .L8005F160
    /* 4F8D4 8005F0D4 00000000 */   nop
  .L8005F0D8:
    /* 4F8D8 8005F0D8 21200000 */  addu       $a0, $zero, $zero
    /* 4F8DC 8005F0DC 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F8E0 8005F0E0 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F8E4 8005F0E4 0B4E010C */  jal        MojiTaskExec
    /* 4F8E8 8005F0E8 51000624 */   addiu     $a2, $zero, 0x51
    /* 4F8EC 8005F0EC 7176010C */  jal        func_8005D9C4
    /* 4F8F0 8005F0F0 00000000 */   nop
    /* 4F8F4 8005F0F4 577C0108 */  j          .L8005F15C
    /* 4F8F8 8005F0F8 40050224 */   addiu     $v0, $zero, 0x540
  .L8005F0FC:
    /* 4F8FC 8005F0FC 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F900 8005F100 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F904 8005F104 0B4E010C */  jal        MojiTaskExec
    /* 4F908 8005F108 53000624 */   addiu     $a2, $zero, 0x53
    /* 4F90C 8005F10C 65DD000C */  jal        func_80037594
    /* 4F910 8005F110 00000000 */   nop
    /* 4F914 8005F114 577C0108 */  j          .L8005F15C
    /* 4F918 8005F118 41050224 */   addiu     $v0, $zero, 0x541
  .L8005F11C:
    /* 4F91C 8005F11C 21200000 */  addu       $a0, $zero, $zero
    /* 4F920 8005F120 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F924 8005F124 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F928 8005F128 0B4E010C */  jal        MojiTaskExec
    /* 4F92C 8005F12C 55000624 */   addiu     $a2, $zero, 0x55
    /* 4F930 8005F130 ED7A010C */  jal        func_8005EBB4
    /* 4F934 8005F134 08070424 */   addiu     $a0, $zero, 0x708
    /* 4F938 8005F138 577C0108 */  j          .L8005F15C
    /* 4F93C 8005F13C 42050224 */   addiu     $v0, $zero, 0x542
  .L8005F140:
    /* 4F940 8005F140 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F944 8005F144 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F948 8005F148 0B4E010C */  jal        MojiTaskExec
    /* 4F94C 8005F14C 57000624 */   addiu     $a2, $zero, 0x57
    /* 4F950 8005F150 E97A010C */  jal        func_8005EBA4
    /* 4F954 8005F154 84030424 */   addiu     $a0, $zero, 0x384
    /* 4F958 8005F158 43050224 */  addiu      $v0, $zero, 0x543
  .L8005F15C:
    /* 4F95C 8005F15C 0C0002A6 */  sh         $v0, 0xC($s0)
  .L8005F160:
    /* 4F960 8005F160 01000292 */  lbu        $v0, 0x1($s0)
    /* 4F964 8005F164 00000000 */  nop
    /* 4F968 8005F168 02004224 */  addiu      $v0, $v0, 0x2
    /* 4F96C 8005F16C 7D7C0108 */  j          .L8005F1F4
    /* 4F970 8005F170 010002A2 */   sb        $v0, 0x1($s0)
  .L8005F174:
    /* 4F974 8005F174 01000292 */  lbu        $v0, 0x1($s0)
    /* 4F978 8005F178 00000000 */  nop
    /* 4F97C 8005F17C 01004224 */  addiu      $v0, $v0, 0x1
    /* 4F980 8005F180 7D7C0108 */  j          .L8005F1F4
    /* 4F984 8005F184 010002A2 */   sb        $v0, 0x1($s0)
  glabel .L8005F188
    /* 4F988 8005F188 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 4F98C 8005F18C 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 4F990 8005F190 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* 4F994 8005F194 24104300 */  and        $v0, $v0, $v1
    /* 4F998 8005F198 17004014 */  bnez       $v0, .L8005F1F8
    /* 4F99C 8005F19C 21100000 */   addu      $v0, $zero, $zero
    /* 4F9A0 8005F1A0 01000382 */  lb         $v1, 0x1($s0)
    /* 4F9A4 8005F1A4 06000224 */  addiu      $v0, $zero, 0x6
    /* 4F9A8 8005F1A8 04006214 */  bne        $v1, $v0, .L8005F1BC
    /* 4F9AC 8005F1AC 00000000 */   nop
    /* 4F9B0 8005F1B0 0C000496 */  lhu        $a0, 0xC($s0)
    /* 4F9B4 8005F1B4 3477000C */  jal        Sce_flag_off
    /* 4F9B8 8005F1B8 00000000 */   nop
  .L8005F1BC:
    /* 4F9BC 8005F1BC 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 4F9C0 8005F1C0 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 4F9C4 8005F1C4 FFBF0324 */  addiu      $v1, $zero, -0x4001
    /* 4F9C8 8005F1C8 24104300 */  and        $v0, $v0, $v1
    /* 4F9CC 8005F1CC 0A80013C */  lui        $at, %hi(Moji_flag)
    /* 4F9D0 8005F1D0 588A22AC */  sw         $v0, %lo(Moji_flag)($at)
    /* 4F9D4 8005F1D4 02000224 */  addiu      $v0, $zero, 0x2
    /* 4F9D8 8005F1D8 7D7C0108 */  j          .L8005F1F4
    /* 4F9DC 8005F1DC 010002A2 */   sb        $v0, 0x1($s0)
  glabel .L8005F1E0
    /* 4F9E0 8005F1E0 0E76000C */  jal        Cd_read_sync2
    /* 4F9E4 8005F1E4 00000000 */   nop
    /* 4F9E8 8005F1E8 03004014 */  bnez       $v0, .L8005F1F8
    /* 4F9EC 8005F1EC 21100000 */   addu      $v0, $zero, $zero
    /* 4F9F0 8005F1F0 000000AE */  sw         $zero, 0x0($s0)
  .L8005F1F4:
    /* 4F9F4 8005F1F4 21100000 */  addu       $v0, $zero, $zero
  .L8005F1F8:
    /* 4F9F8 8005F1F8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4F9FC 8005F1FC 1400B18F */  lw         $s1, 0x14($sp)
    /* 4FA00 8005F200 1000B08F */  lw         $s0, 0x10($sp)
    /* 4FA04 8005F204 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4FA08 8005F208 0800E003 */  jr         $ra
    /* 4FA0C 8005F20C 00000000 */   nop
.size func_8005ED9C, . - func_8005ED9C
