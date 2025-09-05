.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005F210
    /* 4FA10 8005F210 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4FA14 8005F214 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4FA18 8005F218 21808000 */  addu       $s0, $a0, $zero
    /* 4FA1C 8005F21C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 4FA20 8005F220 01000382 */  lb         $v1, 0x1($s0)
    /* 4FA24 8005F224 01000224 */  addiu      $v0, $zero, 0x1
    /* 4FA28 8005F228 17006210 */  beq        $v1, $v0, .L8005F288
    /* 4FA2C 8005F22C 21206000 */   addu      $a0, $v1, $zero
    /* 4FA30 8005F230 02006228 */  slti       $v0, $v1, 0x2
    /* 4FA34 8005F234 05004010 */  beqz       $v0, .L8005F24C
    /* 4FA38 8005F238 00000000 */   nop
    /* 4FA3C 8005F23C 0A006010 */  beqz       $v1, .L8005F268
    /* 4FA40 8005F240 21100000 */   addu      $v0, $zero, $zero
    /* 4FA44 8005F244 EF7C0108 */  j          .L8005F3BC
    /* 4FA48 8005F248 00000000 */   nop
  .L8005F24C:
    /* 4FA4C 8005F24C 02000224 */  addiu      $v0, $zero, 0x2
    /* 4FA50 8005F250 21006210 */  beq        $v1, $v0, .L8005F2D8
    /* 4FA54 8005F254 03000224 */   addiu     $v0, $zero, 0x3
    /* 4FA58 8005F258 34006210 */  beq        $v1, $v0, .L8005F32C
    /* 4FA5C 8005F25C 21100000 */   addu      $v0, $zero, $zero
    /* 4FA60 8005F260 EF7C0108 */  j          .L8005F3BC
    /* 4FA64 8005F264 00000000 */   nop
  .L8005F268:
    /* 4FA68 8005F268 8C4E010C */  jal        MojiTaskKill
    /* 4FA6C 8005F26C 00000000 */   nop
    /* 4FA70 8005F270 CA8F010C */  jal        Game_logo_kill
    /* 4FA74 8005F274 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 4FA78 8005F278 1075000C */  jal        Cd_read_comb
    /* 4FA7C 8005F27C CC000424 */   addiu     $a0, $zero, 0xCC
    /* 4FA80 8005F280 B17C0108 */  j          .L8005F2C4
    /* 4FA84 8005F284 00000000 */   nop
  .L8005F288:
    /* 4FA88 8005F288 0E76000C */  jal        Cd_read_sync2
    /* 4FA8C 8005F28C 00000000 */   nop
    /* 4FA90 8005F290 4A004014 */  bnez       $v0, .L8005F3BC
    /* 4FA94 8005F294 21100000 */   addu      $v0, $zero, $zero
    /* 4FA98 8005F298 EB75000C */  jal        func_8001D7AC
    /* 4FA9C 8005F29C 16000424 */   addiu     $a0, $zero, 0x16
    /* 4FAA0 8005F2A0 01000424 */  addiu      $a0, $zero, 0x1
    /* 4FAA4 8005F2A4 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4FAA8 8005F2A8 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4FAAC 8005F2AC 0B4E010C */  jal        MojiTaskExec
    /* 4FAB0 8005F2B0 19000624 */   addiu     $a2, $zero, 0x19
    /* 4FAB4 8005F2B4 21200000 */  addu       $a0, $zero, $zero
    /* 4FAB8 8005F2B8 0200053C */  lui        $a1, (0x20002 >> 16)
    /* 4FABC 8005F2BC F08F010C */  jal        func_80063FC0
    /* 4FAC0 8005F2C0 0200A534 */   ori       $a1, $a1, (0x20002 & 0xFFFF)
  .L8005F2C4:
    /* 4FAC4 8005F2C4 01000292 */  lbu        $v0, 0x1($s0)
    /* 4FAC8 8005F2C8 00000000 */  nop
    /* 4FACC 8005F2CC 01004224 */  addiu      $v0, $v0, 0x1
    /* 4FAD0 8005F2D0 EE7C0108 */  j          .L8005F3B8
    /* 4FAD4 8005F2D4 010002A2 */   sb        $v0, 0x1($s0)
  .L8005F2D8:
    /* 4FAD8 8005F2D8 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 4FADC 8005F2DC 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 4FAE0 8005F2E0 0040033C */  lui        $v1, (0x40000000 >> 16)
    /* 4FAE4 8005F2E4 24104300 */  and        $v0, $v0, $v1
    /* 4FAE8 8005F2E8 06004010 */  beqz       $v0, .L8005F304
    /* 4FAEC 8005F2EC 01008224 */   addiu     $v0, $a0, 0x1
    /* 4FAF0 8005F2F0 010002A2 */  sb         $v0, 0x1($s0)
    /* 4FAF4 8005F2F4 0A80023C */  lui        $v0, %hi(D_80098B2E)
    /* 4FAF8 8005F2F8 2E8B4290 */  lbu        $v0, %lo(D_80098B2E)($v0)
    /* 4FAFC 8005F2FC CB7C0108 */  j          .L8005F32C
    /* 4FB00 8005F300 040002A2 */   sb        $v0, 0x4($s0)
  .L8005F304:
    /* 4FB04 8005F304 9983010C */  jal        Sub_screen_cancel_check
    /* 4FB08 8005F308 00000000 */   nop
    /* 4FB0C 8005F30C 03004010 */  beqz       $v0, .L8005F31C
    /* 4FB10 8005F310 00000000 */   nop
    /* 4FB14 8005F314 EE7C0108 */  j          .L8005F3B8
    /* 4FB18 8005F318 000000AE */   sw        $zero, 0x0($s0)
  .L8005F31C:
    /* 4FB1C 8005F31C B083010C */  jal        Sub_screen_shift_check
    /* 4FB20 8005F320 21200002 */   addu      $a0, $s0, $zero
    /* 4FB24 8005F324 EF7C0108 */  j          .L8005F3BC
    /* 4FB28 8005F328 21100000 */   addu      $v0, $zero, $zero
  .L8005F32C:
    /* 4FB2C 8005F32C 04000392 */  lbu        $v1, 0x4($s0)
    /* 4FB30 8005F330 00000000 */  nop
    /* 4FB34 8005F334 1200622C */  sltiu      $v0, $v1, 0x12
    /* 4FB38 8005F338 1F004010 */  beqz       $v0, .L8005F3B8
    /* 4FB3C 8005F33C 80100300 */   sll       $v0, $v1, 2
    /* 4FB40 8005F340 0180013C */  lui        $at, %hi(jtbl_80011284)
    /* 4FB44 8005F344 21082200 */  addu       $at, $at, $v0
    /* 4FB48 8005F348 8412228C */  lw         $v0, %lo(jtbl_80011284)($at)
    /* 4FB4C 8005F34C 00000000 */  nop
    /* 4FB50 8005F350 08004000 */  jr         $v0
    /* 4FB54 8005F354 00000000 */   nop
  glabel .L8005F358
    /* 4FB58 8005F358 F47C010C */  jal        func_8005F3D0
    /* 4FB5C 8005F35C 21200002 */   addu      $a0, $s0, $zero
    /* 4FB60 8005F360 EF7C0108 */  j          .L8005F3BC
    /* 4FB64 8005F364 21100000 */   addu      $v0, $zero, $zero
  glabel .L8005F368
    /* 4FB68 8005F368 827D010C */  jal        func_8005F608
    /* 4FB6C 8005F36C 21200002 */   addu      $a0, $s0, $zero
    /* 4FB70 8005F370 EF7C0108 */  j          .L8005F3BC
    /* 4FB74 8005F374 21100000 */   addu      $v0, $zero, $zero
  glabel .L8005F378
    /* 4FB78 8005F378 E37C0108 */  j          .L8005F38C
    /* 4FB7C 8005F37C 45000224 */   addiu     $v0, $zero, 0x45
  glabel .L8005F380
    /* 4FB80 8005F380 E37C0108 */  j          .L8005F38C
    /* 4FB84 8005F384 46000224 */   addiu     $v0, $zero, 0x46
  glabel .L8005F388
    /* 4FB88 8005F388 47000224 */  addiu      $v0, $zero, 0x47
  .L8005F38C:
    /* 4FB8C 8005F38C 050002A2 */  sb         $v0, 0x5($s0)
    /* 4FB90 8005F390 B97E010C */  jal        func_8005FAE4
    /* 4FB94 8005F394 21200002 */   addu      $a0, $s0, $zero
    /* 4FB98 8005F398 EF7C0108 */  j          .L8005F3BC
    /* 4FB9C 8005F39C 21100000 */   addu      $v0, $zero, $zero
  glabel .L8005F3A0
    /* 4FBA0 8005F3A0 ED7E010C */  jal        func_8005FBB4
    /* 4FBA4 8005F3A4 21200002 */   addu      $a0, $s0, $zero
    /* 4FBA8 8005F3A8 EF7C0108 */  j          .L8005F3BC
    /* 4FBAC 8005F3AC 21100000 */   addu      $v0, $zero, $zero
  glabel .L8005F3B0
    /* 4FBB0 8005F3B0 EF7F010C */  jal        func_8005FFBC
    /* 4FBB4 8005F3B4 21200002 */   addu      $a0, $s0, $zero
  .L8005F3B8:
    /* 4FBB8 8005F3B8 21100000 */  addu       $v0, $zero, $zero
  .L8005F3BC:
    /* 4FBBC 8005F3BC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4FBC0 8005F3C0 1800B08F */  lw         $s0, 0x18($sp)
    /* 4FBC4 8005F3C4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4FBC8 8005F3C8 0800E003 */  jr         $ra
    /* 4FBCC 8005F3CC 00000000 */   nop
.size func_8005F210, . - func_8005F210
