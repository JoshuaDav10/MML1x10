.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001AEF0
    /* B6F0 8001AEF0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* B6F4 8001AEF4 1400B1AF */  sw         $s1, 0x14($sp)
    /* B6F8 8001AEF8 0B80113C */  lui        $s1, %hi(D_800AD140)
    /* B6FC 8001AEFC 40D13126 */  addiu      $s1, $s1, %lo(D_800AD140)
    /* B700 8001AF00 0A80043C */  lui        $a0, %hi(D_80098788)
    /* B704 8001AF04 88878490 */  lbu        $a0, %lo(D_80098788)($a0)
    /* B708 8001AF08 0C002526 */  addiu      $a1, $s1, 0xC
    /* B70C 8001AF0C 2400BFAF */  sw         $ra, 0x24($sp)
    /* B710 8001AF10 2000B4AF */  sw         $s4, 0x20($sp)
    /* B714 8001AF14 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* B718 8001AF18 1800B2AF */  sw         $s2, 0x18($sp)
    /* B71C 8001AF1C 1000B0AF */  sw         $s0, 0x10($sp)
    /* B720 8001AF20 9B6B000C */  jal        func_8001AE6C
    /* B724 8001AF24 03008430 */   andi      $a0, $a0, 0x3
    /* B728 8001AF28 07004014 */  bnez       $v0, .L8001AF48
    /* B72C 8001AF2C 00000000 */   nop
    /* B730 8001AF30 0A80023C */  lui        $v0, %hi(D_80098788)
    /* B734 8001AF34 88874290 */  lbu        $v0, %lo(D_80098788)($v0)
    /* B738 8001AF38 00000000 */  nop
    /* B73C 8001AF3C FC004230 */  andi       $v0, $v0, 0xFC
    /* B740 8001AF40 0A80013C */  lui        $at, %hi(D_80098788)
    /* B744 8001AF44 888722A0 */  sb         $v0, %lo(D_80098788)($at)
  .L8001AF48:
    /* B748 8001AF48 0A80043C */  lui        $a0, %hi(D_80098788)
    /* B74C 8001AF4C 88878490 */  lbu        $a0, %lo(D_80098788)($a0)
    /* B750 8001AF50 10002526 */  addiu      $a1, $s1, 0x10
    /* B754 8001AF54 0C008430 */  andi       $a0, $a0, 0xC
    /* B758 8001AF58 9B6B000C */  jal        func_8001AE6C
    /* B75C 8001AF5C 82200400 */   srl       $a0, $a0, 2
    /* B760 8001AF60 07004014 */  bnez       $v0, .L8001AF80
    /* B764 8001AF64 00000000 */   nop
    /* B768 8001AF68 0A80023C */  lui        $v0, %hi(D_80098788)
    /* B76C 8001AF6C 88874290 */  lbu        $v0, %lo(D_80098788)($v0)
    /* B770 8001AF70 00000000 */  nop
    /* B774 8001AF74 F3004230 */  andi       $v0, $v0, 0xF3
    /* B778 8001AF78 0A80013C */  lui        $at, %hi(D_80098788)
    /* B77C 8001AF7C 888722A0 */  sb         $v0, %lo(D_80098788)($at)
  .L8001AF80:
    /* B780 8001AF80 0A80043C */  lui        $a0, %hi(D_80098788)
    /* B784 8001AF84 88878490 */  lbu        $a0, %lo(D_80098788)($a0)
    /* B788 8001AF88 12002526 */  addiu      $a1, $s1, 0x12
    /* B78C 8001AF8C 30008430 */  andi       $a0, $a0, 0x30
    /* B790 8001AF90 9B6B000C */  jal        func_8001AE6C
    /* B794 8001AF94 02210400 */   srl       $a0, $a0, 4
    /* B798 8001AF98 07004014 */  bnez       $v0, .L8001AFB8
    /* B79C 8001AF9C 0E002526 */   addiu     $a1, $s1, 0xE
    /* B7A0 8001AFA0 0A80023C */  lui        $v0, %hi(D_80098788)
    /* B7A4 8001AFA4 88874290 */  lbu        $v0, %lo(D_80098788)($v0)
    /* B7A8 8001AFA8 00000000 */  nop
    /* B7AC 8001AFAC CF004230 */  andi       $v0, $v0, 0xCF
    /* B7B0 8001AFB0 0A80013C */  lui        $at, %hi(D_80098788)
    /* B7B4 8001AFB4 888722A0 */  sb         $v0, %lo(D_80098788)($at)
  .L8001AFB8:
    /* B7B8 8001AFB8 0A80043C */  lui        $a0, %hi(D_80098788)
    /* B7BC 8001AFBC 88878490 */  lbu        $a0, %lo(D_80098788)($a0)
    /* B7C0 8001AFC0 0A80023C */  lui        $v0, %hi(D_80098958)
    /* B7C4 8001AFC4 5889428C */  lw         $v0, %lo(D_80098958)($v0)
    /* B7C8 8001AFC8 00000000 */  nop
    /* B7CC 8001AFCC 00044234 */  ori        $v0, $v0, 0x400
    /* B7D0 8001AFD0 0A80013C */  lui        $at, %hi(D_80098958)
    /* B7D4 8001AFD4 588922AC */  sw         $v0, %lo(D_80098958)($at)
    /* B7D8 8001AFD8 9B6B000C */  jal        func_8001AE6C
    /* B7DC 8001AFDC 82210400 */   srl       $a0, $a0, 6
    /* B7E0 8001AFE0 10004014 */  bnez       $v0, .L8001B024
    /* B7E4 8001AFE4 00000000 */   nop
    /* B7E8 8001AFE8 0A80023C */  lui        $v0, %hi(D_80098788)
    /* B7EC 8001AFEC 88874290 */  lbu        $v0, %lo(D_80098788)($v0)
    /* B7F0 8001AFF0 00000000 */  nop
    /* B7F4 8001AFF4 40004230 */  andi       $v0, $v0, 0x40
    /* B7F8 8001AFF8 04004010 */  beqz       $v0, .L8001B00C
    /* B7FC 8001AFFC 21200000 */   addu      $a0, $zero, $zero
    /* B800 8001B000 01000524 */  addiu      $a1, $zero, 0x1
    /* B804 8001B004 2575000C */  jal        func_8001D494
    /* B808 8001B008 21300000 */   addu      $a2, $zero, $zero
  .L8001B00C:
    /* B80C 8001B00C 0A80023C */  lui        $v0, %hi(D_80098788)
    /* B810 8001B010 88874290 */  lbu        $v0, %lo(D_80098788)($v0)
    /* B814 8001B014 00000000 */  nop
    /* B818 8001B018 3F004230 */  andi       $v0, $v0, 0x3F
    /* B81C 8001B01C 0A80013C */  lui        $at, %hi(D_80098788)
    /* B820 8001B020 888722A0 */  sb         $v0, %lo(D_80098788)($at)
  .L8001B024:
    /* B824 8001B024 04002286 */  lh         $v0, 0x4($s1)
    /* B828 8001B028 0C002386 */  lh         $v1, 0xC($s1)
    /* B82C 8001B02C 00000000 */  nop
    /* B830 8001B030 18004300 */  mult       $v0, $v1
    /* B834 8001B034 12100000 */  mflo       $v0
    /* B838 8001B038 0281103C */  lui        $s0, (0x81020409 >> 16)
    /* B83C 8001B03C 09041036 */  ori        $s0, $s0, (0x81020409 & 0xFFFF)
    /* B840 8001B040 18005000 */  mult       $v0, $s0
    /* B844 8001B044 10400000 */  mfhi       $t0
    /* B848 8001B048 21200201 */  addu       $a0, $t0, $v0
    /* B84C 8001B04C 83210400 */  sra        $a0, $a0, 6
    /* B850 8001B050 C3170200 */  sra        $v0, $v0, 31
    /* B854 8001B054 23208200 */  subu       $a0, $a0, $v0
    /* B858 8001B058 00240400 */  sll        $a0, $a0, 16
    /* B85C 8001B05C 03240400 */  sra        $a0, $a0, 16
    /* B860 8001B060 2DBA010C */  jal        SsSetMVol
    /* B864 8001B064 21288000 */   addu      $a1, $a0, $zero
    /* B868 8001B068 02002296 */  lhu        $v0, 0x2($s1)
    /* B86C 8001B06C 00000000 */  nop
    /* B870 8001B070 00804230 */  andi       $v0, $v0, 0x8000
    /* B874 8001B074 23004014 */  bnez       $v0, .L8001B104
    /* B878 8001B078 00000000 */   nop
    /* B87C 8001B07C 06002286 */  lh         $v0, 0x6($s1)
    /* B880 8001B080 0E002386 */  lh         $v1, 0xE($s1)
    /* B884 8001B084 00000000 */  nop
    /* B888 8001B088 18004300 */  mult       $v0, $v1
    /* B88C 8001B08C 12100000 */  mflo       $v0
    /* B890 8001B090 00000000 */  nop
    /* B894 8001B094 00000000 */  nop
    /* B898 8001B098 18005000 */  mult       $v0, $s0
    /* B89C 8001B09C 21200000 */  addu       $a0, $zero, $zero
    /* B8A0 8001B0A0 10400000 */  mfhi       $t0
    /* B8A4 8001B0A4 21280201 */  addu       $a1, $t0, $v0
    /* B8A8 8001B0A8 83290500 */  sra        $a1, $a1, 6
    /* B8AC 8001B0AC C3170200 */  sra        $v0, $v0, 31
    /* B8B0 8001B0B0 2328A200 */  subu       $a1, $a1, $v0
    /* B8B4 8001B0B4 002C0500 */  sll        $a1, $a1, 16
    /* B8B8 8001B0B8 032C0500 */  sra        $a1, $a1, 16
    /* B8BC 8001B0BC 5AC0010C */  jal        SsSetSerialVol
    /* B8C0 8001B0C0 2130A000 */   addu      $a2, $a1, $zero
    /* B8C4 8001B0C4 0C80023C */  lui        $v0, %hi(Game_work + 0x58)
    /* B8C8 8001B0C8 681B4280 */  lb         $v0, %lo(Game_work + 0x58)($v0)
    /* B8CC 8001B0CC 00000000 */  nop
    /* B8D0 8001B0D0 06004010 */  beqz       $v0, .L8001B0EC
    /* B8D4 8001B0D4 7F000224 */   addiu     $v0, $zero, 0x7F
    /* B8D8 8001B0D8 140022A2 */  sb         $v0, 0x14($s1)
    /* B8DC 8001B0DC 150022A2 */  sb         $v0, 0x15($s1)
    /* B8E0 8001B0E0 160022A2 */  sb         $v0, 0x16($s1)
    /* B8E4 8001B0E4 3F6C0008 */  j          .L8001B0FC
    /* B8E8 8001B0E8 170022A2 */   sb        $v0, 0x17($s1)
  .L8001B0EC:
    /* B8EC 8001B0EC 140022A2 */  sb         $v0, 0x14($s1)
    /* B8F0 8001B0F0 150020A2 */  sb         $zero, 0x15($s1)
    /* B8F4 8001B0F4 160022A2 */  sb         $v0, 0x16($s1)
    /* B8F8 8001B0F8 170020A2 */  sb         $zero, 0x17($s1)
  .L8001B0FC:
    /* B8FC 8001B0FC 79DF010C */  jal        CdMix
    /* B900 8001B100 14002426 */   addiu     $a0, $s1, 0x14
  .L8001B104:
    /* B904 8001B104 0C80023C */  lui        $v0, %hi(Game_work + 0x58)
    /* B908 8001B108 681B4280 */  lb         $v0, %lo(Game_work + 0x58)($v0)
    /* B90C 8001B10C 00000000 */  nop
    /* B910 8001B110 05004010 */  beqz       $v0, .L8001B128
    /* B914 8001B114 00000000 */   nop
    /* B918 8001B118 A9D6010C */  jal        func_80075AA4
    /* B91C 8001B11C 00000000 */   nop
    /* B920 8001B120 4C6C0008 */  j          .L8001B130
    /* B924 8001B124 00000000 */   nop
  .L8001B128:
    /* B928 8001B128 AED6010C */  jal        func_80075AB8
    /* B92C 8001B12C 00000000 */   nop
  .L8001B130:
    /* B930 8001B130 0A80133C */  lui        $s3, %hi(D_80098AF8)
    /* B934 8001B134 F88A7326 */  addiu      $s3, $s3, %lo(D_80098AF8)
    /* B938 8001B138 21900000 */  addu       $s2, $zero, $zero
    /* B93C 8001B13C FFFF1424 */  addiu      $s4, $zero, -0x1
    /* B940 8001B140 0A80103C */  lui        $s0, %hi(D_80098AFC)
    /* B944 8001B144 FC8A1026 */  addiu      $s0, $s0, %lo(D_80098AFC)
  .L8001B148:
    /* B948 8001B148 00006486 */  lh         $a0, 0x0($s3)
    /* B94C 8001B14C 00000000 */  nop
    /* B950 8001B150 1E009410 */  beq        $a0, $s4, .L8001B1CC
    /* B954 8001B154 00000000 */   nop
    /* B958 8001B158 FEFF0582 */  lb         $a1, -0x2($s0)
    /* B95C 8001B15C 00000000 */  nop
    /* B960 8001B160 1A00B410 */  beq        $a1, $s4, .L8001B1CC
    /* B964 8001B164 00000000 */   nop
    /* B968 8001B168 0A002386 */  lh         $v1, 0xA($s1)
    /* B96C 8001B16C 12002286 */  lh         $v0, 0x12($s1)
    /* B970 8001B170 00000000 */  nop
    /* B974 8001B174 18006200 */  mult       $v1, $v0
    /* B978 8001B178 12180000 */  mflo       $v1
    /* B97C 8001B17C 0281023C */  lui        $v0, (0x81020409 >> 16)
    /* B980 8001B180 09044234 */  ori        $v0, $v0, (0x81020409 & 0xFFFF)
    /* B984 8001B184 18006200 */  mult       $v1, $v0
    /* B988 8001B188 10400000 */  mfhi       $t0
    /* B98C 8001B18C 21100301 */  addu       $v0, $t0, $v1
    /* B990 8001B190 83110200 */  sra        $v0, $v0, 6
    /* B994 8001B194 C31F0300 */  sra        $v1, $v1, 31
    /* B998 8001B198 0700A014 */  bnez       $a1, .L8001B1B8
    /* B99C 8001B19C 23104300 */   subu      $v0, $v0, $v1
    /* B9A0 8001B1A0 002C0200 */  sll        $a1, $v0, 16
    /* B9A4 8001B1A4 032C0500 */  sra        $a1, $a1, 16
    /* B9A8 8001B1A8 8DC1010C */  jal        func_80070634
    /* B9AC 8001B1AC 2130A000 */   addu      $a2, $a1, $zero
    /* B9B0 8001B1B0 746C0008 */  j          .L8001B1D0
    /* B9B4 8001B1B4 08001026 */   addiu     $s0, $s0, 0x8
  .L8001B1B8:
    /* B9B8 8001B1B8 00000592 */  lbu        $a1, 0x0($s0)
    /* B9BC 8001B1BC 00340200 */  sll        $a2, $v0, 16
    /* B9C0 8001B1C0 03340600 */  sra        $a2, $a2, 16
    /* B9C4 8001B1C4 A5C1010C */  jal        func_80070694
    /* B9C8 8001B1C8 2138C000 */   addu      $a3, $a2, $zero
  .L8001B1CC:
    /* B9CC 8001B1CC 08001026 */  addiu      $s0, $s0, 0x8
  .L8001B1D0:
    /* B9D0 8001B1D0 01005226 */  addiu      $s2, $s2, 0x1
    /* B9D4 8001B1D4 0400422A */  slti       $v0, $s2, 0x4
    /* B9D8 8001B1D8 DBFF4014 */  bnez       $v0, .L8001B148
    /* B9DC 8001B1DC 08007326 */   addiu     $s3, $s3, 0x8
    /* B9E0 8001B1E0 FFFB0424 */  addiu      $a0, $zero, -0x401
    /* B9E4 8001B1E4 0A80023C */  lui        $v0, %hi(D_80098958)
    /* B9E8 8001B1E8 5889428C */  lw         $v0, %lo(D_80098958)($v0)
    /* B9EC 8001B1EC 18002582 */  lb         $a1, 0x18($s1)
    /* B9F0 8001B1F0 19002382 */  lb         $v1, 0x19($s1)
    /* B9F4 8001B1F4 24104400 */  and        $v0, $v0, $a0
    /* B9F8 8001B1F8 0A80013C */  lui        $at, %hi(D_80098958)
    /* B9FC 8001B1FC 588922AC */  sw         $v0, %lo(D_80098958)($at)
    /* BA00 8001B200 0600A310 */  beq        $a1, $v1, .L8001B21C
    /* BA04 8001B204 00000000 */   nop
    /* BA08 8001B208 5DC2010C */  jal        func_80070974
    /* BA0C 8001B20C 21200000 */   addu      $a0, $zero, $zero
    /* BA10 8001B210 18002492 */  lbu        $a0, 0x18($s1)
    /* BA14 8001B214 B2D6010C */  jal        SsSetReservedVoice
    /* BA18 8001B218 00000000 */   nop
  .L8001B21C:
    /* BA1C 8001B21C 18002292 */  lbu        $v0, 0x18($s1)
    /* BA20 8001B220 1A002392 */  lbu        $v1, 0x1A($s1)
    /* BA24 8001B224 1C00308E */  lw         $s0, 0x1C($s1)
    /* BA28 8001B228 06006010 */  beqz       $v1, .L8001B244
    /* BA2C 8001B22C 190022A2 */   sb        $v0, 0x19($s1)
    /* BA30 8001B230 01000224 */  addiu      $v0, $zero, 0x1
    /* BA34 8001B234 12006210 */  beq        $v1, $v0, .L8001B280
    /* BA38 8001B238 00000000 */   nop
    /* BA3C 8001B23C B36C0008 */  j          .L8001B2CC
    /* BA40 8001B240 00000000 */   nop
  .L8001B244:
    /* BA44 8001B244 2000228E */  lw         $v0, 0x20($s1)
    /* BA48 8001B248 00000000 */  nop
    /* BA4C 8001B24C 1F000212 */  beq        $s0, $v0, .L8001B2CC
    /* BA50 8001B250 00000000 */   nop
    /* BA54 8001B254 00000492 */  lbu        $a0, 0x0($s0)
    /* BA58 8001B258 F8C7010C */  jal        SsUtSetReverbType
    /* BA5C 8001B25C 00000000 */   nop
    /* BA60 8001B260 71C8010C */  jal        func_800721C4
    /* BA64 8001B264 00000000 */   nop
    /* BA68 8001B268 1A002292 */  lbu        $v0, 0x1A($s1)
    /* BA6C 8001B26C 1E000324 */  addiu      $v1, $zero, 0x1E
    /* BA70 8001B270 1B0023A2 */  sb         $v1, 0x1B($s1)
    /* BA74 8001B274 01004224 */  addiu      $v0, $v0, 0x1
    /* BA78 8001B278 B36C0008 */  j          .L8001B2CC
    /* BA7C 8001B27C 1A0022A2 */   sb        $v0, 0x1A($s1)
  .L8001B280:
    /* BA80 8001B280 1B002292 */  lbu        $v0, 0x1B($s1)
    /* BA84 8001B284 00000000 */  nop
    /* BA88 8001B288 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* BA8C 8001B28C 1B0022A2 */  sb         $v0, 0x1B($s1)
    /* BA90 8001B290 FF004230 */  andi       $v0, $v0, 0xFF
    /* BA94 8001B294 0D004014 */  bnez       $v0, .L8001B2CC
    /* BA98 8001B298 00000000 */   nop
    /* BA9C 8001B29C 00000292 */  lbu        $v0, 0x0($s0)
    /* BAA0 8001B2A0 00000000 */  nop
    /* BAA4 8001B2A4 07004010 */  beqz       $v0, .L8001B2C4
    /* BAA8 8001B2A8 00000000 */   nop
    /* BAAC 8001B2AC 02000492 */  lbu        $a0, 0x2($s0)
    /* BAB0 8001B2B0 D2C7010C */  jal        SsUtSetReverbDepth
    /* BAB4 8001B2B4 21288000 */   addu      $a1, $a0, $zero
    /* BAB8 8001B2B8 01000492 */  lbu        $a0, 0x1($s0)
    /* BABC 8001B2BC 41BA010C */  jal        SsSetRVol
    /* BAC0 8001B2C0 21288000 */   addu      $a1, $a0, $zero
  .L8001B2C4:
    /* BAC4 8001B2C4 1A0020A2 */  sb         $zero, 0x1A($s1)
    /* BAC8 8001B2C8 200030AE */  sw         $s0, 0x20($s1)
  .L8001B2CC:
    /* BACC 8001B2CC 2400BF8F */  lw         $ra, 0x24($sp)
    /* BAD0 8001B2D0 2000B48F */  lw         $s4, 0x20($sp)
    /* BAD4 8001B2D4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* BAD8 8001B2D8 1800B28F */  lw         $s2, 0x18($sp)
    /* BADC 8001B2DC 1400B18F */  lw         $s1, 0x14($sp)
    /* BAE0 8001B2E0 1000B08F */  lw         $s0, 0x10($sp)
    /* BAE4 8001B2E4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* BAE8 8001B2E8 0800E003 */  jr         $ra
    /* BAEC 8001B2EC 00000000 */   nop
.size func_8001AEF0, . - func_8001AEF0
