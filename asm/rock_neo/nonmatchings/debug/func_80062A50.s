.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80062A50
    /* 53250 80062A50 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 53254 80062A54 1000B0AF */  sw         $s0, 0x10($sp)
    /* 53258 80062A58 21808000 */  addu       $s0, $a0, $zero
    /* 5325C 80062A5C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 53260 80062A60 21900000 */  addu       $s2, $zero, $zero
    /* 53264 80062A64 1400B1AF */  sw         $s1, 0x14($sp)
    /* 53268 80062A68 0980113C */  lui        $s1, %hi(D_8008DBE0)
    /* 5326C 80062A6C E0DB3126 */  addiu      $s1, $s1, %lo(D_8008DBE0)
    /* 53270 80062A70 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 53274 80062A74 000000AE */  sw         $zero, 0x0($s0)
    /* 53278 80062A78 080000AE */  sw         $zero, 0x8($s0)
    /* 5327C 80062A7C 0C0000AE */  sw         $zero, 0xC($s0)
    /* 53280 80062A80 100000AE */  sw         $zero, 0x10($s0)
    /* 53284 80062A84 180000AE */  sw         $zero, 0x18($s0)
    /* 53288 80062A88 200000AE */  sw         $zero, 0x20($s0)
    /* 5328C 80062A8C 280000AE */  sw         $zero, 0x28($s0)
    /* 53290 80062A90 300000AE */  sw         $zero, 0x30($s0)
    /* 53294 80062A94 21200002 */  addu       $a0, $s0, $zero
  .L80062A98:
    /* 53298 80062A98 0000228E */  lw         $v0, 0x0($s1)
    /* 5329C 80062A9C 04003126 */  addiu      $s1, $s1, 0x4
    /* 532A0 80062AA0 09F84000 */  jalr       $v0
    /* 532A4 80062AA4 01005226 */   addiu     $s2, $s2, 0x1
    /* 532A8 80062AA8 0500422A */  slti       $v0, $s2, 0x5
    /* 532AC 80062AAC FAFF4014 */  bnez       $v0, .L80062A98
    /* 532B0 80062AB0 21200002 */   addu      $a0, $s0, $zero
    /* 532B4 80062AB4 21200000 */  addu       $a0, $zero, $zero
    /* 532B8 80062AB8 01000224 */  addiu      $v0, $zero, 0x1
    /* 532BC 80062ABC 080002A2 */  sb         $v0, 0x8($s0)
    /* 532C0 80062AC0 0980053C */  lui        $a1, %hi(D_8008CACC)
    /* 532C4 80062AC4 CCCAA58C */  lw         $a1, %lo(D_8008CACC)($a1)
    /* 532C8 80062AC8 0B4E010C */  jal        MojiTaskExec
    /* 532CC 80062ACC FFFF0624 */   addiu     $a2, $zero, -0x1
    /* 532D0 80062AD0 01000424 */  addiu      $a0, $zero, 0x1
    /* 532D4 80062AD4 0980053C */  lui        $a1, %hi(D_8008CAD0)
    /* 532D8 80062AD8 D0CAA58C */  lw         $a1, %lo(D_8008CAD0)($a1)
    /* 532DC 80062ADC 0B4E010C */  jal        MojiTaskExec
    /* 532E0 80062AE0 FFFF0624 */   addiu     $a2, $zero, -0x1
    /* 532E4 80062AE4 21100000 */  addu       $v0, $zero, $zero
    /* 532E8 80062AE8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 532EC 80062AEC 1800B28F */  lw         $s2, 0x18($sp)
    /* 532F0 80062AF0 1400B18F */  lw         $s1, 0x14($sp)
    /* 532F4 80062AF4 1000B08F */  lw         $s0, 0x10($sp)
    /* 532F8 80062AF8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 532FC 80062AFC 0800E003 */  jr         $ra
    /* 53300 80062B00 00000000 */   nop
.size func_80062A50, . - func_80062A50
