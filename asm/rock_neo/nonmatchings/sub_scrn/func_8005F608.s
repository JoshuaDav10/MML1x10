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
    /* 50004 8005F804 0A006410 */  beq        $v1, $a0, .L8005F830
    /* 50008 8005F808 00000000 */   nop
    /* 5000C 8005F80C 657E0108 */  j          .L8005F994
    /* 50010 8005F810 00000000 */   nop
  .L8005F814:
    /* 50014 8005F814 03000224 */  addiu      $v0, $zero, 0x3
    /* 50018 8005F818 2D006210 */  beq        $v1, $v0, .L8005F8D0
    /* 5001C 8005F81C 04000224 */   addiu     $v0, $zero, 0x4
    /* 50020 8005F820 41006210 */  beq        $v1, $v0, .L8005F928
    /* 50024 8005F824 00000000 */   nop
    /* 50028 8005F828 657E0108 */  j          .L8005F994
    /* 5002C 8005F82C 00000000 */   nop
  .L8005F830:
    /* 50030 8005F830 0B80023C */  lui        $v0, %hi(Player_work + 0x16A)
    /* 50034 8005F834 1A534280 */  lb         $v0, %lo(Player_work + 0x16A)($v0)
    /* 50038 8005F838 00000000 */  nop
    /* 5003C 8005F83C 05004010 */  beqz       $v0, .L8005F854
    /* 50040 8005F840 21200000 */   addu      $a0, $zero, $zero
    /* 50044 8005F844 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 50048 8005F848 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 5004C 8005F84C 187E0108 */  j          .L8005F860
    /* 50050 8005F850 3D000624 */   addiu     $a2, $zero, 0x3D
  .L8005F854:
    /* 50054 8005F854 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 50058 8005F858 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 5005C 8005F85C 3C000624 */  addiu      $a2, $zero, 0x3C
  .L8005F860:
    /* 50060 8005F860 0B4E010C */  jal        MojiTaskExec
    /* 50064 8005F864 00000000 */   nop
    /* 50068 8005F868 0B80033C */  lui        $v1, %hi(Player_work + 0x16A)
    /* 5006C 8005F86C 1A536324 */  addiu      $v1, $v1, %lo(Player_work + 0x16A)
    /* 50070 8005F870 457E0108 */  j          .L8005F914
    /* 50074 8005F874 00000000 */   nop
  .L8005F878:
    /* 50078 8005F878 0B80023C */  lui        $v0, %hi(Player_work + 0x16B)
    /* 5007C 8005F87C 1B534290 */  lbu        $v0, %lo(Player_work + 0x16B)($v0)
    /* 50080 8005F880 00000000 */  nop
    /* 50084 8005F884 02004230 */  andi       $v0, $v0, 0x2
    /* 50088 8005F888 05004010 */  beqz       $v0, .L8005F8A0
    /* 5008C 8005F88C 21200000 */   addu      $a0, $zero, $zero
    /* 50090 8005F890 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 50094 8005F894 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 50098 8005F898 2B7E0108 */  j          .L8005F8AC
    /* 5009C 8005F89C 3F000624 */   addiu     $a2, $zero, 0x3F
  .L8005F8A0:
    /* 500A0 8005F8A0 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 500A4 8005F8A4 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 500A8 8005F8A8 3E000624 */  addiu      $a2, $zero, 0x3E
  .L8005F8AC:
    /* 500AC 8005F8AC 0B4E010C */  jal        MojiTaskExec
    /* 500B0 8005F8B0 00000000 */   nop
    /* 500B4 8005F8B4 0B80033C */  lui        $v1, %hi(Player_work + 0x16B)
    /* 500B8 8005F8B8 1B536324 */  addiu      $v1, $v1, %lo(Player_work + 0x16B)
    /* 500BC 8005F8BC 00006290 */  lbu        $v0, 0x0($v1)
    /* 500C0 8005F8C0 00000000 */  nop
    /* 500C4 8005F8C4 02004238 */  xori       $v0, $v0, 0x2
    /* 500C8 8005F8C8 657E0108 */  j          .L8005F994
    /* 500CC 8005F8CC 000062A0 */   sb        $v0, 0x0($v1)
  .L8005F8D0:
    /* 500D0 8005F8D0 0B80023C */  lui        $v0, %hi(Player_work + 0x16B)
    /* 500D4 8005F8D4 1B534290 */  lbu        $v0, %lo(Player_work + 0x16B)($v0)
    /* 500D8 8005F8D8 00000000 */  nop
    /* 500DC 8005F8DC 01004230 */  andi       $v0, $v0, 0x1
    /* 500E0 8005F8E0 05004010 */  beqz       $v0, .L8005F8F8
    /* 500E4 8005F8E4 21200000 */   addu      $a0, $zero, $zero
    /* 500E8 8005F8E8 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 500EC 8005F8EC 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 500F0 8005F8F0 417E0108 */  j          .L8005F904
    /* 500F4 8005F8F4 37000624 */   addiu     $a2, $zero, 0x37
  .L8005F8F8:
    /* 500F8 8005F8F8 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 500FC 8005F8FC 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 50100 8005F900 36000624 */  addiu      $a2, $zero, 0x36
  .L8005F904:
    /* 50104 8005F904 0B4E010C */  jal        MojiTaskExec
    /* 50108 8005F908 00000000 */   nop
    /* 5010C 8005F90C 0B80033C */  lui        $v1, %hi(Player_work + 0x16B)
    /* 50110 8005F910 1B536324 */  addiu      $v1, $v1, %lo(Player_work + 0x16B)
  .L8005F914:
    /* 50114 8005F914 00006290 */  lbu        $v0, 0x0($v1)
    /* 50118 8005F918 00000000 */  nop
    /* 5011C 8005F91C 01004238 */  xori       $v0, $v0, 0x1
    /* 50120 8005F920 657E0108 */  j          .L8005F994
    /* 50124 8005F924 000062A0 */   sb        $v0, 0x0($v1)
  .L8005F928:
    /* 50128 8005F928 0B80133C */  lui        $s3, %hi(Player_work + 0x16C)
    /* 5012C 8005F92C 1C537326 */  addiu      $s3, $s3, %lo(Player_work + 0x16C)
    /* 50130 8005F930 00006282 */  lb         $v0, 0x0($s3)
    /* 50134 8005F934 00000000 */  nop
    /* 50138 8005F938 07004010 */  beqz       $v0, .L8005F958
    /* 5013C 8005F93C 21200000 */   addu      $a0, $zero, $zero
    /* 50140 8005F940 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 50144 8005F944 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 50148 8005F948 0B4E010C */  jal        MojiTaskExec
    /* 5014C 8005F94C 4B000624 */   addiu     $a2, $zero, 0x4B
    /* 50150 8005F950 657E0108 */  j          .L8005F994
    /* 50154 8005F954 000060A2 */   sb        $zero, 0x0($s3)
  .L8005F958:
    /* 50158 8005F958 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 5015C 8005F95C 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 50160 8005F960 0B4E010C */  jal        MojiTaskExec
    /* 50164 8005F964 4A000624 */   addiu     $a2, $zero, 0x4A
    /* 50168 8005F968 9676000C */  jal        Sce_flag_test
    /* 5016C 8005F96C 3A050424 */   addiu     $a0, $zero, 0x53A
    /* 50170 8005F970 3B050424 */  addiu      $a0, $zero, 0x53B
    /* 50174 8005F974 9676000C */  jal        Sce_flag_test
    /* 50178 8005F978 21804000 */   addu      $s0, $v0, $zero
    /* 5017C 8005F97C 3C050424 */  addiu      $a0, $zero, 0x53C
    /* 50180 8005F980 9676000C */  jal        Sce_flag_test
    /* 50184 8005F984 21884000 */   addu      $s1, $v0, $zero
    /* 50188 8005F988 21801102 */  addu       $s0, $s0, $s1
    /* 5018C 8005F98C 21800202 */  addu       $s0, $s0, $v0
    /* 50190 8005F990 000070A2 */  sb         $s0, 0x0($s3)
  .L8005F994:
    /* 50194 8005F994 02004292 */  lbu        $v0, 0x2($s2)
    /* 50198 8005F998 00000000 */  nop
    /* 5019C 8005F99C 01004224 */  addiu      $v0, $v0, 0x1
    /* 501A0 8005F9A0 727E0108 */  j          .L8005F9C8
    /* 501A4 8005F9A4 020042A2 */   sb        $v0, 0x2($s2)
  .L8005F9A8:
    /* 501A8 8005F9A8 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 501AC 8005F9AC 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 501B0 8005F9B0 00000000 */  nop
    /* 501B4 8005F9B4 24104300 */  and        $v0, $v0, $v1
    /* 501B8 8005F9B8 03004014 */  bnez       $v0, .L8005F9C8
    /* 501BC 8005F9BC 02000224 */   addiu     $v0, $zero, 0x2
    /* 501C0 8005F9C0 010042A2 */  sb         $v0, 0x1($s2)
    /* 501C4 8005F9C4 020040A2 */  sb         $zero, 0x2($s2)
  .L8005F9C8:
    /* 501C8 8005F9C8 2000BF8F */  lw         $ra, 0x20($sp)
    /* 501CC 8005F9CC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 501D0 8005F9D0 1800B28F */  lw         $s2, 0x18($sp)
    /* 501D4 8005F9D4 1400B18F */  lw         $s1, 0x14($sp)
    /* 501D8 8005F9D8 1000B08F */  lw         $s0, 0x10($sp)
    /* 501DC 8005F9DC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 501E0 8005F9E0 0800E003 */  jr         $ra
    /* 501E4 8005F9E4 00000000 */   nop
.size func_8005F608, . - func_8005F608
