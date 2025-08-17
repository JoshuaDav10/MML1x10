.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800598C8
    /* 4A0C8 800598C8 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 4A0CC 800598CC 2000B0AF */  sw         $s0, 0x20($sp)
    /* 4A0D0 800598D0 21808000 */  addu       $s0, $a0, $zero
    /* 4A0D4 800598D4 3000BFAF */  sw         $ra, 0x30($sp)
    /* 4A0D8 800598D8 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 4A0DC 800598DC 2800B2AF */  sw         $s2, 0x28($sp)
    /* 4A0E0 800598E0 2400B1AF */  sw         $s1, 0x24($sp)
    /* 4A0E4 800598E4 0000048E */  lw         $a0, 0x0($s0)
    /* 4A0E8 800598E8 0001053C */  lui        $a1, (0x1000000 >> 16)
    /* 4A0EC 800598EC 24108500 */  and        $v0, $a0, $a1
    /* 4A0F0 800598F0 09004014 */  bnez       $v0, .L80059918
    /* 4A0F4 800598F4 25108500 */   or        $v0, $a0, $a1
    /* 4A0F8 800598F8 FFFF033C */  lui        $v1, (0xFFFF7FFF >> 16)
    /* 4A0FC 800598FC FF7F6334 */  ori        $v1, $v1, (0xFFFF7FFF & 0xFFFF)
    /* 4A100 80059900 24104300 */  and        $v0, $v0, $v1
    /* 4A104 80059904 79000392 */  lbu        $v1, 0x79($s0)
    /* 4A108 80059908 000002AE */  sw         $v0, 0x0($s0)
    /* 4A10C 8005990C 05000224 */  addiu      $v0, $zero, 0x5
    /* 4A110 80059910 040002A6 */  sh         $v0, 0x4($s0)
    /* 4A114 80059914 710003A2 */  sb         $v1, 0x71($s0)
  .L80059918:
    /* 4A118 80059918 BFFF033C */  lui        $v1, (0xFFBFFFFF >> 16)
    /* 4A11C 8005991C 0000028E */  lw         $v0, 0x0($s0)
    /* 4A120 80059920 FFFF6334 */  ori        $v1, $v1, (0xFFBFFFFF & 0xFFFF)
    /* 4A124 80059924 24104300 */  and        $v0, $v0, $v1
    /* 4A128 80059928 000002AE */  sw         $v0, 0x0($s0)
    /* 4A12C 8005992C 0C80023C */  lui        $v0, %hi(Moji_work + 0x135)
    /* 4A130 80059930 EDB74280 */  lb         $v0, %lo(Moji_work + 0x135)($v0)
    /* 4A134 80059934 0C80043C */  lui        $a0, %hi(Moji_work + 0x1F9)
    /* 4A138 80059938 B1B88480 */  lb         $a0, %lo(Moji_work + 0x1F9)($a0)
    /* 4A13C 8005993C 0B80013C */  lui        $at, %hi(Player_work + 0x450)
    /* 4A140 80059940 21082200 */  addu       $at, $at, $v0
    /* 4A144 80059944 00562390 */  lbu        $v1, %lo(Player_work + 0x450)($at)
    /* 4A148 80059948 38118293 */  lbu        $v0, %gp_rel(D_8009899C)($gp)
    /* 4A14C 8005994C 0B80113C */  lui        $s1, %hi(Player_work + 0x454)
    /* 4A150 80059950 04563126 */  addiu      $s1, $s1, %lo(Player_work + 0x454)
    /* 4A154 80059954 21104400 */  addu       $v0, $v0, $a0
    /* 4A158 80059958 CC1283AF */  sw         $v1, %gp_rel(Moji_flag3)($gp)
    /* 4A15C 8005995C 0B80013C */  lui        $at, %hi(Player_work + 0x454)
    /* 4A160 80059960 21082200 */  addu       $at, $at, $v0
    /* 4A164 80059964 04562290 */  lbu        $v0, %lo(Player_work + 0x454)($at)
    /* 4A168 80059968 00000000 */  nop
    /* 4A16C 8005996C 00120200 */  sll        $v0, $v0, 8
    /* 4A170 80059970 25186200 */  or         $v1, $v1, $v0
    /* 4A174 80059974 04000286 */  lh         $v0, 0x4($s0)
    /* 4A178 80059978 CC1283AF */  sw         $v1, %gp_rel(Moji_flag3)($gp)
    /* 4A17C 8005997C 6600401C */  bgtz       $v0, .L80059B18
    /* 4A180 80059980 21184000 */   addu      $v1, $v0, $zero
    /* 4A184 80059984 CA8F010C */  jal        Game_logo_kill
    /* 4A188 80059988 21200000 */   addu      $a0, $zero, $zero
    /* 4A18C 8005998C CA8F010C */  jal        Game_logo_kill
    /* 4A190 80059990 01000424 */   addiu     $a0, $zero, 0x1
    /* 4A194 80059994 B800028E */  lw         $v0, 0xB8($s0)
    /* 4A198 80059998 0810033C */  lui        $v1, (0x10080000 >> 16)
    /* 4A19C 8005999C 24104300 */  and        $v0, $v0, $v1
    /* 4A1A0 800599A0 06004010 */  beqz       $v0, .L800599BC
    /* 4A1A4 800599A4 83000424 */   addiu     $a0, $zero, 0x83
    /* 4A1A8 800599A8 01000524 */  addiu      $a1, $zero, 0x1
    /* 4A1AC 800599AC 0268000C */  jal        Sound_call
    /* 4A1B0 800599B0 21300000 */   addu      $a2, $zero, $zero
    /* 4A1B4 800599B4 8C660108 */  j          .L80059A30
    /* 4A1B8 800599B8 FFFE043C */   lui       $a0, (0xFEFFFFFF >> 16)
  .L800599BC:
    /* 4A1BC 800599BC BA000296 */  lhu        $v0, 0xBA($s0)
    /* 4A1C0 800599C0 00000000 */  nop
    /* 4A1C4 800599C4 00404230 */  andi       $v0, $v0, 0x4000
    /* 4A1C8 800599C8 34004010 */  beqz       $v0, .L80059A9C
    /* 4A1CC 800599CC 82000424 */   addiu     $a0, $zero, 0x82
    /* 4A1D0 800599D0 01000524 */  addiu      $a1, $zero, 0x1
    /* 4A1D4 800599D4 0268000C */  jal        Sound_call
    /* 4A1D8 800599D8 21300000 */   addu      $a2, $zero, $zero
    /* 4A1DC 800599DC 71000282 */  lb         $v0, 0x71($s0)
    /* 4A1E0 800599E0 38118393 */  lbu        $v1, %gp_rel(D_8009899C)($gp)
    /* 4A1E4 800599E4 00000000 */  nop
    /* 4A1E8 800599E8 21104300 */  addu       $v0, $v0, $v1
    /* 4A1EC 800599EC 21105100 */  addu       $v0, $v0, $s1
    /* 4A1F0 800599F0 0A80033C */  lui        $v1, %hi(D_80098B2D)
    /* 4A1F4 800599F4 2D8B6390 */  lbu        $v1, %lo(D_80098B2D)($v1)
    /* 4A1F8 800599F8 00004490 */  lbu        $a0, 0x0($v0)
    /* 4A1FC 800599FC 0B80013C */  lui        $at, %hi(Player_work + 0x450)
    /* 4A200 80059A00 21082300 */  addu       $at, $at, $v1
    /* 4A204 80059A04 00562390 */  lbu        $v1, %lo(Player_work + 0x450)($at)
    /* 4A208 80059A08 00000000 */  nop
    /* 4A20C 80059A0C 000043A0 */  sb         $v1, 0x0($v0)
    /* 4A210 80059A10 0A80023C */  lui        $v0, %hi(D_80098B2D)
    /* 4A214 80059A14 2D8B4290 */  lbu        $v0, %lo(D_80098B2D)($v0)
    /* 4A218 80059A18 0B80013C */  lui        $at, %hi(Player_work + 0x450)
    /* 4A21C 80059A1C 21082200 */  addu       $at, $at, $v0
    /* 4A220 80059A20 005624A0 */  sb         $a0, %lo(Player_work + 0x450)($at)
    /* 4A224 80059A24 C884010C */  jal        Sub_screen_rb_parts_set
    /* 4A228 80059A28 00000000 */   nop
    /* 4A22C 80059A2C FFFE043C */  lui        $a0, (0xFEFFFFFF >> 16)
  .L80059A30:
    /* 4A230 80059A30 FFFF8434 */  ori        $a0, $a0, (0xFEFFFFFF & 0xFFFF)
    /* 4A234 80059A34 FDFF053C */  lui        $a1, (0xFFFD7FFF >> 16)
    /* 4A238 80059A38 FF7FA534 */  ori        $a1, $a1, (0xFFFD7FFF & 0xFFFF)
    /* 4A23C 80059A3C 4400138E */  lw         $s3, 0x44($s0)
    /* 4A240 80059A40 0000028E */  lw         $v0, 0x0($s0)
    /* 4A244 80059A44 71000392 */  lbu        $v1, 0x71($s0)
    /* 4A248 80059A48 24104400 */  and        $v0, $v0, $a0
    /* 4A24C 80059A4C 790003A2 */  sb         $v1, 0x79($s0)
    /* 4A250 80059A50 000002AE */  sw         $v0, 0x0($s0)
    /* 4A254 80059A54 F411828F */  lw         $v0, %gp_rel(Moji_flag)($gp)
    /* 4A258 80059A58 6C00038E */  lw         $v1, 0x6C($s0)
    /* 4A25C 80059A5C 24104500 */  and        $v0, $v0, $a1
    /* 4A260 80059A60 F41182AF */  sw         $v0, %gp_rel(Moji_flag)($gp)
    /* 4A264 80059A64 04007190 */  lbu        $s1, 0x4($v1)
    /* 4A268 80059A68 03007290 */  lbu        $s2, 0x3($v1)
    /* 4A26C 80059A6C 6C00028E */  lw         $v0, 0x6C($s0)
    /* 4A270 80059A70 C20011A6 */  sh         $s1, 0xC2($s0)
    /* 4A274 80059A74 01004490 */  lbu        $a0, 0x1($v0)
    /* 4A278 80059A78 02004690 */  lbu        $a2, 0x2($v0)
    /* 4A27C 80059A7C 0B4E010C */  jal        MojiTaskExec
    /* 4A280 80059A80 21286002 */   addu      $a1, $s3, $zero
    /* 4A284 80059A84 21204002 */  addu       $a0, $s2, $zero
    /* 4A288 80059A88 21286002 */  addu       $a1, $s3, $zero
    /* 4A28C 80059A8C 0B4E010C */  jal        MojiTaskExec
    /* 4A290 80059A90 21302002 */   addu      $a2, $s1, $zero
    /* 4A294 80059A94 C9660108 */  j          .L80059B24
    /* 4A298 80059A98 21100000 */   addu      $v0, $zero, $zero
  .L80059A9C:
    /* 4A29C 80059A9C 38118393 */  lbu        $v1, %gp_rel(D_8009899C)($gp)
    /* 4A2A0 80059AA0 00000000 */  nop
    /* 4A2A4 80059AA4 11006010 */  beqz       $v1, .L80059AEC
    /* 4A2A8 80059AA8 00000000 */   nop
    /* 4A2AC 80059AAC 70118293 */  lbu        $v0, %gp_rel(D_800989D4)($gp)
    /* 4A2B0 80059AB0 00000000 */  nop
    /* 4A2B4 80059AB4 2B106200 */  sltu       $v0, $v1, $v0
    /* 4A2B8 80059AB8 06004010 */  beqz       $v0, .L80059AD4
    /* 4A2BC 80059ABC 21200000 */   addu      $a0, $zero, $zero
    /* 4A2C0 80059AC0 0200053C */  lui        $a1, (0x20018 >> 16)
    /* 4A2C4 80059AC4 F08F010C */  jal        func_80063FC0
    /* 4A2C8 80059AC8 1800A534 */   ori       $a1, $a1, (0x20018 & 0xFFFF)
    /* 4A2CC 80059ACC C1660108 */  j          .L80059B04
    /* 4A2D0 80059AD0 01000424 */   addiu     $a0, $zero, 0x1
  .L80059AD4:
    /* 4A2D4 80059AD4 05006010 */  beqz       $v1, .L80059AEC
    /* 4A2D8 80059AD8 0200053C */   lui       $a1, (0x20018 >> 16)
    /* 4A2DC 80059ADC F08F010C */  jal        func_80063FC0
    /* 4A2E0 80059AE0 1800A534 */   ori       $a1, $a1, (0x20018 & 0xFFFF)
    /* 4A2E4 80059AE4 C9660108 */  j          .L80059B24
    /* 4A2E8 80059AE8 21100000 */   addu      $v0, $zero, $zero
  .L80059AEC:
    /* 4A2EC 80059AEC 38118293 */  lbu        $v0, %gp_rel(D_8009899C)($gp)
    /* 4A2F0 80059AF0 70118393 */  lbu        $v1, %gp_rel(D_800989D4)($gp)
    /* 4A2F4 80059AF4 00000000 */  nop
    /* 4A2F8 80059AF8 2B104300 */  sltu       $v0, $v0, $v1
    /* 4A2FC 80059AFC 08004010 */  beqz       $v0, .L80059B20
    /* 4A300 80059B00 21200000 */   addu      $a0, $zero, $zero
  .L80059B04:
    /* 4A304 80059B04 0200053C */  lui        $a1, (0x20019 >> 16)
    /* 4A308 80059B08 F08F010C */  jal        func_80063FC0
    /* 4A30C 80059B0C 1900A534 */   ori       $a1, $a1, (0x20019 & 0xFFFF)
    /* 4A310 80059B10 C9660108 */  j          .L80059B24
    /* 4A314 80059B14 21100000 */   addu      $v0, $zero, $zero
  .L80059B18:
    /* 4A318 80059B18 FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 4A31C 80059B1C 040002A6 */  sh         $v0, 0x4($s0)
  .L80059B20:
    /* 4A320 80059B20 21100000 */  addu       $v0, $zero, $zero
  .L80059B24:
    /* 4A324 80059B24 3000BF8F */  lw         $ra, 0x30($sp)
    /* 4A328 80059B28 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 4A32C 80059B2C 2800B28F */  lw         $s2, 0x28($sp)
    /* 4A330 80059B30 2400B18F */  lw         $s1, 0x24($sp)
    /* 4A334 80059B34 2000B08F */  lw         $s0, 0x20($sp)
    /* 4A338 80059B38 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 4A33C 80059B3C 0800E003 */  jr         $ra
    /* 4A340 80059B40 00000000 */   nop
.size func_800598C8, . - func_800598C8
