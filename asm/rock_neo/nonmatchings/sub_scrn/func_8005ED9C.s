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
.size func_8005ED9C, . - func_8005ED9C
