.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003E860
    /* 2F060 8003E860 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2F064 8003E864 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2F068 8003E868 21808000 */  addu       $s0, $a0, $zero
    /* 2F06C 8003E86C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2F070 8003E870 0A000392 */  lbu        $v1, 0xA($s0)
    /* 2F074 8003E874 00000000 */  nop
    /* 2F078 8003E878 0600622C */  sltiu      $v0, $v1, 0x6
    /* 2F07C 8003E87C 9D004010 */  beqz       $v0, .L8003EAF4
    /* 2F080 8003E880 80100300 */   sll       $v0, $v1, 2
    /* 2F084 8003E884 0180013C */  lui        $at, %hi(jtbl_80010C1C)
    /* 2F088 8003E888 21082200 */  addu       $at, $at, $v0
    /* 2F08C 8003E88C 1C0C228C */  lw         $v0, %lo(jtbl_80010C1C)($at)
    /* 2F090 8003E890 00000000 */  nop
    /* 2F094 8003E894 08004000 */  jr         $v0
    /* 2F098 8003E898 00000000 */   nop
  glabel .L8003E89C
    /* 2F09C 8003E89C 21200002 */  addu       $a0, $s0, $zero
    /* 2F0A0 8003E8A0 22000524 */  addiu      $a1, $zero, 0x22
    /* 2F0A4 8003E8A4 0A000692 */  lbu        $a2, 0xA($s0)
    /* 2F0A8 8003E8A8 01000724 */  addiu      $a3, $zero, 0x1
    /* 2F0AC 8003E8AC 2B300600 */  sltu       $a2, $zero, $a2
    /* 2F0B0 8003E8B0 23300600 */  negu       $a2, $a2
    /* 2F0B4 8003E8B4 7707010C */  jal        func_80041DDC
    /* 2F0B8 8003E8B8 0600C630 */   andi      $a2, $a2, 0x6
    /* 2F0BC 8003E8BC 21200002 */  addu       $a0, $s0, $zero
    /* 2F0C0 8003E8C0 00FE0224 */  addiu      $v0, $zero, -0x200
    /* 2F0C4 8003E8C4 E808010C */  jal        Pl00_shot_enable_off
    /* 2F0C8 8003E8C8 440002A6 */   sh        $v0, 0x44($s0)
    /* 2F0CC 8003E8CC A0FE0224 */  addiu      $v0, $zero, -0x160
    /* 2F0D0 8003E8D0 44000586 */  lh         $a1, 0x44($s0)
    /* 2F0D4 8003E8D4 21200002 */  addu       $a0, $s0, $zero
    /* 2F0D8 8003E8D8 460002A6 */  sh         $v0, 0x46($s0)
    /* 2F0DC 8003E8DC 46000686 */  lh         $a2, 0x46($s0)
    /* 2F0E0 8003E8E0 01000324 */  addiu      $v1, $zero, 0x1
    /* 2F0E4 8003E8E4 480000A6 */  sh         $zero, 0x48($s0)
    /* 2F0E8 8003E8E8 48000786 */  lh         $a3, 0x48($s0)
    /* 2F0EC 8003E8EC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2F0F0 8003E8F0 740003A2 */  sb         $v1, 0x74($s0)
    /* 2F0F4 8003E8F4 100102A2 */  sb         $v0, 0x110($s0)
    /* 2F0F8 8003E8F8 680103A2 */  sb         $v1, 0x168($s0)
    /* 2F0FC 8003E8FC 690103A2 */  sb         $v1, 0x169($s0)
    /* 2F100 8003E900 A407010C */  jal        func_80041E90
    /* 2F104 8003E904 4A0400A2 */   sb        $zero, 0x44A($s0)
    /* 2F108 8003E908 BC6C000C */  jal        func_8001B2F0
    /* 2F10C 8003E90C 16000424 */   addiu     $a0, $zero, 0x16
    /* 2F110 8003E910 98000424 */  addiu      $a0, $zero, 0x98
    /* 2F114 8003E914 21280000 */  addu       $a1, $zero, $zero
    /* 2F118 8003E918 0268000C */  jal        Sound_call
    /* 2F11C 8003E91C 21300000 */   addu      $a2, $zero, $zero
    /* 2F120 8003E920 7AE5000C */  jal        func_800395E8
    /* 2F124 8003E924 00000000 */   nop
    /* 2F128 8003E928 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2F12C 8003E92C 89FA0008 */  j          .L8003EA24
    /* 2F130 8003E930 080100A6 */   sh        $zero, 0x108($s0)
  glabel .L8003E934
    /* 2F134 8003E934 74000282 */  lb         $v0, 0x74($s0)
    /* 2F138 8003E938 00000000 */  nop
    /* 2F13C 8003E93C 08004014 */  bnez       $v0, .L8003E960
    /* 2F140 8003E940 01000224 */   addiu     $v0, $zero, 0x1
    /* 2F144 8003E944 21200002 */  addu       $a0, $s0, $zero
    /* 2F148 8003E948 23000524 */  addiu      $a1, $zero, 0x23
    /* 2F14C 8003E94C 21300000 */  addu       $a2, $zero, $zero
    /* 2F150 8003E950 7707010C */  jal        func_80041DDC
    /* 2F154 8003E954 01000724 */   addiu     $a3, $zero, 0x1
    /* 2F158 8003E958 85FA0008 */  j          .L8003EA14
    /* 2F15C 8003E95C 99000424 */   addiu     $a0, $zero, 0x99
  .L8003E960:
    /* 2F160 8003E960 A6000382 */  lb         $v1, 0xA6($s0)
    /* 2F164 8003E964 00000000 */  nop
    /* 2F168 8003E968 32006214 */  bne        $v1, $v0, .L8003EA34
    /* 2F16C 8003E96C 21200002 */   addu      $a0, $s0, $zero
    /* 2F170 8003E970 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2F174 8003E974 00000000 */  nop
    /* 2F178 8003E978 02004224 */  addiu      $v0, $v0, 0x2
    /* 2F17C 8003E97C 8DFA0008 */  j          .L8003EA34
    /* 2F180 8003E980 0A0002A2 */   sb        $v0, 0xA($s0)
  glabel .L8003E984
    /* 2F184 8003E984 A7000382 */  lb         $v1, 0xA7($s0)
    /* 2F188 8003E988 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2F18C 8003E98C 59006214 */  bne        $v1, $v0, .L8003EAF4
    /* 2F190 8003E990 00000000 */   nop
    /* 2F194 8003E994 6E000286 */  lh         $v0, 0x6E($s0)
    /* 2F198 8003E998 00000000 */  nop
    /* 2F19C 8003E99C 52004004 */  bltz       $v0, .L8003EAE8
    /* 2F1A0 8003E9A0 21200002 */   addu      $a0, $s0, $zero
    /* 2F1A4 8003E9A4 A0FA0008 */  j          .L8003EA80
    /* 2F1A8 8003E9A8 25000524 */   addiu     $a1, $zero, 0x25
  glabel .L8003E9AC
    /* 2F1AC 8003E9AC 74000282 */  lb         $v0, 0x74($s0)
    /* 2F1B0 8003E9B0 00000000 */  nop
    /* 2F1B4 8003E9B4 1F004014 */  bnez       $v0, .L8003EA34
    /* 2F1B8 8003E9B8 21200002 */   addu      $a0, $s0, $zero
    /* 2F1BC 8003E9BC 24000524 */  addiu      $a1, $zero, 0x24
    /* 2F1C0 8003E9C0 21300000 */  addu       $a2, $zero, $zero
    /* 2F1C4 8003E9C4 7707010C */  jal        func_80041DDC
    /* 2F1C8 8003E9C8 01000724 */   addiu     $a3, $zero, 0x1
    /* 2F1CC 8003E9CC 3176010C */  jal        func_8005D8C4
    /* 2F1D0 8003E9D0 08000424 */   addiu     $a0, $zero, 0x8
    /* 2F1D4 8003E9D4 09004010 */  beqz       $v0, .L8003E9FC
    /* 2F1D8 8003E9D8 00000000 */   nop
    /* 2F1DC 8003E9DC 6A010282 */  lb         $v0, 0x16A($s0)
    /* 2F1E0 8003E9E0 00000000 */  nop
    /* 2F1E4 8003E9E4 06004014 */  bnez       $v0, .L8003EA00
    /* 2F1E8 8003E9E8 1E000424 */   addiu     $a0, $zero, 0x1E
    /* 2F1EC 8003E9EC 6E000296 */  lhu        $v0, 0x6E($s0)
    /* 2F1F0 8003E9F0 00000000 */  nop
    /* 2F1F4 8003E9F4 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* 2F1F8 8003E9F8 6E0002A6 */  sh         $v0, 0x6E($s0)
  .L8003E9FC:
    /* 2F1FC 8003E9FC 1E000424 */  addiu      $a0, $zero, 0x1E
  .L8003EA00:
    /* 2F200 8003EA00 00040524 */  addiu      $a1, $zero, 0x400
    /* 2F204 8003EA04 00280624 */  addiu      $a2, $zero, 0x2800
    /* 2F208 8003EA08 3EE6000C */  jal        Swing_Camera2
    /* 2F20C 8003EA0C 14000726 */   addiu     $a3, $s0, 0x14
    /* 2F210 8003EA10 99000424 */  addiu      $a0, $zero, 0x99
  .L8003EA14:
    /* 2F214 8003EA14 21280000 */  addu       $a1, $zero, $zero
    /* 2F218 8003EA18 0268000C */  jal        Sound_call
    /* 2F21C 8003EA1C 21300000 */   addu      $a2, $zero, $zero
    /* 2F220 8003EA20 0A000292 */  lbu        $v0, 0xA($s0)
  .L8003EA24:
    /* 2F224 8003EA24 00000000 */  nop
    /* 2F228 8003EA28 01004224 */  addiu      $v0, $v0, 0x1
    /* 2F22C 8003EA2C BDFA0008 */  j          .L8003EAF4
    /* 2F230 8003EA30 0A0002A2 */   sb        $v0, 0xA($s0)
  .L8003EA34:
    /* 2F234 8003EA34 44008584 */  lh         $a1, 0x44($a0)
    /* 2F238 8003EA38 46008294 */  lhu        $v0, 0x46($a0)
    /* 2F23C 8003EA3C 48008784 */  lh         $a3, 0x48($a0)
    /* 2F240 8003EA40 30004224 */  addiu      $v0, $v0, 0x30
    /* 2F244 8003EA44 00340200 */  sll        $a2, $v0, 16
    /* 2F248 8003EA48 03340600 */  sra        $a2, $a2, 16
    /* 2F24C 8003EA4C A407010C */  jal        func_80041E90
    /* 2F250 8003EA50 460082A4 */   sh        $v0, 0x46($a0)
    /* 2F254 8003EA54 BDFA0008 */  j          .L8003EAF4
    /* 2F258 8003EA58 00000000 */   nop
  glabel .L8003EA5C
    /* 2F25C 8003EA5C A7000382 */  lb         $v1, 0xA7($s0)
    /* 2F260 8003EA60 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2F264 8003EA64 23006214 */  bne        $v1, $v0, .L8003EAF4
    /* 2F268 8003EA68 00000000 */   nop
    /* 2F26C 8003EA6C 6E000286 */  lh         $v0, 0x6E($s0)
    /* 2F270 8003EA70 00000000 */  nop
    /* 2F274 8003EA74 1C004004 */  bltz       $v0, .L8003EAE8
    /* 2F278 8003EA78 21200002 */   addu      $a0, $s0, $zero
    /* 2F27C 8003EA7C 29000524 */  addiu      $a1, $zero, 0x29
  .L8003EA80:
    /* 2F280 8003EA80 21300000 */  addu       $a2, $zero, $zero
    /* 2F284 8003EA84 7707010C */  jal        func_80041DDC
    /* 2F288 8003EA88 01000724 */   addiu     $a3, $zero, 0x1
    /* 2F28C 8003EA8C 56000296 */  lhu        $v0, 0x56($s0)
    /* 2F290 8003EA90 16010396 */  lhu        $v1, 0x116($s0)
    /* 2F294 8003EA94 0980043C */  lui        $a0, %hi(D_80097D9C)
    /* 2F298 8003EA98 9C7D8424 */  addiu      $a0, $a0, %lo(D_80097D9C)
    /* 2F29C 8003EA9C 120100A2 */  sb         $zero, 0x112($s0)
    /* 2F2A0 8003EAA0 160100A6 */  sh         $zero, 0x116($s0)
    /* 2F2A4 8003EAA4 23104300 */  subu       $v0, $v0, $v1
    /* 2F2A8 8003EAA8 8EE6000C */  jal        func_80039A38
    /* 2F2AC 8003EAAC 560002A6 */   sh        $v0, 0x56($s0)
    /* 2F2B0 8003EAB0 4A75010C */  jal        func_8005D528
    /* 2F2B4 8003EAB4 00000000 */   nop
    /* 2F2B8 8003EAB8 08000224 */  addiu      $v0, $zero, 0x8
    /* 2F2BC 8003EABC 090002A2 */  sb         $v0, 0x9($s0)
    /* 2F2C0 8003EAC0 06000224 */  addiu      $v0, $zero, 0x6
    /* 2F2C4 8003EAC4 0A0002A2 */  sb         $v0, 0xA($s0)
    /* 2F2C8 8003EAC8 01000224 */  addiu      $v0, $zero, 0x1
    /* 2F2CC 8003EACC 100102A2 */  sb         $v0, 0x110($s0)
    /* 2F2D0 8003EAD0 30000224 */  addiu      $v0, $zero, 0x30
    /* 2F2D4 8003EAD4 710000A2 */  sb         $zero, 0x71($s0)
    /* 2F2D8 8003EAD8 680100A2 */  sb         $zero, 0x168($s0)
    /* 2F2DC 8003EADC 690100A2 */  sb         $zero, 0x169($s0)
    /* 2F2E0 8003EAE0 BDFA0008 */  j          .L8003EAF4
    /* 2F2E4 8003EAE4 110102A2 */   sb        $v0, 0x111($s0)
  .L8003EAE8:
    /* 2F2E8 8003EAE8 02000224 */  addiu      $v0, $zero, 0x2
    /* 2F2EC 8003EAEC 080002A2 */  sb         $v0, 0x8($s0)
    /* 2F2F0 8003EAF0 090000A2 */  sb         $zero, 0x9($s0)
  .L8003EAF4:
    /* 2F2F4 8003EAF4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2F2F8 8003EAF8 1000B08F */  lw         $s0, 0x10($sp)
    /* 2F2FC 8003EAFC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2F300 8003EB00 0800E003 */  jr         $ra
    /* 2F304 8003EB04 00000000 */   nop
.size func_8003E860, . - func_8003E860
