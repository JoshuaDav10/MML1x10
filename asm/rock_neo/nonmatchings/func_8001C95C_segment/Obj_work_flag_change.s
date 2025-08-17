.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Obj_work_flag_change
    /* 1F690 8002EE90 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 1F694 8002EE94 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 1F698 8002EE98 21B88000 */  addu       $s7, $a0, $zero
    /* 1F69C 8002EE9C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1F6A0 8002EEA0 2198A000 */  addu       $s3, $a1, $zero
    /* 1F6A4 8002EEA4 0100E232 */  andi       $v0, $s7, 0x1
    /* 1F6A8 8002EEA8 3000BFAF */  sw         $ra, 0x30($sp)
    /* 1F6AC 8002EEAC 2800B6AF */  sw         $s6, 0x28($sp)
    /* 1F6B0 8002EEB0 2400B5AF */  sw         $s5, 0x24($sp)
    /* 1F6B4 8002EEB4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 1F6B8 8002EEB8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1F6BC 8002EEBC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1F6C0 8002EEC0 1C004010 */  beqz       $v0, .L8002EF34
    /* 1F6C4 8002EEC4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 1F6C8 8002EEC8 0B80103C */  lui        $s0, %hi(Player_work)
    /* 1F6CC 8002EECC B0511026 */  addiu      $s0, $s0, %lo(Player_work)
    /* 1F6D0 8002EED0 0A80143C */  lui        $s4, %hi(D_8009888C)
    /* 1F6D4 8002EED4 8C88948E */  lw         $s4, %lo(D_8009888C)($s4)
    /* 1F6D8 8002EED8 21900000 */  addu       $s2, $zero, $zero
    /* 1F6DC 8002EEDC 80007132 */  andi       $s1, $s3, 0x80
    /* 1F6E0 8002EEE0 0080153C */  lui        $s5, (0x80000000 >> 16)
  .L8002EEE4:
    /* 1F6E4 8002EEE4 04105402 */  sllv       $v0, $s4, $s2
    /* 1F6E8 8002EEE8 0E004104 */  bgez       $v0, .L8002EF24
    /* 1F6EC 8002EEEC 00000000 */   nop
    /* 1F6F0 8002EEF0 09002012 */  beqz       $s1, .L8002EF18
    /* 1F6F4 8002EEF4 06105502 */   srlv      $v0, $s5, $s2
    /* 1F6F8 8002EEF8 0A80033C */  lui        $v1, %hi(D_8009888C)
    /* 1F6FC 8002EEFC 8C88638C */  lw         $v1, %lo(D_8009888C)($v1)
    /* 1F700 8002EF00 27100200 */  nor        $v0, $zero, $v0
    /* 1F704 8002EF04 24186200 */  and        $v1, $v1, $v0
    /* 1F708 8002EF08 0A80013C */  lui        $at, %hi(D_8009888C)
    /* 1F70C 8002EF0C 8C8823AC */  sw         $v1, %lo(D_8009888C)($at)
    /* 1F710 8002EF10 C9BB0008 */  j          .L8002EF24
    /* 1F714 8002EF14 000000A2 */   sb        $zero, 0x0($s0)
  .L8002EF18:
    /* 1F718 8002EF18 21200002 */  addu       $a0, $s0, $zero
    /* 1F71C 8002EF1C EABC000C */  jal        func_8002F3A8
    /* 1F720 8002EF20 21286002 */   addu      $a1, $s3, $zero
  .L8002EF24:
    /* 1F724 8002EF24 01005226 */  addiu      $s2, $s2, 0x1
    /* 1F728 8002EF28 0200422A */  slti       $v0, $s2, 0x2
    /* 1F72C 8002EF2C EDFF4014 */  bnez       $v0, .L8002EEE4
    /* 1F730 8002EF30 F4051026 */   addiu     $s0, $s0, 0x5F4
  .L8002EF34:
    /* 1F734 8002EF34 0200E232 */  andi       $v0, $s7, 0x2
    /* 1F738 8002EF38 19004010 */  beqz       $v0, .L8002EFA0
    /* 1F73C 8002EF3C 0400E232 */   andi      $v0, $s7, 0x4
    /* 1F740 8002EF40 0A80103C */  lui        $s0, %hi(D_8009F108)
    /* 1F744 8002EF44 08F11026 */  addiu      $s0, $s0, %lo(D_8009F108)
    /* 1F748 8002EF48 0A80143C */  lui        $s4, %hi(D_800987E8)
    /* 1F74C 8002EF4C E887948E */  lw         $s4, %lo(D_800987E8)($s4)
    /* 1F750 8002EF50 21900000 */  addu       $s2, $zero, $zero
    /* 1F754 8002EF54 80007132 */  andi       $s1, $s3, 0x80
  .L8002EF58:
    /* 1F758 8002EF58 04105402 */  sllv       $v0, $s4, $s2
    /* 1F75C 8002EF5C 0B004104 */  bgez       $v0, .L8002EF8C
    /* 1F760 8002EF60 00000000 */   nop
    /* 1F764 8002EF64 07002012 */  beqz       $s1, .L8002EF84
    /* 1F768 8002EF68 21200002 */   addu      $a0, $s0, $zero
    /* 1F76C 8002EF6C 4A49010C */  jal        func_80052528
    /* 1F770 8002EF70 21200002 */   addu      $a0, $s0, $zero
    /* 1F774 8002EF74 09C6000C */  jal        func_80031824
    /* 1F778 8002EF78 21200002 */   addu      $a0, $s0, $zero
    /* 1F77C 8002EF7C E4BB0008 */  j          .L8002EF90
    /* 1F780 8002EF80 01005226 */   addiu     $s2, $s2, 0x1
  .L8002EF84:
    /* 1F784 8002EF84 EABC000C */  jal        func_8002F3A8
    /* 1F788 8002EF88 21286002 */   addu      $a1, $s3, $zero
  .L8002EF8C:
    /* 1F78C 8002EF8C 01005226 */  addiu      $s2, $s2, 0x1
  .L8002EF90:
    /* 1F790 8002EF90 1000422A */  slti       $v0, $s2, 0x10
    /* 1F794 8002EF94 F0FF4014 */  bnez       $v0, .L8002EF58
    /* 1F798 8002EF98 C0031026 */   addiu     $s0, $s0, 0x3C0
    /* 1F79C 8002EF9C 0400E232 */  andi       $v0, $s7, 0x4
  .L8002EFA0:
    /* 1F7A0 8002EFA0 19004010 */  beqz       $v0, .L8002F008
    /* 1F7A4 8002EFA4 0800E232 */   andi      $v0, $s7, 0x8
    /* 1F7A8 8002EFA8 0C80103C */  lui        $s0, %hi(D_800C3580)
    /* 1F7AC 8002EFAC 80351026 */  addiu      $s0, $s0, %lo(D_800C3580)
    /* 1F7B0 8002EFB0 0A80143C */  lui        $s4, %hi(D_80098B20)
    /* 1F7B4 8002EFB4 208B948E */  lw         $s4, %lo(D_80098B20)($s4)
    /* 1F7B8 8002EFB8 21900000 */  addu       $s2, $zero, $zero
    /* 1F7BC 8002EFBC 80007132 */  andi       $s1, $s3, 0x80
  .L8002EFC0:
    /* 1F7C0 8002EFC0 04105402 */  sllv       $v0, $s4, $s2
    /* 1F7C4 8002EFC4 0B004104 */  bgez       $v0, .L8002EFF4
    /* 1F7C8 8002EFC8 00000000 */   nop
    /* 1F7CC 8002EFCC 07002012 */  beqz       $s1, .L8002EFEC
    /* 1F7D0 8002EFD0 21200002 */   addu      $a0, $s0, $zero
    /* 1F7D4 8002EFD4 4A49010C */  jal        func_80052528
    /* 1F7D8 8002EFD8 21200002 */   addu      $a0, $s0, $zero
    /* 1F7DC 8002EFDC 1FC6000C */  jal        func_8003187C
    /* 1F7E0 8002EFE0 21200002 */   addu      $a0, $s0, $zero
    /* 1F7E4 8002EFE4 FEBB0008 */  j          .L8002EFF8
    /* 1F7E8 8002EFE8 01005226 */   addiu     $s2, $s2, 0x1
  .L8002EFEC:
    /* 1F7EC 8002EFEC EABC000C */  jal        func_8002F3A8
    /* 1F7F0 8002EFF0 21286002 */   addu      $a1, $s3, $zero
  .L8002EFF4:
    /* 1F7F4 8002EFF4 01005226 */  addiu      $s2, $s2, 0x1
  .L8002EFF8:
    /* 1F7F8 8002EFF8 0400422A */  slti       $v0, $s2, 0x4
    /* 1F7FC 8002EFFC F0FF4014 */  bnez       $v0, .L8002EFC0
    /* 1F800 8002F000 A4051026 */   addiu     $s0, $s0, 0x5A4
    /* 1F804 8002F004 0800E232 */  andi       $v0, $s7, 0x8
  .L8002F008:
    /* 1F808 8002F008 19004010 */  beqz       $v0, .L8002F070
    /* 1F80C 8002F00C 1000E232 */   andi      $v0, $s7, 0x10
    /* 1F810 8002F010 0C80103C */  lui        $s0, %hi(D_800BFB20)
    /* 1F814 8002F014 20FB1026 */  addiu      $s0, $s0, %lo(D_800BFB20)
    /* 1F818 8002F018 0A80143C */  lui        $s4, %hi(D_800989F0)
    /* 1F81C 8002F01C F089948E */  lw         $s4, %lo(D_800989F0)($s4)
    /* 1F820 8002F020 21900000 */  addu       $s2, $zero, $zero
    /* 1F824 8002F024 80007132 */  andi       $s1, $s3, 0x80
  .L8002F028:
    /* 1F828 8002F028 04105402 */  sllv       $v0, $s4, $s2
    /* 1F82C 8002F02C 0B004104 */  bgez       $v0, .L8002F05C
    /* 1F830 8002F030 00000000 */   nop
    /* 1F834 8002F034 07002012 */  beqz       $s1, .L8002F054
    /* 1F838 8002F038 21200002 */   addu      $a0, $s0, $zero
    /* 1F83C 8002F03C 4A49010C */  jal        func_80052528
    /* 1F840 8002F040 21200002 */   addu      $a0, $s0, $zero
    /* 1F844 8002F044 4CC6000C */  jal        func_80031930
    /* 1F848 8002F048 21200002 */   addu      $a0, $s0, $zero
    /* 1F84C 8002F04C 18BC0008 */  j          .L8002F060
    /* 1F850 8002F050 01005226 */   addiu     $s2, $s2, 0x1
  .L8002F054:
    /* 1F854 8002F054 EABC000C */  jal        func_8002F3A8
    /* 1F858 8002F058 21286002 */   addu      $a1, $s3, $zero
  .L8002F05C:
    /* 1F85C 8002F05C 01005226 */  addiu      $s2, $s2, 0x1
  .L8002F060:
    /* 1F860 8002F060 1000422A */  slti       $v0, $s2, 0x10
    /* 1F864 8002F064 F0FF4014 */  bnez       $v0, .L8002F028
    /* 1F868 8002F068 0C011026 */   addiu     $s0, $s0, 0x10C
    /* 1F86C 8002F06C 1000E232 */  andi       $v0, $s7, 0x10
  .L8002F070:
    /* 1F870 8002F070 1E004010 */  beqz       $v0, .L8002F0EC
    /* 1F874 8002F074 2000E232 */   andi      $v0, $s7, 0x20
    /* 1F878 8002F078 0A80103C */  lui        $s0, %hi(D_8009CF88)
    /* 1F87C 8002F07C 88CF1026 */  addiu      $s0, $s0, %lo(D_8009CF88)
    /* 1F880 8002F080 0A80143C */  lui        $s4, %hi(D_800987CC)
    /* 1F884 8002F084 CC87948E */  lw         $s4, %lo(D_800987CC)($s4)
    /* 1F888 8002F088 21900000 */  addu       $s2, $zero, $zero
    /* 1F88C 8002F08C 80007132 */  andi       $s1, $s3, 0x80
  .L8002F090:
    /* 1F890 8002F090 04105402 */  sllv       $v0, $s4, $s2
    /* 1F894 8002F094 06004004 */  bltz       $v0, .L8002F0B0
    /* 1F898 8002F098 00000000 */   nop
    /* 1F89C 8002F09C 00000292 */  lbu        $v0, 0x0($s0)
    /* 1F8A0 8002F0A0 00000000 */  nop
    /* 1F8A4 8002F0A4 03004230 */  andi       $v0, $v0, 0x3
    /* 1F8A8 8002F0A8 0B004010 */  beqz       $v0, .L8002F0D8
    /* 1F8AC 8002F0AC 00000000 */   nop
  .L8002F0B0:
    /* 1F8B0 8002F0B0 07002012 */  beqz       $s1, .L8002F0D0
    /* 1F8B4 8002F0B4 21200002 */   addu      $a0, $s0, $zero
    /* 1F8B8 8002F0B8 4A49010C */  jal        func_80052528
    /* 1F8BC 8002F0BC 21200002 */   addu      $a0, $s0, $zero
    /* 1F8C0 8002F0C0 36C6000C */  jal        func_800318D8
    /* 1F8C4 8002F0C4 21200002 */   addu      $a0, $s0, $zero
    /* 1F8C8 8002F0C8 37BC0008 */  j          .L8002F0DC
    /* 1F8CC 8002F0CC 01005226 */   addiu     $s2, $s2, 0x1
  .L8002F0D0:
    /* 1F8D0 8002F0D0 EABC000C */  jal        func_8002F3A8
    /* 1F8D4 8002F0D4 21286002 */   addu      $a1, $s3, $zero
  .L8002F0D8:
    /* 1F8D8 8002F0D8 01005226 */  addiu      $s2, $s2, 0x1
  .L8002F0DC:
    /* 1F8DC 8002F0DC 2000422A */  slti       $v0, $s2, 0x20
    /* 1F8E0 8002F0E0 EBFF4014 */  bnez       $v0, .L8002F090
    /* 1F8E4 8002F0E4 0C011026 */   addiu     $s0, $s0, 0x10C
    /* 1F8E8 8002F0E8 2000E232 */  andi       $v0, $s7, 0x20
  .L8002F0EC:
    /* 1F8EC 8002F0EC 22004010 */  beqz       $v0, .L8002F178
    /* 1F8F0 8002F0F0 4000E232 */   andi      $v0, $s7, 0x40
    /* 1F8F4 8002F0F4 0A80113C */  lui        $s1, %hi(D_800A3B40)
    /* 1F8F8 8002F0F8 403B3126 */  addiu      $s1, $s1, %lo(D_800A3B40)
    /* 1F8FC 8002F0FC 21900000 */  addu       $s2, $zero, $zero
    /* 1F900 8002F100 80007632 */  andi       $s6, $s3, 0x80
    /* 1F904 8002F104 0A80153C */  lui        $s5, %hi(D_80098838)
    /* 1F908 8002F108 3888B526 */  addiu      $s5, $s5, %lo(D_80098838)
  .L8002F10C:
    /* 1F90C 8002F10C 0000B48E */  lw         $s4, 0x0($s5)
    /* 1F910 8002F110 21800000 */  addu       $s0, $zero, $zero
  .L8002F114:
    /* 1F914 8002F114 04101402 */  sllv       $v0, $s4, $s0
    /* 1F918 8002F118 0E004104 */  bgez       $v0, .L8002F154
    /* 1F91C 8002F11C 00000000 */   nop
    /* 1F920 8002F120 02002292 */  lbu        $v0, 0x2($s1)
    /* 1F924 8002F124 00000000 */  nop
    /* 1F928 8002F128 8000422C */  sltiu      $v0, $v0, 0x80
    /* 1F92C 8002F12C 09004014 */  bnez       $v0, .L8002F154
    /* 1F930 8002F130 00000000 */   nop
    /* 1F934 8002F134 0500C012 */  beqz       $s6, .L8002F14C
    /* 1F938 8002F138 21202002 */   addu      $a0, $s1, $zero
    /* 1F93C 8002F13C 62C6000C */  jal        func_80031988
    /* 1F940 8002F140 21202002 */   addu      $a0, $s1, $zero
    /* 1F944 8002F144 56BC0008 */  j          .L8002F158
    /* 1F948 8002F148 01001026 */   addiu     $s0, $s0, 0x1
  .L8002F14C:
    /* 1F94C 8002F14C EABC000C */  jal        func_8002F3A8
    /* 1F950 8002F150 21286002 */   addu      $a1, $s3, $zero
  .L8002F154:
    /* 1F954 8002F154 01001026 */  addiu      $s0, $s0, 0x1
  .L8002F158:
    /* 1F958 8002F158 2000022A */  slti       $v0, $s0, 0x20
    /* 1F95C 8002F15C EDFF4014 */  bnez       $v0, .L8002F114
    /* 1F960 8002F160 48003126 */   addiu     $s1, $s1, 0x48
    /* 1F964 8002F164 01005226 */  addiu      $s2, $s2, 0x1
    /* 1F968 8002F168 0200422A */  slti       $v0, $s2, 0x2
    /* 1F96C 8002F16C E7FF4014 */  bnez       $v0, .L8002F10C
    /* 1F970 8002F170 0400B526 */   addiu     $s5, $s5, 0x4
    /* 1F974 8002F174 4000E232 */  andi       $v0, $s7, 0x40
  .L8002F178:
    /* 1F978 8002F178 22004010 */  beqz       $v0, .L8002F204
    /* 1F97C 8002F17C 8000E232 */   andi      $v0, $s7, 0x80
    /* 1F980 8002F180 0A80113C */  lui        $s1, %hi(D_800A3B40)
    /* 1F984 8002F184 403B3126 */  addiu      $s1, $s1, %lo(D_800A3B40)
    /* 1F988 8002F188 21900000 */  addu       $s2, $zero, $zero
    /* 1F98C 8002F18C 80007632 */  andi       $s6, $s3, 0x80
    /* 1F990 8002F190 0A80153C */  lui        $s5, %hi(D_80098838)
    /* 1F994 8002F194 3888B526 */  addiu      $s5, $s5, %lo(D_80098838)
  .L8002F198:
    /* 1F998 8002F198 0000B48E */  lw         $s4, 0x0($s5)
    /* 1F99C 8002F19C 21800000 */  addu       $s0, $zero, $zero
  .L8002F1A0:
    /* 1F9A0 8002F1A0 04101402 */  sllv       $v0, $s4, $s0
    /* 1F9A4 8002F1A4 0E004104 */  bgez       $v0, .L8002F1E0
    /* 1F9A8 8002F1A8 00000000 */   nop
    /* 1F9AC 8002F1AC 02002292 */  lbu        $v0, 0x2($s1)
    /* 1F9B0 8002F1B0 00000000 */  nop
    /* 1F9B4 8002F1B4 8000422C */  sltiu      $v0, $v0, 0x80
    /* 1F9B8 8002F1B8 09004010 */  beqz       $v0, .L8002F1E0
    /* 1F9BC 8002F1BC 00000000 */   nop
    /* 1F9C0 8002F1C0 0500C012 */  beqz       $s6, .L8002F1D8
    /* 1F9C4 8002F1C4 21202002 */   addu      $a0, $s1, $zero
    /* 1F9C8 8002F1C8 62C6000C */  jal        func_80031988
    /* 1F9CC 8002F1CC 21202002 */   addu      $a0, $s1, $zero
    /* 1F9D0 8002F1D0 79BC0008 */  j          .L8002F1E4
    /* 1F9D4 8002F1D4 01001026 */   addiu     $s0, $s0, 0x1
  .L8002F1D8:
    /* 1F9D8 8002F1D8 EABC000C */  jal        func_8002F3A8
    /* 1F9DC 8002F1DC 21286002 */   addu      $a1, $s3, $zero
  .L8002F1E0:
    /* 1F9E0 8002F1E0 01001026 */  addiu      $s0, $s0, 0x1
  .L8002F1E4:
    /* 1F9E4 8002F1E4 2000022A */  slti       $v0, $s0, 0x20
    /* 1F9E8 8002F1E8 EDFF4014 */  bnez       $v0, .L8002F1A0
    /* 1F9EC 8002F1EC 48003126 */   addiu     $s1, $s1, 0x48
    /* 1F9F0 8002F1F0 01005226 */  addiu      $s2, $s2, 0x1
    /* 1F9F4 8002F1F4 0200422A */  slti       $v0, $s2, 0x2
    /* 1F9F8 8002F1F8 E7FF4014 */  bnez       $v0, .L8002F198
    /* 1F9FC 8002F1FC 0400B526 */   addiu     $s5, $s5, 0x4
    /* 1FA00 8002F200 8000E232 */  andi       $v0, $s7, 0x80
  .L8002F204:
    /* 1FA04 8002F204 17004010 */  beqz       $v0, .L8002F264
    /* 1FA08 8002F208 0001E232 */   andi      $v0, $s7, 0x100
    /* 1FA0C 8002F20C 0A80103C */  lui        $s0, %hi(D_800A2D08)
    /* 1FA10 8002F210 082D1026 */  addiu      $s0, $s0, %lo(D_800A2D08)
    /* 1FA14 8002F214 0A80143C */  lui        $s4, %hi(D_800987EC)
    /* 1FA18 8002F218 EC87948E */  lw         $s4, %lo(D_800987EC)($s4)
    /* 1FA1C 8002F21C 21900000 */  addu       $s2, $zero, $zero
    /* 1FA20 8002F220 80007132 */  andi       $s1, $s3, 0x80
  .L8002F224:
    /* 1FA24 8002F224 04105402 */  sllv       $v0, $s4, $s2
    /* 1FA28 8002F228 09004104 */  bgez       $v0, .L8002F250
    /* 1FA2C 8002F22C 00000000 */   nop
    /* 1FA30 8002F230 05002012 */  beqz       $s1, .L8002F248
    /* 1FA34 8002F234 21200002 */   addu      $a0, $s0, $zero
    /* 1FA38 8002F238 7DC6000C */  jal        Close_EVE_WORK
    /* 1FA3C 8002F23C 21200002 */   addu      $a0, $s0, $zero
    /* 1FA40 8002F240 95BC0008 */  j          .L8002F254
    /* 1FA44 8002F244 01005226 */   addiu     $s2, $s2, 0x1
  .L8002F248:
    /* 1FA48 8002F248 EABC000C */  jal        func_8002F3A8
    /* 1FA4C 8002F24C 21286002 */   addu      $a1, $s3, $zero
  .L8002F250:
    /* 1FA50 8002F250 01005226 */  addiu      $s2, $s2, 0x1
  .L8002F254:
    /* 1FA54 8002F254 1000422A */  slti       $v0, $s2, 0x10
    /* 1FA58 8002F258 F2FF4014 */  bnez       $v0, .L8002F224
    /* 1FA5C 8002F25C 24001026 */   addiu     $s0, $s0, 0x24
    /* 1FA60 8002F260 0001E232 */  andi       $v0, $s7, 0x100
  .L8002F264:
    /* 1FA64 8002F264 19004010 */  beqz       $v0, .L8002F2CC
    /* 1FA68 8002F268 0002E232 */   andi      $v0, $s7, 0x200
    /* 1FA6C 8002F26C 0C80103C */  lui        $s0, %hi(D_800BF118)
    /* 1FA70 8002F270 18F11026 */  addiu      $s0, $s0, %lo(D_800BF118)
    /* 1FA74 8002F274 0A80143C */  lui        $s4, %hi(D_800989CC)
    /* 1FA78 8002F278 CC89948E */  lw         $s4, %lo(D_800989CC)($s4)
    /* 1FA7C 8002F27C 21900000 */  addu       $s2, $zero, $zero
    /* 1FA80 8002F280 80007132 */  andi       $s1, $s3, 0x80
  .L8002F284:
    /* 1FA84 8002F284 04105402 */  sllv       $v0, $s4, $s2
    /* 1FA88 8002F288 0B004104 */  bgez       $v0, .L8002F2B8
    /* 1FA8C 8002F28C 00000000 */   nop
    /* 1FA90 8002F290 07002012 */  beqz       $s1, .L8002F2B0
    /* 1FA94 8002F294 21200002 */   addu      $a0, $s0, $zero
    /* 1FA98 8002F298 4A49010C */  jal        func_80052528
    /* 1FA9C 8002F29C 21200002 */   addu      $a0, $s0, $zero
    /* 1FAA0 8002F2A0 93C6000C */  jal        func_80031A4C
    /* 1FAA4 8002F2A4 21200002 */   addu      $a0, $s0, $zero
    /* 1FAA8 8002F2A8 AFBC0008 */  j          .L8002F2BC
    /* 1FAAC 8002F2AC 01005226 */   addiu     $s2, $s2, 0x1
  .L8002F2B0:
    /* 1FAB0 8002F2B0 EABC000C */  jal        func_8002F3A8
    /* 1FAB4 8002F2B4 21286002 */   addu      $a1, $s3, $zero
  .L8002F2B8:
    /* 1FAB8 8002F2B8 01005226 */  addiu      $s2, $s2, 0x1
  .L8002F2BC:
    /* 1FABC 8002F2BC 2000422A */  slti       $v0, $s2, 0x20
    /* 1FAC0 8002F2C0 F0FF4014 */  bnez       $v0, .L8002F284
    /* 1FAC4 8002F2C4 50001026 */   addiu     $s0, $s0, 0x50
    /* 1FAC8 8002F2C8 0002E232 */  andi       $v0, $s7, 0x200
  .L8002F2CC:
    /* 1FACC 8002F2CC 2A004010 */  beqz       $v0, .L8002F378
    /* 1FAD0 8002F2D0 21900000 */   addu      $s2, $zero, $zero
    /* 1FAD4 8002F2D4 0C80033C */  lui        $v1, %hi(D_800BBA90)
    /* 1FAD8 8002F2D8 90BA6324 */  addiu      $v1, $v1, %lo(D_800BBA90)
    /* 1FADC 8002F2DC 80006932 */  andi       $t1, $s3, 0x80
    /* 1FAE0 8002F2E0 01006832 */  andi       $t0, $s3, 0x1
    /* 1FAE4 8002F2E4 04006732 */  andi       $a3, $s3, 0x4
    /* 1FAE8 8002F2E8 02006632 */  andi       $a2, $s3, 0x2
    /* 1FAEC 8002F2EC 08006532 */  andi       $a1, $s3, 0x8
  .L8002F2F0:
    /* 1FAF0 8002F2F0 00006490 */  lbu        $a0, 0x0($v1)
    /* 1FAF4 8002F2F4 00000000 */  nop
    /* 1FAF8 8002F2F8 03008230 */  andi       $v0, $a0, 0x3
    /* 1FAFC 8002F2FC 1A004010 */  beqz       $v0, .L8002F368
    /* 1FB00 8002F300 00000000 */   nop
    /* 1FB04 8002F304 03002011 */  beqz       $t1, .L8002F314
    /* 1FB08 8002F308 00000000 */   nop
    /* 1FB0C 8002F30C DABC0008 */  j          .L8002F368
    /* 1FB10 8002F310 000060A0 */   sb        $zero, 0x0($v1)
  .L8002F314:
    /* 1FB14 8002F314 02000011 */  beqz       $t0, .L8002F320
    /* 1FB18 8002F318 01008238 */   xori      $v0, $a0, 0x1
    /* 1FB1C 8002F31C 000062A0 */  sb         $v0, 0x0($v1)
  .L8002F320:
    /* 1FB20 8002F320 0500E010 */  beqz       $a3, .L8002F338
    /* 1FB24 8002F324 00000000 */   nop
    /* 1FB28 8002F328 00006290 */  lbu        $v0, 0x0($v1)
    /* 1FB2C 8002F32C 00000000 */  nop
    /* 1FB30 8002F330 02004238 */  xori       $v0, $v0, 0x2
    /* 1FB34 8002F334 000062A0 */  sb         $v0, 0x0($v1)
  .L8002F338:
    /* 1FB38 8002F338 0500C010 */  beqz       $a2, .L8002F350
    /* 1FB3C 8002F33C 00000000 */   nop
    /* 1FB40 8002F340 00006290 */  lbu        $v0, 0x0($v1)
    /* 1FB44 8002F344 00000000 */  nop
    /* 1FB48 8002F348 01004234 */  ori        $v0, $v0, 0x1
    /* 1FB4C 8002F34C 000062A0 */  sb         $v0, 0x0($v1)
  .L8002F350:
    /* 1FB50 8002F350 0500A010 */  beqz       $a1, .L8002F368
    /* 1FB54 8002F354 00000000 */   nop
    /* 1FB58 8002F358 00006290 */  lbu        $v0, 0x0($v1)
    /* 1FB5C 8002F35C 00000000 */  nop
    /* 1FB60 8002F360 02004234 */  ori        $v0, $v0, 0x2
    /* 1FB64 8002F364 000062A0 */  sb         $v0, 0x0($v1)
  .L8002F368:
    /* 1FB68 8002F368 01005226 */  addiu      $s2, $s2, 0x1
    /* 1FB6C 8002F36C 0B00422A */  slti       $v0, $s2, 0xB
    /* 1FB70 8002F370 DFFF4014 */  bnez       $v0, .L8002F2F0
    /* 1FB74 8002F374 38006324 */   addiu     $v1, $v1, 0x38
  .L8002F378:
    /* 1FB78 8002F378 3000BF8F */  lw         $ra, 0x30($sp)
    /* 1FB7C 8002F37C 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 1FB80 8002F380 2800B68F */  lw         $s6, 0x28($sp)
    /* 1FB84 8002F384 2400B58F */  lw         $s5, 0x24($sp)
    /* 1FB88 8002F388 2000B48F */  lw         $s4, 0x20($sp)
    /* 1FB8C 8002F38C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1FB90 8002F390 1800B28F */  lw         $s2, 0x18($sp)
    /* 1FB94 8002F394 1400B18F */  lw         $s1, 0x14($sp)
    /* 1FB98 8002F398 1000B08F */  lw         $s0, 0x10($sp)
    /* 1FB9C 8002F39C 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 1FBA0 8002F3A0 0800E003 */  jr         $ra
    /* 1FBA4 8002F3A4 00000000 */   nop
.size Obj_work_flag_change, . - Obj_work_flag_change
