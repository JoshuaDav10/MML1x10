.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002CB18
    /* 1D318 8002CB18 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 1D31C 8002CB1C 3000B4AF */  sw         $s4, 0x30($sp)
    /* 1D320 8002CB20 0A80143C */  lui        $s4, %hi(D_800987D8)
    /* 1D324 8002CB24 D887948E */  lw         $s4, %lo(D_800987D8)($s4)
    /* 1D328 8002CB28 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 1D32C 8002CB2C 21980000 */  addu       $s3, $zero, $zero
    /* 1D330 8002CB30 3400BFAF */  sw         $ra, 0x34($sp)
    /* 1D334 8002CB34 2800B2AF */  sw         $s2, 0x28($sp)
    /* 1D338 8002CB38 2400B1AF */  sw         $s1, 0x24($sp)
    /* 1D33C 8002CB3C 1C00801A */  blez       $s4, .L8002CBB0
    /* 1D340 8002CB40 2000B0AF */   sw        $s0, 0x20($sp)
    /* 1D344 8002CB44 0B80123C */  lui        $s2, %hi(D_800ACE00)
    /* 1D348 8002CB48 00CE5226 */  addiu      $s2, $s2, %lo(D_800ACE00)
    /* 1D34C 8002CB4C 06005126 */  addiu      $s1, $s2, 0x6
    /* 1D350 8002CB50 21800000 */  addu       $s0, $zero, $zero
    /* 1D354 8002CB54 21204002 */  addu       $a0, $s2, $zero
  .L8002CB58:
    /* 1D358 8002CB58 0C005226 */  addiu      $s2, $s2, 0xC
    /* 1D35C 8002CB5C 00002586 */  lh         $a1, 0x0($s1)
    /* 1D360 8002CB60 01007326 */  addiu      $s3, $s3, 0x1
    /* 1D364 8002CB64 00F0A630 */  andi       $a2, $a1, 0xF000
    /* 1D368 8002CB68 FF0FA730 */  andi       $a3, $a1, 0xFFF
    /* 1D36C 8002CB6C 0B80013C */  lui        $at, %hi(D_800ACE08)
    /* 1D370 8002CB70 21083000 */  addu       $at, $at, $s0
    /* 1D374 8002CB74 08CE2594 */  lhu        $a1, %lo(D_800ACE08)($at)
    /* 1D378 8002CB78 82310600 */  srl        $a2, $a2, 6
    /* 1D37C 8002CB7C 82130500 */  srl        $v0, $a1, 14
    /* 1D380 8002CB80 000022A6 */  sh         $v0, 0x0($s1)
    /* 1D384 8002CB84 0C003126 */  addiu      $s1, $s1, 0xC
    /* 1D388 8002CB88 0B80013C */  lui        $at, %hi(D_800ACE0A)
    /* 1D38C 8002CB8C 21083000 */  addu       $at, $at, $s0
    /* 1D390 8002CB90 0ACE2284 */  lh         $v0, %lo(D_800ACE0A)($at)
    /* 1D394 8002CB94 0C001026 */  addiu      $s0, $s0, 0xC
    /* 1D398 8002CB98 FF3FA530 */  andi       $a1, $a1, 0x3FFF
    /* 1D39C 8002CB9C F7B2000C */  jal        func_8002CBDC
    /* 1D3A0 8002CBA0 1000A2AF */   sw        $v0, 0x10($sp)
    /* 1D3A4 8002CBA4 2A107402 */  slt        $v0, $s3, $s4
    /* 1D3A8 8002CBA8 EBFF4014 */  bnez       $v0, .L8002CB58
    /* 1D3AC 8002CBAC 21204002 */   addu      $a0, $s2, $zero
  .L8002CBB0:
    /* 1D3B0 8002CBB0 0A80013C */  lui        $at, %hi(D_800987D8)
    /* 1D3B4 8002CBB4 D88720AC */  sw         $zero, %lo(D_800987D8)($at)
    /* 1D3B8 8002CBB8 3400BF8F */  lw         $ra, 0x34($sp)
    /* 1D3BC 8002CBBC 3000B48F */  lw         $s4, 0x30($sp)
    /* 1D3C0 8002CBC0 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 1D3C4 8002CBC4 2800B28F */  lw         $s2, 0x28($sp)
    /* 1D3C8 8002CBC8 2400B18F */  lw         $s1, 0x24($sp)
    /* 1D3CC 8002CBCC 2000B08F */  lw         $s0, 0x20($sp)
    /* 1D3D0 8002CBD0 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 1D3D4 8002CBD4 0800E003 */  jr         $ra
    /* 1D3D8 8002CBD8 00000000 */   nop
.size func_8002CB18, . - func_8002CB18
