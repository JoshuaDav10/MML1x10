.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002EA50
    /* 1F250 8002EA50 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1F254 8002EA54 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1F258 8002EA58 21888000 */  addu       $s1, $a0, $zero
    /* 1F25C 8002EA5C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1F260 8002EA60 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 1F264 8002EA64 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1F268 8002EA68 00002382 */  lb         $v1, 0x0($s1)
    /* 1F26C 8002EA6C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 1F270 8002EA70 00016210 */  beq        $v1, $v0, .L8002EE74
    /* 1F274 8002EA74 2190A000 */   addu      $s2, $a1, $zero
    /* 1F278 8002EA78 10009024 */  addiu      $s0, $a0, 0x10
  .L8002EA7C:
    /* 1F27C 8002EA7C F1FF0392 */  lbu        $v1, -0xF($s0)
    /* 1F280 8002EA80 60000224 */  addiu      $v0, $zero, 0x60
    /* 1F284 8002EA84 6B006210 */  beq        $v1, $v0, .L8002EC34
    /* 1F288 8002EA88 61006228 */   slti      $v0, $v1, 0x61
    /* 1F28C 8002EA8C 0E004010 */  beqz       $v0, .L8002EAC8
    /* 1F290 8002EA90 20000224 */   addiu     $v0, $zero, 0x20
    /* 1F294 8002EA94 5F006210 */  beq        $v1, $v0, .L8002EC14
    /* 1F298 8002EA98 21006228 */   slti      $v0, $v1, 0x21
    /* 1F29C 8002EA9C 05004010 */  beqz       $v0, .L8002EAB4
    /* 1F2A0 8002EAA0 00000000 */   nop
    /* 1F2A4 8002EAA4 16006010 */  beqz       $v1, .L8002EB00
    /* 1F2A8 8002EAA8 00000000 */   nop
    /* 1F2AC 8002EAAC 99BB0008 */  j          .L8002EE64
    /* 1F2B0 8002EAB0 14003126 */   addiu     $s1, $s1, 0x14
  .L8002EAB4:
    /* 1F2B4 8002EAB4 40000224 */  addiu      $v0, $zero, 0x40
    /* 1F2B8 8002EAB8 5A006210 */  beq        $v1, $v0, .L8002EC24
    /* 1F2BC 8002EABC 00000000 */   nop
    /* 1F2C0 8002EAC0 99BB0008 */  j          .L8002EE64
    /* 1F2C4 8002EAC4 14003126 */   addiu     $s1, $s1, 0x14
  .L8002EAC8:
    /* 1F2C8 8002EAC8 C0000224 */  addiu      $v0, $zero, 0xC0
    /* 1F2CC 8002EACC A7006210 */  beq        $v1, $v0, .L8002ED6C
    /* 1F2D0 8002EAD0 C1006228 */   slti      $v0, $v1, 0xC1
    /* 1F2D4 8002EAD4 05004010 */  beqz       $v0, .L8002EAEC
    /* 1F2D8 8002EAD8 80000224 */   addiu     $v0, $zero, 0x80
    /* 1F2DC 8002EADC 9F006210 */  beq        $v1, $v0, .L8002ED5C
    /* 1F2E0 8002EAE0 00000000 */   nop
    /* 1F2E4 8002EAE4 99BB0008 */  j          .L8002EE64
    /* 1F2E8 8002EAE8 14003126 */   addiu     $s1, $s1, 0x14
  .L8002EAEC:
    /* 1F2EC 8002EAEC E0000224 */  addiu      $v0, $zero, 0xE0
    /* 1F2F0 8002EAF0 B9006210 */  beq        $v1, $v0, .L8002EDD8
    /* 1F2F4 8002EAF4 00000000 */   nop
    /* 1F2F8 8002EAF8 99BB0008 */  j          .L8002EE64
    /* 1F2FC 8002EAFC 14003126 */   addiu     $s1, $s1, 0x14
  .L8002EB00:
    /* 1F300 8002EB00 D7004012 */  beqz       $s2, .L8002EE60
    /* 1F304 8002EB04 0080033C */   lui       $v1, (0x80000000 >> 16)
    /* 1F308 8002EB08 0B80053C */  lui        $a1, %hi(Player_work2)
    /* 1F30C 8002EB0C A457A524 */  addiu      $a1, $a1, %lo(Player_work2)
    /* 1F310 8002EB10 F3FF0492 */  lbu        $a0, -0xD($s0)
    /* 1F314 8002EB14 0A80023C */  lui        $v0, %hi(D_8009888C)
    /* 1F318 8002EB18 8C88428C */  lw         $v0, %lo(D_8009888C)($v0)
    /* 1F31C 8002EB1C 06188300 */  srlv       $v1, $v1, $a0
    /* 1F320 8002EB20 25104300 */  or         $v0, $v0, $v1
    /* 1F324 8002EB24 0A80013C */  lui        $at, %hi(D_8009888C)
    /* 1F328 8002EB28 8C8822AC */  sw         $v0, %lo(D_8009888C)($at)
    /* 1F32C 8002EB2C F3FF0292 */  lbu        $v0, -0xD($s0)
    /* 1F330 8002EB30 00000000 */  nop
    /* 1F334 8002EB34 03004014 */  bnez       $v0, .L8002EB44
    /* 1F338 8002EB38 5800A624 */   addiu     $a2, $a1, 0x58
    /* 1F33C 8002EB3C 64FAA624 */  addiu      $a2, $a1, -0x59C
    /* 1F340 8002EB40 0CFAA524 */  addiu      $a1, $a1, -0x5F4
  .L8002EB44:
    /* 1F344 8002EB44 00002292 */  lbu        $v0, 0x0($s1)
    /* 1F348 8002EB48 00000000 */  nop
    /* 1F34C 8002EB4C 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 1F350 8002EB50 F2FF0296 */  lhu        $v0, -0xE($s0)
    /* 1F354 8002EB54 00000000 */  nop
    /* 1F358 8002EB58 AAFFC2A4 */  sh         $v0, -0x56($a2)
    /* 1F35C 8002EB5C F4FF0296 */  lhu        $v0, -0xC($s0)
    /* 1F360 8002EB60 00000000 */  nop
    /* 1F364 8002EB64 ACFFC2A4 */  sh         $v0, -0x54($a2)
    /* 1F368 8002EB68 F8FF028E */  lw         $v0, -0x8($s0)
    /* 1F36C 8002EB6C B0FFC0AC */  sw         $zero, -0x50($a2)
    /* 1F370 8002EB70 B4FFC2AC */  sw         $v0, -0x4C($a2)
    /* 1F374 8002EB74 FCFF0286 */  lh         $v0, -0x4($s0)
    /* 1F378 8002EB78 00000000 */  nop
    /* 1F37C 8002EB7C 00140200 */  sll        $v0, $v0, 16
    /* 1F380 8002EB80 DCFFC2AC */  sw         $v0, -0x24($a2)
    /* 1F384 8002EB84 C4FFC2AC */  sw         $v0, -0x3C($a2)
    /* 1F388 8002EB88 FEFF0286 */  lh         $v0, -0x2($s0)
    /* 1F38C 8002EB8C 00000000 */  nop
    /* 1F390 8002EB90 00140200 */  sll        $v0, $v0, 16
    /* 1F394 8002EB94 E0FFC2AC */  sw         $v0, -0x20($a2)
    /* 1F398 8002EB98 C8FFC2AC */  sw         $v0, -0x38($a2)
    /* 1F39C 8002EB9C 00000286 */  lh         $v0, 0x0($s0)
    /* 1F3A0 8002EBA0 00000000 */  nop
    /* 1F3A4 8002EBA4 00140200 */  sll        $v0, $v0, 16
    /* 1F3A8 8002EBA8 E4FFC2AC */  sw         $v0, -0x1C($a2)
    /* 1F3AC 8002EBAC CCFFC2AC */  sw         $v0, -0x34($a2)
    /* 1F3B0 8002EBB0 FFFF028A */  lwl        $v0, -0x1($s0)
    /* 1F3B4 8002EBB4 FCFF029A */  lwr        $v0, -0x4($s0)
    /* 1F3B8 8002EBB8 0300038A */  lwl        $v1, 0x3($s0)
    /* 1F3BC 8002EBBC 0000039A */  lwr        $v1, 0x0($s0)
    /* 1F3C0 8002EBC0 D7FFC2A8 */  swl        $v0, -0x29($a2)
    /* 1F3C4 8002EBC4 D4FFC2B8 */  swr        $v0, -0x2C($a2)
    /* 1F3C8 8002EBC8 DBFFC3A8 */  swl        $v1, -0x25($a2)
    /* 1F3CC 8002EBCC D8FFC3B8 */  swr        $v1, -0x28($a2)
    /* 1F3D0 8002EBD0 D7FFC288 */  lwl        $v0, -0x29($a2)
    /* 1F3D4 8002EBD4 D4FFC298 */  lwr        $v0, -0x2C($a2)
    /* 1F3D8 8002EBD8 DBFFC388 */  lwl        $v1, -0x25($a2)
    /* 1F3DC 8002EBDC D8FFC398 */  lwr        $v1, -0x28($a2)
    /* 1F3E0 8002EBE0 BFFFC2A8 */  swl        $v0, -0x41($a2)
    /* 1F3E4 8002EBE4 BCFFC2B8 */  swr        $v0, -0x44($a2)
    /* 1F3E8 8002EBE8 C3FFC3A8 */  swl        $v1, -0x3D($a2)
    /* 1F3EC 8002EBEC C0FFC3B8 */  swr        $v1, -0x40($a2)
    /* 1F3F0 8002EBF0 0400C0A4 */  sh         $zero, 0x4($a2)
    /* 1F3F4 8002EBF4 FCFFC0A4 */  sh         $zero, -0x4($a2)
    /* 1F3F8 8002EBF8 F7FF0292 */  lbu        $v0, -0x9($s0)
    /* 1F3FC 8002EBFC 0800C0A4 */  sh         $zero, 0x8($a2)
    /* 1F400 8002EC00 0000C0A4 */  sh         $zero, 0x0($a2)
    /* 1F404 8002EC04 00110200 */  sll        $v0, $v0, 4
    /* 1F408 8002EC08 0600C2A4 */  sh         $v0, 0x6($a2)
    /* 1F40C 8002EC0C 98BB0008 */  j          .L8002EE60
    /* 1F410 8002EC10 FEFFC2A4 */   sh        $v0, -0x2($a2)
  .L8002EC14:
    /* 1F414 8002EC14 06C5000C */  jal        func_80031418
    /* 1F418 8002EC18 00000000 */   nop
    /* 1F41C 8002EC1C 21BB0008 */  j          .L8002EC84
    /* 1F420 8002EC20 21304000 */   addu      $a2, $v0, $zero
  .L8002EC24:
    /* 1F424 8002EC24 26C5000C */  jal        func_80031498
    /* 1F428 8002EC28 00000000 */   nop
    /* 1F42C 8002EC2C 21BB0008 */  j          .L8002EC84
    /* 1F430 8002EC30 21304000 */   addu      $a2, $v0, $zero
  .L8002EC34:
    /* 1F434 8002EC34 F2FF0392 */  lbu        $v1, -0xE($s0)
    /* 1F438 8002EC38 11000224 */  addiu      $v0, $zero, 0x11
    /* 1F43C 8002EC3C 0E006214 */  bne        $v1, $v0, .L8002EC78
    /* 1F440 8002EC40 00000000 */   nop
    /* 1F444 8002EC44 0C80033C */  lui        $v1, %hi(Game_work + 0x78)
    /* 1F448 8002EC48 881B6324 */  addiu      $v1, $v1, %lo(Game_work + 0x78)
    /* 1F44C 8002EC4C 00006280 */  lb         $v0, 0x0($v1)
    /* 1F450 8002EC50 00000000 */  nop
    /* 1F454 8002EC54 82004010 */  beqz       $v0, .L8002EE60
    /* 1F458 8002EC58 00000000 */   nop
    /* 1F45C 8002EC5C 0000628C */  lw         $v0, 0x0($v1)
    /* 1F460 8002EC60 0C80033C */  lui        $v1, %hi(Game_work + 0x50)
    /* 1F464 8002EC64 601B6384 */  lh         $v1, %lo(Game_work + 0x50)($v1)
    /* 1F468 8002EC68 00120200 */  sll        $v0, $v0, 8
    /* 1F46C 8002EC6C 03140200 */  sra        $v0, $v0, 16
    /* 1F470 8002EC70 7B004314 */  bne        $v0, $v1, .L8002EE60
    /* 1F474 8002EC74 00000000 */   nop
  .L8002EC78:
    /* 1F478 8002EC78 46C5000C */  jal        func_80031518
    /* 1F47C 8002EC7C 00000000 */   nop
    /* 1F480 8002EC80 21304000 */  addu       $a2, $v0, $zero
  .L8002EC84:
    /* 1F484 8002EC84 7600C010 */  beqz       $a2, .L8002EE60
    /* 1F488 8002EC88 00000000 */   nop
    /* 1F48C 8002EC8C 00002292 */  lbu        $v0, 0x0($s1)
    /* 1F490 8002EC90 00000000 */  nop
    /* 1F494 8002EC94 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 1F498 8002EC98 F2FF0296 */  lhu        $v0, -0xE($s0)
    /* 1F49C 8002EC9C 00000000 */  nop
    /* 1F4A0 8002ECA0 0200C2A4 */  sh         $v0, 0x2($a2)
    /* 1F4A4 8002ECA4 F4FF0296 */  lhu        $v0, -0xC($s0)
    /* 1F4A8 8002ECA8 00000000 */  nop
    /* 1F4AC 8002ECAC 0400C2A4 */  sh         $v0, 0x4($a2)
    /* 1F4B0 8002ECB0 F8FF028E */  lw         $v0, -0x8($s0)
    /* 1F4B4 8002ECB4 00000000 */  nop
    /* 1F4B8 8002ECB8 0C00C2AC */  sw         $v0, 0xC($a2)
    /* 1F4BC 8002ECBC FCFF0286 */  lh         $v0, -0x4($s0)
    /* 1F4C0 8002ECC0 00000000 */  nop
    /* 1F4C4 8002ECC4 00140200 */  sll        $v0, $v0, 16
    /* 1F4C8 8002ECC8 3400C2AC */  sw         $v0, 0x34($a2)
    /* 1F4CC 8002ECCC 1C00C2AC */  sw         $v0, 0x1C($a2)
    /* 1F4D0 8002ECD0 FEFF0286 */  lh         $v0, -0x2($s0)
    /* 1F4D4 8002ECD4 00000000 */  nop
    /* 1F4D8 8002ECD8 00140200 */  sll        $v0, $v0, 16
    /* 1F4DC 8002ECDC 3800C2AC */  sw         $v0, 0x38($a2)
    /* 1F4E0 8002ECE0 2000C2AC */  sw         $v0, 0x20($a2)
    /* 1F4E4 8002ECE4 00000286 */  lh         $v0, 0x0($s0)
    /* 1F4E8 8002ECE8 00000000 */  nop
    /* 1F4EC 8002ECEC 00140200 */  sll        $v0, $v0, 16
    /* 1F4F0 8002ECF0 3C00C2AC */  sw         $v0, 0x3C($a2)
    /* 1F4F4 8002ECF4 2400C2AC */  sw         $v0, 0x24($a2)
    /* 1F4F8 8002ECF8 FFFF028A */  lwl        $v0, -0x1($s0)
    /* 1F4FC 8002ECFC FCFF029A */  lwr        $v0, -0x4($s0)
    /* 1F500 8002ED00 0300038A */  lwl        $v1, 0x3($s0)
    /* 1F504 8002ED04 0000039A */  lwr        $v1, 0x0($s0)
    /* 1F508 8002ED08 2F00C2A8 */  swl        $v0, 0x2F($a2)
    /* 1F50C 8002ED0C 2C00C2B8 */  swr        $v0, 0x2C($a2)
    /* 1F510 8002ED10 3300C3A8 */  swl        $v1, 0x33($a2)
    /* 1F514 8002ED14 3000C3B8 */  swr        $v1, 0x30($a2)
    /* 1F518 8002ED18 2F00C288 */  lwl        $v0, 0x2F($a2)
    /* 1F51C 8002ED1C 2C00C298 */  lwr        $v0, 0x2C($a2)
    /* 1F520 8002ED20 3300C388 */  lwl        $v1, 0x33($a2)
    /* 1F524 8002ED24 3000C398 */  lwr        $v1, 0x30($a2)
    /* 1F528 8002ED28 1700C2A8 */  swl        $v0, 0x17($a2)
    /* 1F52C 8002ED2C 1400C2B8 */  swr        $v0, 0x14($a2)
    /* 1F530 8002ED30 1B00C3A8 */  swl        $v1, 0x1B($a2)
    /* 1F534 8002ED34 1800C3B8 */  swr        $v1, 0x18($a2)
    /* 1F538 8002ED38 5C00C0A4 */  sh         $zero, 0x5C($a2)
    /* 1F53C 8002ED3C 5400C0A4 */  sh         $zero, 0x54($a2)
    /* 1F540 8002ED40 F7FF0292 */  lbu        $v0, -0x9($s0)
    /* 1F544 8002ED44 6000C0A4 */  sh         $zero, 0x60($a2)
    /* 1F548 8002ED48 5800C0A4 */  sh         $zero, 0x58($a2)
    /* 1F54C 8002ED4C 00110200 */  sll        $v0, $v0, 4
    /* 1F550 8002ED50 5E00C2A4 */  sh         $v0, 0x5E($a2)
    /* 1F554 8002ED54 98BB0008 */  j          .L8002EE60
    /* 1F558 8002ED58 5600C2A4 */   sh        $v0, 0x56($a2)
  .L8002ED5C:
    /* 1F55C 8002ED5C 86C5000C */  jal        func_80031618
    /* 1F560 8002ED60 00000000 */   nop
    /* 1F564 8002ED64 79BB0008 */  j          .L8002EDE4
    /* 1F568 8002ED68 21304000 */   addu      $a2, $v0, $zero
  .L8002ED6C:
    /* 1F56C 8002ED6C AFC5000C */  jal        func_800316BC
    /* 1F570 8002ED70 00000000 */   nop
    /* 1F574 8002ED74 21304000 */  addu       $a2, $v0, $zero
    /* 1F578 8002ED78 3900C010 */  beqz       $a2, .L8002EE60
    /* 1F57C 8002ED7C 00000000 */   nop
    /* 1F580 8002ED80 00002292 */  lbu        $v0, 0x0($s1)
    /* 1F584 8002ED84 00000000 */  nop
    /* 1F588 8002ED88 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 1F58C 8002ED8C F2FF0296 */  lhu        $v0, -0xE($s0)
    /* 1F590 8002ED90 00000000 */  nop
    /* 1F594 8002ED94 0200C2A4 */  sh         $v0, 0x2($a2)
    /* 1F598 8002ED98 F4FF0296 */  lhu        $v0, -0xC($s0)
    /* 1F59C 8002ED9C 00000000 */  nop
    /* 1F5A0 8002EDA0 0400C2A4 */  sh         $v0, 0x4($a2)
    /* 1F5A4 8002EDA4 F8FF028E */  lw         $v0, -0x8($s0)
    /* 1F5A8 8002EDA8 00000000 */  nop
    /* 1F5AC 8002EDAC 0C00C2AC */  sw         $v0, 0xC($a2)
    /* 1F5B0 8002EDB0 FFFF028A */  lwl        $v0, -0x1($s0)
    /* 1F5B4 8002EDB4 FCFF029A */  lwr        $v0, -0x4($s0)
    /* 1F5B8 8002EDB8 0300038A */  lwl        $v1, 0x3($s0)
    /* 1F5BC 8002EDBC 0000039A */  lwr        $v1, 0x0($s0)
    /* 1F5C0 8002EDC0 1700C2A8 */  swl        $v0, 0x17($a2)
    /* 1F5C4 8002EDC4 1400C2B8 */  swr        $v0, 0x14($a2)
    /* 1F5C8 8002EDC8 1B00C3A8 */  swl        $v1, 0x1B($a2)
    /* 1F5CC 8002EDCC 1800C3B8 */  swr        $v1, 0x18($a2)
    /* 1F5D0 8002EDD0 99BB0008 */  j          .L8002EE64
    /* 1F5D4 8002EDD4 14003126 */   addiu     $s1, $s1, 0x14
  .L8002EDD8:
    /* 1F5D8 8002EDD8 CDC5000C */  jal        func_80031734
    /* 1F5DC 8002EDDC 00000000 */   nop
    /* 1F5E0 8002EDE0 21304000 */  addu       $a2, $v0, $zero
  .L8002EDE4:
    /* 1F5E4 8002EDE4 1E00C010 */  beqz       $a2, .L8002EE60
    /* 1F5E8 8002EDE8 00000000 */   nop
    /* 1F5EC 8002EDEC 00002292 */  lbu        $v0, 0x0($s1)
    /* 1F5F0 8002EDF0 00000000 */  nop
    /* 1F5F4 8002EDF4 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 1F5F8 8002EDF8 F2FF0296 */  lhu        $v0, -0xE($s0)
    /* 1F5FC 8002EDFC 00000000 */  nop
    /* 1F600 8002EE00 0200C2A4 */  sh         $v0, 0x2($a2)
    /* 1F604 8002EE04 F4FF0296 */  lhu        $v0, -0xC($s0)
    /* 1F608 8002EE08 00000000 */  nop
    /* 1F60C 8002EE0C 0400C2A4 */  sh         $v0, 0x4($a2)
    /* 1F610 8002EE10 F8FF028E */  lw         $v0, -0x8($s0)
    /* 1F614 8002EE14 00000000 */  nop
    /* 1F618 8002EE18 0C00C2AC */  sw         $v0, 0xC($a2)
    /* 1F61C 8002EE1C FFFF028A */  lwl        $v0, -0x1($s0)
    /* 1F620 8002EE20 FCFF029A */  lwr        $v0, -0x4($s0)
    /* 1F624 8002EE24 0300038A */  lwl        $v1, 0x3($s0)
    /* 1F628 8002EE28 0000039A */  lwr        $v1, 0x0($s0)
    /* 1F62C 8002EE2C 3B00C2A8 */  swl        $v0, 0x3B($a2)
    /* 1F630 8002EE30 3800C2B8 */  swr        $v0, 0x38($a2)
    /* 1F634 8002EE34 3F00C3A8 */  swl        $v1, 0x3F($a2)
    /* 1F638 8002EE38 3C00C3B8 */  swr        $v1, 0x3C($a2)
    /* 1F63C 8002EE3C FCFF0296 */  lhu        $v0, -0x4($s0)
    /* 1F640 8002EE40 00000000 */  nop
    /* 1F644 8002EE44 1C00C2A4 */  sh         $v0, 0x1C($a2)
    /* 1F648 8002EE48 FEFF0296 */  lhu        $v0, -0x2($s0)
    /* 1F64C 8002EE4C 00000000 */  nop
    /* 1F650 8002EE50 1E00C2A4 */  sh         $v0, 0x1E($a2)
    /* 1F654 8002EE54 00000296 */  lhu        $v0, 0x0($s0)
    /* 1F658 8002EE58 00000000 */  nop
    /* 1F65C 8002EE5C 2000C2A4 */  sh         $v0, 0x20($a2)
  .L8002EE60:
    /* 1F660 8002EE60 14003126 */  addiu      $s1, $s1, 0x14
  .L8002EE64:
    /* 1F664 8002EE64 00002382 */  lb         $v1, 0x0($s1)
    /* 1F668 8002EE68 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 1F66C 8002EE6C 03FF6214 */  bne        $v1, $v0, .L8002EA7C
    /* 1F670 8002EE70 14001026 */   addiu     $s0, $s0, 0x14
  .L8002EE74:
    /* 1F674 8002EE74 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 1F678 8002EE78 1800B28F */  lw         $s2, 0x18($sp)
    /* 1F67C 8002EE7C 1400B18F */  lw         $s1, 0x14($sp)
    /* 1F680 8002EE80 1000B08F */  lw         $s0, 0x10($sp)
    /* 1F684 8002EE84 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1F688 8002EE88 0800E003 */  jr         $ra
    /* 1F68C 8002EE8C 00000000 */   nop
.size func_8002EA50, . - func_8002EA50
