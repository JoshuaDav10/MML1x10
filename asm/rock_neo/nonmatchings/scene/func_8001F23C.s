.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001F23C
    /* FA3C 8001F23C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* FA40 8001F240 1400B1AF */  sw         $s1, 0x14($sp)
    /* FA44 8001F244 0C80113C */  lui        $s1, %hi(Game_work + 0x50)
    /* FA48 8001F248 601B3182 */  lb         $s1, %lo(Game_work + 0x50)($s1)
    /* FA4C 8001F24C 2000B4AF */  sw         $s4, 0x20($sp)
    /* FA50 8001F250 0C80143C */  lui        $s4, %hi(Game_work + 0x51)
    /* FA54 8001F254 611B9482 */  lb         $s4, %lo(Game_work + 0x51)($s4)
    /* FA58 8001F258 2400BFAF */  sw         $ra, 0x24($sp)
    /* FA5C 8001F25C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* FA60 8001F260 1800B2AF */  sw         $s2, 0x18($sp)
    /* FA64 8001F264 D07D000C */  jal        func_8001F740
    /* FA68 8001F268 1000B0AF */   sw        $s0, 0x10($sp)
    /* FA6C 8001F26C 40101100 */  sll        $v0, $s1, 1
    /* FA70 8001F270 0980013C */  lui        $at, %hi(D_800896D4)
    /* FA74 8001F274 21082200 */  addu       $at, $at, $v0
    /* FA78 8001F278 D4962494 */  lhu        $a0, %lo(D_800896D4)($at)
    /* FA7C 8001F27C E567000C */  jal        func_80019F94
    /* FA80 8001F280 00000000 */   nop
    /* FA84 8001F284 0980033C */  lui        $v1, %hi(D_800893BC)
    /* FA88 8001F288 BC936324 */  addiu      $v1, $v1, %lo(D_800893BC)
    /* FA8C 8001F28C 80101100 */  sll        $v0, $s1, 2
    /* FA90 8001F290 21904300 */  addu       $s2, $v0, $v1
    /* FA94 8001F294 0000428E */  lw         $v0, 0x0($s2)
    /* FA98 8001F298 0C80033C */  lui        $v1, %hi(Game_work + 0x68)
    /* FA9C 8001F29C 781B6384 */  lh         $v1, %lo(Game_work + 0x68)($v1)
    /* FAA0 8001F2A0 00005084 */  lh         $s0, 0x0($v0)
    /* FAA4 8001F2A4 0C80133C */  lui        $s3, %hi(Game_work)
    /* FAA8 8001F2A8 101B7326 */  addiu      $s3, $s3, %lo(Game_work)
    /* FAAC 8001F2AC 19007010 */  beq        $v1, $s0, .L8001F314
    /* FAB0 8001F2B0 1680053C */   lui       $a1, (0x80161FFC >> 16)
    /* FAB4 8001F2B4 1580043C */  lui        $a0, (0x8015C000 >> 16)
    /* FAB8 8001F2B8 00C08434 */  ori        $a0, $a0, (0x8015C000 & 0xFFFF)
    /* FABC 8001F2BC 0C80013C */  lui        $at, %hi(Game_work + 0x68)
    /* FAC0 8001F2C0 781B30A4 */  sh         $s0, %lo(Game_work + 0x68)($at)
    /* FAC4 8001F2C4 F35D000C */  jal        func_800177CC
    /* FAC8 8001F2C8 FC1FA534 */   ori       $a1, $a1, (0x80161FFC & 0xFFFF)
    /* FACC 8001F2CC 1075000C */  jal        Cd_read_comb
    /* FAD0 8001F2D0 21200002 */   addu      $a0, $s0, $zero
    /* FAD4 8001F2D4 0000438E */  lw         $v1, 0x0($s2)
    /* FAD8 8001F2D8 40101400 */  sll        $v0, $s4, 1
    /* FADC 8001F2DC 21104300 */  addu       $v0, $v0, $v1
    /* FAE0 8001F2E0 02004484 */  lh         $a0, 0x2($v0)
    /* FAE4 8001F2E4 0C80013C */  lui        $at, %hi(Game_work + 0x6A)
    /* FAE8 8001F2E8 7A1B24A4 */  sh         $a0, %lo(Game_work + 0x6A)($at)
    /* FAEC 8001F2EC 03008004 */  bltz       $a0, .L8001F2FC
    /* FAF0 8001F2F0 00000000 */   nop
    /* FAF4 8001F2F4 1075000C */  jal        Cd_read_comb
    /* FAF8 8001F2F8 00000000 */   nop
  .L8001F2FC:
    /* FAFC 8001F2FC 2276000C */  jal        func_8001D888
    /* FB00 8001F300 21200000 */   addu      $a0, $zero, $zero
    /* FB04 8001F304 EDE8000C */  jal        func_8003A3B4
    /* FB08 8001F308 00000000 */   nop
    /* FB0C 8001F30C 45EB000C */  jal        func_8003AD14
    /* FB10 8001F310 00000000 */   nop
  .L8001F314:
    /* FB14 8001F314 80101100 */  sll        $v0, $s1, 2
    /* FB18 8001F318 0980013C */  lui        $at, %hi(D_80089714)
    /* FB1C 8001F31C 21082200 */  addu       $at, $at, $v0
    /* FB20 8001F320 1497228C */  lw         $v0, %lo(D_80089714)($at)
    /* FB24 8001F324 00000000 */  nop
    /* FB28 8001F328 09F84000 */  jalr       $v0
    /* FB2C 8001F32C 00000000 */   nop
    /* FB30 8001F330 0C80043C */  lui        $a0, %hi(Game_work + 0x82)
    /* FB34 8001F334 921B8490 */  lbu        $a0, %lo(Game_work + 0x82)($a0)
    /* FB38 8001F338 4A76000C */  jal        func_8001D928
    /* FB3C 8001F33C 01008430 */   andi      $a0, $a0, 0x1
    /* FB40 8001F340 62006296 */  lhu        $v0, 0x62($s3)
    /* FB44 8001F344 50006392 */  lbu        $v1, 0x50($s3)
    /* FB48 8001F348 01004224 */  addiu      $v0, $v0, 0x1
    /* FB4C 8001F34C 620062A6 */  sh         $v0, 0x62($s3)
    /* FB50 8001F350 FBFF6224 */  addiu      $v0, $v1, -0x5
    /* FB54 8001F354 0200422C */  sltiu      $v0, $v0, 0x2
    /* FB58 8001F358 09004014 */  bnez       $v0, .L8001F380
    /* FB5C 8001F35C 00000000 */   nop
    /* FB60 8001F360 00160300 */  sll        $v0, $v1, 24
    /* FB64 8001F364 03160200 */  sra        $v0, $v0, 24
    /* FB68 8001F368 0F000324 */  addiu      $v1, $zero, 0xF
    /* FB6C 8001F36C 05004310 */  beq        $v0, $v1, .L8001F384
    /* FB70 8001F370 07001124 */   addiu     $s1, $zero, 0x7
    /* FB74 8001F374 01000224 */  addiu      $v0, $zero, 0x1
    /* FB78 8001F378 650062A2 */  sb         $v0, 0x65($s3)
    /* FB7C 8001F37C 640062A2 */  sb         $v0, 0x64($s3)
  .L8001F380:
    /* FB80 8001F380 07001124 */  addiu      $s1, $zero, 0x7
  .L8001F384:
    /* FB84 8001F384 1C006226 */  addiu      $v0, $s3, 0x1C
  .L8001F388:
    /* FB88 8001F388 740140AC */  sw         $zero, 0x174($v0)
    /* FB8C 8001F38C FFFF3126 */  addiu      $s1, $s1, -0x1
    /* FB90 8001F390 FDFF2106 */  bgez       $s1, .L8001F388
    /* FB94 8001F394 FCFF4224 */   addiu     $v0, $v0, -0x4
    /* FB98 8001F398 515E000C */  jal        func_80017944
    /* FB9C 8001F39C 00000000 */   nop
    /* FBA0 8001F3A0 21100000 */  addu       $v0, $zero, $zero
    /* FBA4 8001F3A4 2400BF8F */  lw         $ra, 0x24($sp)
    /* FBA8 8001F3A8 2000B48F */  lw         $s4, 0x20($sp)
    /* FBAC 8001F3AC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* FBB0 8001F3B0 1800B28F */  lw         $s2, 0x18($sp)
    /* FBB4 8001F3B4 1400B18F */  lw         $s1, 0x14($sp)
    /* FBB8 8001F3B8 1000B08F */  lw         $s0, 0x10($sp)
    /* FBBC 8001F3BC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* FBC0 8001F3C0 0800E003 */  jr         $ra
    /* FBC4 8001F3C4 00000000 */   nop
.size func_8001F23C, . - func_8001F23C
