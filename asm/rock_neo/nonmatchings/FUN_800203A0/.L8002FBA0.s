.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L8002FBA0
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
  glabel func_8002FBF4
    /* 203F4 8002FBF4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 203F8 8002FBF8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 203FC 8002FBFC 0A80103C */  lui        $s0, (0x800A0000 >> 16)
.size .L8002FBA0, . - .L8002FBA0
