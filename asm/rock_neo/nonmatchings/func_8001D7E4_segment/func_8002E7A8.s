.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002E7A8
    /* 1EFA8 8002E7A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1EFAC 8002E7AC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 1EFB0 8002E7B0 10008010 */  beqz       $a0, .L8002E7F4
    /* 1EFB4 8002E7B4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 1EFB8 8002E7B8 21800000 */  addu       $s0, $zero, $zero
    /* 1EFBC 8002E7BC 0B80043C */  lui        $a0, %hi(Player_work)
    /* 1EFC0 8002E7C0 B0518424 */  addiu      $a0, $a0, %lo(Player_work)
    /* 1EFC4 8002E7C4 F35D000C */  jal        func_800177CC
    /* 1EFC8 8002E7C8 E40B8524 */   addiu     $a1, $a0, 0xBE4
    /* 1EFCC 8002E7CC 21180000 */  addu       $v1, $zero, $zero
    /* 1EFD0 8002E7D0 21200000 */  addu       $a0, $zero, $zero
  .L8002E7D4:
    /* 1EFD4 8002E7D4 25100302 */  or         $v0, $s0, $v1
    /* 1EFD8 8002E7D8 0B80013C */  lui        $at, %hi(Player_work + 0x1)
    /* 1EFDC 8002E7DC 21082400 */  addu       $at, $at, $a0
    /* 1EFE0 8002E7E0 B15122A0 */  sb         $v0, %lo(Player_work + 0x1)($at)
    /* 1EFE4 8002E7E4 01006324 */  addiu      $v1, $v1, 0x1
    /* 1EFE8 8002E7E8 0200622C */  sltiu      $v0, $v1, 0x2
    /* 1EFEC 8002E7EC F9FF4014 */  bnez       $v0, .L8002E7D4
    /* 1EFF0 8002E7F0 F4058424 */   addiu     $a0, $a0, 0x5F4
  .L8002E7F4:
    /* 1EFF4 8002E7F4 10001024 */  addiu      $s0, $zero, 0x10
    /* 1EFF8 8002E7F8 0C80043C */  lui        $a0, %hi(D_800BFB20)
    /* 1EFFC 8002E7FC 20FB8424 */  addiu      $a0, $a0, %lo(D_800BFB20)
    /* 1F000 8002E800 F35D000C */  jal        func_800177CC
    /* 1F004 8002E804 BC108524 */   addiu     $a1, $a0, 0x10BC
    /* 1F008 8002E808 21180000 */  addu       $v1, $zero, $zero
    /* 1F00C 8002E80C 21200000 */  addu       $a0, $zero, $zero
    /* 1F010 8002E810 0A80013C */  lui        $at, %hi(D_800989F0)
    /* 1F014 8002E814 F08920AC */  sw         $zero, %lo(D_800989F0)($at)
    /* 1F018 8002E818 0A80013C */  lui        $at, %hi(D_80098A60)
    /* 1F01C 8002E81C 608A20AC */  sw         $zero, %lo(D_80098A60)($at)
  .L8002E820:
    /* 1F020 8002E820 25100302 */  or         $v0, $s0, $v1
    /* 1F024 8002E824 0C80013C */  lui        $at, %hi(D_800BFB21)
    /* 1F028 8002E828 21082400 */  addu       $at, $at, $a0
    /* 1F02C 8002E82C 21FB22A0 */  sb         $v0, %lo(D_800BFB21)($at)
    /* 1F030 8002E830 01006324 */  addiu      $v1, $v1, 0x1
    /* 1F034 8002E834 1000622C */  sltiu      $v0, $v1, 0x10
    /* 1F038 8002E838 F9FF4014 */  bnez       $v0, .L8002E820
    /* 1F03C 8002E83C 0C018424 */   addiu     $a0, $a0, 0x10C
    /* 1F040 8002E840 20001024 */  addiu      $s0, $zero, 0x20
    /* 1F044 8002E844 0A80043C */  lui        $a0, %hi(D_8009F108)
    /* 1F048 8002E848 08F18424 */  addiu      $a0, $a0, %lo(D_8009F108)
    /* 1F04C 8002E84C F35D000C */  jal        func_800177CC
    /* 1F050 8002E850 FC3B8524 */   addiu     $a1, $a0, 0x3BFC
    /* 1F054 8002E854 21180000 */  addu       $v1, $zero, $zero
    /* 1F058 8002E858 21200000 */  addu       $a0, $zero, $zero
    /* 1F05C 8002E85C 0A80013C */  lui        $at, %hi(D_800987E8)
    /* 1F060 8002E860 E88720AC */  sw         $zero, %lo(D_800987E8)($at)
    /* 1F064 8002E864 0A80013C */  lui        $at, %hi(D_8009880C)
    /* 1F068 8002E868 0C8820AC */  sw         $zero, %lo(D_8009880C)($at)
  .L8002E86C:
    /* 1F06C 8002E86C 25100302 */  or         $v0, $s0, $v1
    /* 1F070 8002E870 0A80013C */  lui        $at, %hi(D_8009F109)
    /* 1F074 8002E874 21082400 */  addu       $at, $at, $a0
    /* 1F078 8002E878 09F122A0 */  sb         $v0, %lo(D_8009F109)($at)
    /* 1F07C 8002E87C 01006324 */  addiu      $v1, $v1, 0x1
    /* 1F080 8002E880 1000622C */  sltiu      $v0, $v1, 0x10
    /* 1F084 8002E884 F9FF4014 */  bnez       $v0, .L8002E86C
    /* 1F088 8002E888 C0038424 */   addiu     $a0, $a0, 0x3C0
    /* 1F08C 8002E88C 40001024 */  addiu      $s0, $zero, 0x40
    /* 1F090 8002E890 0C80043C */  lui        $a0, %hi(D_800C3580)
    /* 1F094 8002E894 80358424 */  addiu      $a0, $a0, %lo(D_800C3580)
    /* 1F098 8002E898 F35D000C */  jal        func_800177CC
    /* 1F09C 8002E89C 8C168524 */   addiu     $a1, $a0, 0x168C
    /* 1F0A0 8002E8A0 21180000 */  addu       $v1, $zero, $zero
    /* 1F0A4 8002E8A4 21200000 */  addu       $a0, $zero, $zero
    /* 1F0A8 8002E8A8 0A80013C */  lui        $at, %hi(D_80098B20)
    /* 1F0AC 8002E8AC 208B20AC */  sw         $zero, %lo(D_80098B20)($at)
    /* 1F0B0 8002E8B0 0A80013C */  lui        $at, %hi(D_80098B64)
    /* 1F0B4 8002E8B4 648B20AC */  sw         $zero, %lo(D_80098B64)($at)
  .L8002E8B8:
    /* 1F0B8 8002E8B8 25100302 */  or         $v0, $s0, $v1
    /* 1F0BC 8002E8BC 0C80013C */  lui        $at, %hi(D_800C3581)
    /* 1F0C0 8002E8C0 21082400 */  addu       $at, $at, $a0
    /* 1F0C4 8002E8C4 813522A0 */  sb         $v0, %lo(D_800C3581)($at)
    /* 1F0C8 8002E8C8 01006324 */  addiu      $v1, $v1, 0x1
    /* 1F0CC 8002E8CC 0400622C */  sltiu      $v0, $v1, 0x4
    /* 1F0D0 8002E8D0 F9FF4014 */  bnez       $v0, .L8002E8B8
    /* 1F0D4 8002E8D4 A4058424 */   addiu     $a0, $a0, 0x5A4
    /* 1F0D8 8002E8D8 60001024 */  addiu      $s0, $zero, 0x60
    /* 1F0DC 8002E8DC 0A80043C */  lui        $a0, %hi(D_8009CF88)
    /* 1F0E0 8002E8E0 88CF8424 */  addiu      $a0, $a0, %lo(D_8009CF88)
    /* 1F0E4 8002E8E4 F35D000C */  jal        func_800177CC
    /* 1F0E8 8002E8E8 7C218524 */   addiu     $a1, $a0, 0x217C
    /* 1F0EC 8002E8EC 21180000 */  addu       $v1, $zero, $zero
    /* 1F0F0 8002E8F0 21200000 */  addu       $a0, $zero, $zero
    /* 1F0F4 8002E8F4 0A80013C */  lui        $at, %hi(D_800987CC)
    /* 1F0F8 8002E8F8 CC8720AC */  sw         $zero, %lo(D_800987CC)($at)
    /* 1F0FC 8002E8FC 0A80013C */  lui        $at, %hi(D_80098808)
    /* 1F100 8002E900 088820AC */  sw         $zero, %lo(D_80098808)($at)
  .L8002E904:
    /* 1F104 8002E904 25100302 */  or         $v0, $s0, $v1
    /* 1F108 8002E908 0A80013C */  lui        $at, %hi(D_8009CF89)
    /* 1F10C 8002E90C 21082400 */  addu       $at, $at, $a0
    /* 1F110 8002E910 89CF22A0 */  sb         $v0, %lo(D_8009CF89)($at)
    /* 1F114 8002E914 01006324 */  addiu      $v1, $v1, 0x1
    /* 1F118 8002E918 2000622C */  sltiu      $v0, $v1, 0x20
    /* 1F11C 8002E91C F9FF4014 */  bnez       $v0, .L8002E904
    /* 1F120 8002E920 0C018424 */   addiu     $a0, $a0, 0x10C
    /* 1F124 8002E924 80001024 */  addiu      $s0, $zero, 0x80
    /* 1F128 8002E928 0A80043C */  lui        $a0, %hi(D_800A3B40)
    /* 1F12C 8002E92C 403B8424 */  addiu      $a0, $a0, %lo(D_800A3B40)
    /* 1F130 8002E930 F35D000C */  jal        func_800177CC
    /* 1F134 8002E934 FC118524 */   addiu     $a1, $a0, 0x11FC
    /* 1F138 8002E938 21180000 */  addu       $v1, $zero, $zero
    /* 1F13C 8002E93C 21200000 */  addu       $a0, $zero, $zero
    /* 1F140 8002E940 0A80013C */  lui        $at, %hi(D_80098838)
    /* 1F144 8002E944 388820AC */  sw         $zero, %lo(D_80098838)($at)
    /* 1F148 8002E948 0A80013C */  lui        $at, %hi(D_8009883C)
    /* 1F14C 8002E94C 3C8820AC */  sw         $zero, %lo(D_8009883C)($at)
    /* 1F150 8002E950 0A80013C */  lui        $at, %hi(D_800988C8)
    /* 1F154 8002E954 C88820AC */  sw         $zero, %lo(D_800988C8)($at)
    /* 1F158 8002E958 0A80013C */  lui        $at, %hi(D_800988CC)
    /* 1F15C 8002E95C CC8820AC */  sw         $zero, %lo(D_800988CC)($at)
  .L8002E960:
    /* 1F160 8002E960 25100302 */  or         $v0, $s0, $v1
    /* 1F164 8002E964 0A80013C */  lui        $at, %hi(D_800A3B41)
    /* 1F168 8002E968 21082400 */  addu       $at, $at, $a0
    /* 1F16C 8002E96C 413B22A0 */  sb         $v0, %lo(D_800A3B41)($at)
    /* 1F170 8002E970 01006324 */  addiu      $v1, $v1, 0x1
    /* 1F174 8002E974 4000622C */  sltiu      $v0, $v1, 0x40
    /* 1F178 8002E978 F9FF4014 */  bnez       $v0, .L8002E960
    /* 1F17C 8002E97C 48008424 */   addiu     $a0, $a0, 0x48
    /* 1F180 8002E980 C0001024 */  addiu      $s0, $zero, 0xC0
    /* 1F184 8002E984 0A80043C */  lui        $a0, %hi(D_800A2D08)
    /* 1F188 8002E988 082D8424 */  addiu      $a0, $a0, %lo(D_800A2D08)
    /* 1F18C 8002E98C F35D000C */  jal        func_800177CC
    /* 1F190 8002E990 3C028524 */   addiu     $a1, $a0, 0x23C
    /* 1F194 8002E994 21180000 */  addu       $v1, $zero, $zero
    /* 1F198 8002E998 21200000 */  addu       $a0, $zero, $zero
    /* 1F19C 8002E99C 0A80013C */  lui        $at, %hi(D_800987EC)
    /* 1F1A0 8002E9A0 EC8720AC */  sw         $zero, %lo(D_800987EC)($at)
    /* 1F1A4 8002E9A4 0A80013C */  lui        $at, %hi(D_80098818)
    /* 1F1A8 8002E9A8 188820AC */  sw         $zero, %lo(D_80098818)($at)
  .L8002E9AC:
    /* 1F1AC 8002E9AC 25100302 */  or         $v0, $s0, $v1
    /* 1F1B0 8002E9B0 0A80013C */  lui        $at, %hi(D_800A2D09)
    /* 1F1B4 8002E9B4 21082400 */  addu       $at, $at, $a0
    /* 1F1B8 8002E9B8 092D22A0 */  sb         $v0, %lo(D_800A2D09)($at)
    /* 1F1BC 8002E9BC 01006324 */  addiu      $v1, $v1, 0x1
    /* 1F1C0 8002E9C0 1000622C */  sltiu      $v0, $v1, 0x10
    /* 1F1C4 8002E9C4 F9FF4014 */  bnez       $v0, .L8002E9AC
    /* 1F1C8 8002E9C8 24008424 */   addiu     $a0, $a0, 0x24
    /* 1F1CC 8002E9CC E0001024 */  addiu      $s0, $zero, 0xE0
    /* 1F1D0 8002E9D0 0C80043C */  lui        $a0, %hi(D_800BF118)
    /* 1F1D4 8002E9D4 18F18424 */  addiu      $a0, $a0, %lo(D_800BF118)
    /* 1F1D8 8002E9D8 F35D000C */  jal        func_800177CC
    /* 1F1DC 8002E9DC FC098524 */   addiu     $a1, $a0, 0x9FC
    /* 1F1E0 8002E9E0 21180000 */  addu       $v1, $zero, $zero
    /* 1F1E4 8002E9E4 21200000 */  addu       $a0, $zero, $zero
    /* 1F1E8 8002E9E8 0A80013C */  lui        $at, %hi(D_800989CC)
    /* 1F1EC 8002E9EC CC8920AC */  sw         $zero, %lo(D_800989CC)($at)
    /* 1F1F0 8002E9F0 0A80013C */  lui        $at, %hi(D_80098A4C)
    /* 1F1F4 8002E9F4 4C8A20AC */  sw         $zero, %lo(D_80098A4C)($at)
  .L8002E9F8:
    /* 1F1F8 8002E9F8 25100302 */  or         $v0, $s0, $v1
    /* 1F1FC 8002E9FC 0C80013C */  lui        $at, %hi(D_800BF119)
    /* 1F200 8002EA00 21082400 */  addu       $at, $at, $a0
    /* 1F204 8002EA04 19F122A0 */  sb         $v0, %lo(D_800BF119)($at)
    /* 1F208 8002EA08 01006324 */  addiu      $v1, $v1, 0x1
    /* 1F20C 8002EA0C 2000622C */  sltiu      $v0, $v1, 0x20
    /* 1F210 8002EA10 F9FF4014 */  bnez       $v0, .L8002E9F8
    /* 1F214 8002EA14 50008424 */   addiu     $a0, $a0, 0x50
    /* 1F218 8002EA18 0C80043C */  lui        $a0, %hi(D_800BBA90)
    /* 1F21C 8002EA1C 90BA8424 */  addiu      $a0, $a0, %lo(D_800BBA90)
    /* 1F220 8002EA20 F35D000C */  jal        func_800177CC
    /* 1F224 8002EA24 64028524 */   addiu     $a1, $a0, 0x264
    /* 1F228 8002EA28 1580043C */  lui        $a0, (0x8015BC00 >> 16)
    /* 1F22C 8002EA2C 00BC8434 */  ori        $a0, $a0, (0x8015BC00 & 0xFFFF)
    /* 1F230 8002EA30 1580053C */  lui        $a1, (0x8015BFFC >> 16)
    /* 1F234 8002EA34 F35D000C */  jal        func_800177CC
    /* 1F238 8002EA38 FCBFA534 */   ori       $a1, $a1, (0x8015BFFC & 0xFFFF)
    /* 1F23C 8002EA3C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 1F240 8002EA40 1000B08F */  lw         $s0, 0x10($sp)
    /* 1F244 8002EA44 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1F248 8002EA48 0800E003 */  jr         $ra
    /* 1F24C 8002EA4C 00000000 */   nop
.size func_8002E7A8, . - func_8002E7A8
