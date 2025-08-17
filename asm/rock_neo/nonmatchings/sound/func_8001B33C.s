.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001B33C
    /* BB3C 8001B33C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* BB40 8001B340 1800B2AF */  sw         $s2, 0x18($sp)
    /* BB44 8001B344 0A80123C */  lui        $s2, %hi(D_80098AF8)
    /* BB48 8001B348 F88A5226 */  addiu      $s2, $s2, %lo(D_80098AF8)
    /* BB4C 8001B34C 1400B1AF */  sw         $s1, 0x14($sp)
    /* BB50 8001B350 21880000 */  addu       $s1, $zero, $zero
    /* BB54 8001B354 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* BB58 8001B358 FFFF1324 */  addiu      $s3, $zero, -0x1
    /* BB5C 8001B35C 1000B0AF */  sw         $s0, 0x10($sp)
    /* BB60 8001B360 0A80103C */  lui        $s0, %hi(D_80098AFC)
    /* BB64 8001B364 FC8A1026 */  addiu      $s0, $s0, %lo(D_80098AFC)
    /* BB68 8001B368 2000BFAF */  sw         $ra, 0x20($sp)
  .L8001B36C:
    /* BB6C 8001B36C 00004486 */  lh         $a0, 0x0($s2)
    /* BB70 8001B370 00000000 */  nop
    /* BB74 8001B374 0E009310 */  beq        $a0, $s3, .L8001B3B0
    /* BB78 8001B378 00000000 */   nop
    /* BB7C 8001B37C FEFF0282 */  lb         $v0, -0x2($s0)
    /* BB80 8001B380 00000000 */  nop
    /* BB84 8001B384 0A005310 */  beq        $v0, $s3, .L8001B3B0
    /* BB88 8001B388 00000000 */   nop
    /* BB8C 8001B38C 05004014 */  bnez       $v0, .L8001B3A4
    /* BB90 8001B390 00000000 */   nop
    /* BB94 8001B394 45C0010C */  jal        func_80070114
    /* BB98 8001B398 08001026 */   addiu     $s0, $s0, 0x8
    /* BB9C 8001B39C EE6C0008 */  j          .L8001B3B8
    /* BBA0 8001B3A0 01003126 */   addiu     $s1, $s1, 0x1
  .L8001B3A4:
    /* BBA4 8001B3A4 00000592 */  lbu        $a1, 0x0($s0)
    /* BBA8 8001B3A8 4FC0010C */  jal        func_8007013C
    /* BBAC 8001B3AC 00000000 */   nop
  .L8001B3B0:
    /* BBB0 8001B3B0 08001026 */  addiu      $s0, $s0, 0x8
    /* BBB4 8001B3B4 01003126 */  addiu      $s1, $s1, 0x1
  .L8001B3B8:
    /* BBB8 8001B3B8 0400222A */  slti       $v0, $s1, 0x4
    /* BBBC 8001B3BC EBFF4014 */  bnez       $v0, .L8001B36C
    /* BBC0 8001B3C0 08005226 */   addiu     $s2, $s2, 0x8
    /* BBC4 8001B3C4 2000BF8F */  lw         $ra, 0x20($sp)
    /* BBC8 8001B3C8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* BBCC 8001B3CC 1800B28F */  lw         $s2, 0x18($sp)
    /* BBD0 8001B3D0 1400B18F */  lw         $s1, 0x14($sp)
    /* BBD4 8001B3D4 1000B08F */  lw         $s0, 0x10($sp)
    /* BBD8 8001B3D8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* BBDC 8001B3DC 0800E003 */  jr         $ra
    /* BBE0 8001B3E0 00000000 */   nop
.size func_8001B33C, . - func_8001B33C
