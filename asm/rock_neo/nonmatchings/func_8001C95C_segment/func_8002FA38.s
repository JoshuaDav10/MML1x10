.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002FA38
    /* 20238 8002FA38 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2023C 8002FA3C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 20240 8002FA40 21888000 */  addu       $s1, $a0, $zero
    /* 20244 8002FA44 1800B0AF */  sw         $s0, 0x18($sp)
    /* 20248 8002FA48 2180A000 */  addu       $s0, $a1, $zero
    /* 2024C 8002FA4C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 20250 8002FA50 2190C000 */  addu       $s2, $a2, $zero
    /* 20254 8002FA54 2800BFAF */  sw         $ra, 0x28($sp)
    /* 20258 8002FA58 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2025C 8002FA5C 01002492 */  lbu        $a0, 0x1($s1)
    /* 20260 8002FA60 0000138E */  lw         $s3, 0x0($s0)
    /* 20264 8002FA64 9DBF000C */  jal        func_8002FE74
    /* 20268 8002FA68 04001026 */   addiu     $s0, $s0, 0x4
    /* 2026C 8002FA6C 21204000 */  addu       $a0, $v0, $zero
    /* 20270 8002FA70 60000224 */  addiu      $v0, $zero, 0x60
    /* 20274 8002FA74 07008214 */  bne        $a0, $v0, .L8002FA94
    /* 20278 8002FA78 21280002 */   addu      $a1, $s0, $zero
    /* 2027C 8002FA7C 02002292 */  lbu        $v0, 0x2($s1)
    /* 20280 8002FA80 00000000 */  nop
    /* 20284 8002FA84 8000422C */  sltiu      $v0, $v0, 0x80
    /* 20288 8002FA88 02004014 */  bnez       $v0, .L8002FA94
    /* 2028C 8002FA8C 00000000 */   nop
    /* 20290 8002FA90 10000424 */  addiu      $a0, $zero, 0x10
  .L8002FA94:
    /* 20294 8002FA94 4C00601A */  blez       $s3, .L8002FBC8
    /* 20298 8002FA98 21300000 */   addu      $a2, $zero, $zero
    /* 2029C 8002FA9C 0400B024 */  addiu      $s0, $a1, 0x4
  .L8002FAA0:
    /* 202A0 8002FAA0 0000A290 */  lbu        $v0, 0x0($a1)
    /* 202A4 8002FAA4 00000000 */  nop
    /* 202A8 8002FAA8 42008214 */  bne        $a0, $v0, .L8002FBB4
    /* 202AC 8002FAAC 00000000 */   nop
    /* 202B0 8002FAB0 02002392 */  lbu        $v1, 0x2($s1)
    /* 202B4 8002FAB4 FDFF0292 */  lbu        $v0, -0x3($s0)
    /* 202B8 8002FAB8 00000000 */  nop
    /* 202BC 8002FABC 3D006214 */  bne        $v1, $v0, .L8002FBB4
    /* 202C0 8002FAC0 00000000 */   nop
    /* 202C4 8002FAC4 06004012 */  beqz       $s2, .L8002FAE0
    /* 202C8 8002FAC8 40000224 */   addiu     $v0, $zero, 0x40
    /* 202CC 8002FACC 00004392 */  lbu        $v1, 0x0($s2)
    /* 202D0 8002FAD0 FEFF0292 */  lbu        $v0, -0x2($s0)
    /* 202D4 8002FAD4 00000000 */  nop
    /* 202D8 8002FAD8 36006214 */  bne        $v1, $v0, .L8002FBB4
    /* 202DC 8002FADC 40000224 */   addiu     $v0, $zero, 0x40
  .L8002FAE0:
    /* 202E0 8002FAE0 18008210 */  beq        $a0, $v0, .L8002FB44
    /* 202E4 8002FAE4 41008228 */   slti      $v0, $a0, 0x41
    /* 202E8 8002FAE8 07004010 */  beqz       $v0, .L8002FB08
    /* 202EC 8002FAEC 10000224 */   addiu     $v0, $zero, 0x10
    /* 202F0 8002FAF0 28008210 */  beq        $a0, $v0, .L8002FB94
    /* 202F4 8002FAF4 20000224 */   addiu     $v0, $zero, 0x20
    /* 202F8 8002FAF8 13008210 */  beq        $a0, $v0, .L8002FB48
    /* 202FC 8002FAFC F8002526 */   addiu     $a1, $s1, 0xF8
    /* 20300 8002FB00 F5BE0008 */  j          .L8002FBD4
    /* 20304 8002FB04 01000224 */   addiu     $v0, $zero, 0x1
  .L8002FB08:
    /* 20308 8002FB08 80000224 */  addiu      $v0, $zero, 0x80
    /* 2030C 8002FB0C 24008210 */  beq        $a0, $v0, .L8002FBA0
    /* 20310 8002FB10 00000000 */   nop
    /* 20314 8002FB14 81008228 */  slti       $v0, $a0, 0x81
    /* 20318 8002FB18 05004010 */  beqz       $v0, .L8002FB30
    /* 2031C 8002FB1C 60000224 */   addiu     $v0, $zero, 0x60
    /* 20320 8002FB20 1C008210 */  beq        $a0, $v0, .L8002FB94
    /* 20324 8002FB24 01000224 */   addiu     $v0, $zero, 0x1
    /* 20328 8002FB28 F5BE0008 */  j          .L8002FBD4
    /* 2032C 8002FB2C 00000000 */   nop
  .L8002FB30:
    /* 20330 8002FB30 E0000224 */  addiu      $v0, $zero, 0xE0
    /* 20334 8002FB34 1A008210 */  beq        $a0, $v0, .L8002FBA0
    /* 20338 8002FB38 00000000 */   nop
    /* 2033C 8002FB3C F5BE0008 */  j          .L8002FBD4
    /* 20340 8002FB40 01000224 */   addiu     $v0, $zero, 0x1
  .L8002FB44:
    /* 20344 8002FB44 F8002526 */  addiu      $a1, $s1, 0xF8
  .L8002FB48:
    /* 20348 8002FB48 0000048E */  lw         $a0, 0x0($s0)
    /* 2034C 8002FB4C 18000624 */  addiu      $a2, $zero, 0x18
    /* 20350 8002FB50 A15D000C */  jal        func_80017684
    /* 20354 8002FB54 10008424 */   addiu     $a0, $a0, 0x10
    /* 20358 8002FB58 0400028E */  lw         $v0, 0x4($s0)
    /* 2035C 8002FB5C 00000000 */  nop
    /* 20360 8002FB60 0000428C */  lw         $v0, 0x0($v0)
    /* 20364 8002FB64 00000000 */  nop
    /* 20368 8002FB68 9C0022AE */  sw         $v0, 0x9C($s1)
    /* 2036C 8002FB6C 0400028E */  lw         $v0, 0x4($s0)
    /* 20370 8002FB70 00000000 */  nop
    /* 20374 8002FB74 04004224 */  addiu      $v0, $v0, 0x4
    /* 20378 8002FB78 A00022AE */  sw         $v0, 0xA0($s1)
    /* 2037C 8002FB7C 0000028E */  lw         $v0, 0x0($s0)
    /* 20380 8002FB80 00000000 */  nop
    /* 20384 8002FB84 880022AE */  sw         $v0, 0x88($s1)
    /* 20388 8002FB88 0800028E */  lw         $v0, 0x8($s0)
    /* 2038C 8002FB8C EBBE0008 */  j          .L8002FBAC
    /* 20390 8002FB90 900022AE */   sw        $v0, 0x90($s1)
  .L8002FB94:
    /* 20394 8002FB94 0000028E */  lw         $v0, 0x0($s0)
    /* 20398 8002FB98 EBBE0008 */  j          .L8002FBAC
    /* 2039C 8002FB9C 880022AE */   sw        $v0, 0x88($s1)
  .L8002FBA0:
    /* 203A0 8002FBA0 0000028E */  lw         $v0, 0x0($s0)
    /* 203A4 8002FBA4 00000000 */  nop
    /* 203A8 8002FBA8 140022AE */  sw         $v0, 0x14($s1)
  .L8002FBAC:
    /* 203AC 8002FBAC F5BE0008 */  j          .L8002FBD4
    /* 203B0 8002FBB0 01000224 */   addiu     $v0, $zero, 0x1
  .L8002FBB4:
    /* 203B4 8002FBB4 0100C624 */  addiu      $a2, $a2, 0x1
    /* 203B8 8002FBB8 10001026 */  addiu      $s0, $s0, 0x10
    /* 203BC 8002FBBC 2A10D300 */  slt        $v0, $a2, $s3
    /* 203C0 8002FBC0 B7FF4014 */  bnez       $v0, .L8002FAA0
    /* 203C4 8002FBC4 1000A524 */   addiu     $a1, $a1, 0x10
  .L8002FBC8:
    /* 203C8 8002FBC8 6587013C */  lui        $at, %hi(D_87654321)
    /* 203CC 8002FBCC 214320AC */  sw         $zero, %lo(D_87654321)($at)
    /* 203D0 8002FBD0 21100000 */  addu       $v0, $zero, $zero
  .L8002FBD4:
    /* 203D4 8002FBD4 2800BF8F */  lw         $ra, 0x28($sp)
    /* 203D8 8002FBD8 2400B38F */  lw         $s3, 0x24($sp)
    /* 203DC 8002FBDC 2000B28F */  lw         $s2, 0x20($sp)
    /* 203E0 8002FBE0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 203E4 8002FBE4 1800B08F */  lw         $s0, 0x18($sp)
    /* 203E8 8002FBE8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 203EC 8002FBEC 0800E003 */  jr         $ra
    /* 203F0 8002FBF0 00000000 */   nop
.size func_8002FA38, . - func_8002FA38
