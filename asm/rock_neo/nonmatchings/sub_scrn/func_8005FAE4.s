.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005FAE4
    /* 502E4 8005FAE4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 502E8 8005FAE8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 502EC 8005FAEC 21808000 */  addu       $s0, $a0, $zero
    /* 502F0 8005FAF0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 502F4 8005FAF4 02000382 */  lb         $v1, 0x2($s0)
    /* 502F8 8005FAF8 00000000 */  nop
    /* 502FC 8005FAFC 05006010 */  beqz       $v1, .L8005FB14
    /* 50300 8005FB00 01000224 */   addiu     $v0, $zero, 0x1
    /* 50304 8005FB04 1E006210 */  beq        $v1, $v0, .L8005FB80
    /* 50308 8005FB08 0008033C */   lui       $v1, (0x8000000 >> 16)
    /* 5030C 8005FB0C E87E0108 */  j          .L8005FBA0
    /* 50310 8005FB10 00000000 */   nop
  .L8005FB14:
    /* 50314 8005FB14 04000292 */  lbu        $v0, 0x4($s0)
    /* 50318 8005FB18 0980013C */  lui        $at, %hi(D_8008DAF4)
    /* 5031C 8005FB1C 21082200 */  addu       $at, $at, $v0
    /* 50320 8005FB20 F4DA2490 */  lbu        $a0, %lo(D_8008DAF4)($at)
    /* 50324 8005FB24 9676000C */  jal        Sce_flag_test
    /* 50328 8005FB28 20058424 */   addiu     $a0, $a0, 0x520
    /* 5032C 8005FB2C 0B004010 */  beqz       $v0, .L8005FB5C
    /* 50330 8005FB30 82000424 */   addiu     $a0, $zero, 0x82
    /* 50334 8005FB34 01000524 */  addiu      $a1, $zero, 0x1
    /* 50338 8005FB38 0268000C */  jal        Sound_call
    /* 5033C 8005FB3C 21300000 */   addu      $a2, $zero, $zero
    /* 50340 8005FB40 21200000 */  addu       $a0, $zero, $zero
    /* 50344 8005FB44 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 50348 8005FB48 05000692 */  lbu        $a2, 0x5($s0)
    /* 5034C 8005FB4C 0B4E010C */  jal        MojiTaskExec
    /* 50350 8005FB50 0020A534 */   ori       $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 50354 8005FB54 DB7E0108 */  j          .L8005FB6C
    /* 50358 8005FB58 00000000 */   nop
  .L8005FB5C:
    /* 5035C 8005FB5C 83000424 */  addiu      $a0, $zero, 0x83
    /* 50360 8005FB60 01000524 */  addiu      $a1, $zero, 0x1
    /* 50364 8005FB64 0268000C */  jal        Sound_call
    /* 50368 8005FB68 21300000 */   addu      $a2, $zero, $zero
  .L8005FB6C:
    /* 5036C 8005FB6C 02000292 */  lbu        $v0, 0x2($s0)
    /* 50370 8005FB70 00000000 */  nop
    /* 50374 8005FB74 01004224 */  addiu      $v0, $v0, 0x1
    /* 50378 8005FB78 E87E0108 */  j          .L8005FBA0
    /* 5037C 8005FB7C 020002A2 */   sb        $v0, 0x2($s0)
  .L8005FB80:
    /* 50380 8005FB80 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 50384 8005FB84 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 50388 8005FB88 00000000 */  nop
    /* 5038C 8005FB8C 24104300 */  and        $v0, $v0, $v1
    /* 50390 8005FB90 03004014 */  bnez       $v0, .L8005FBA0
    /* 50394 8005FB94 02000224 */   addiu     $v0, $zero, 0x2
    /* 50398 8005FB98 010002A2 */  sb         $v0, 0x1($s0)
    /* 5039C 8005FB9C 020000A2 */  sb         $zero, 0x2($s0)
  .L8005FBA0:
    /* 503A0 8005FBA0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 503A4 8005FBA4 1000B08F */  lw         $s0, 0x10($sp)
    /* 503A8 8005FBA8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 503AC 8005FBAC 0800E003 */  jr         $ra
    /* 503B0 8005FBB0 00000000 */   nop
.size func_8005FAE4, . - func_8005FAE4
