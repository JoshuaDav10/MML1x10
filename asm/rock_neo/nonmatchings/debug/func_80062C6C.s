.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80062C6C
    /* 5346C 80062C6C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 53470 80062C70 1000B0AF */  sw         $s0, 0x10($sp)
    /* 53474 80062C74 21808000 */  addu       $s0, $a0, $zero
    /* 53478 80062C78 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5347C 80062C7C 21900000 */  addu       $s2, $zero, $zero
    /* 53480 80062C80 1400B1AF */  sw         $s1, 0x14($sp)
    /* 53484 80062C84 0980113C */  lui        $s1, %hi(D_8008DBE0)
    /* 53488 80062C88 E0DB3126 */  addiu      $s1, $s1, %lo(D_8008DBE0)
    /* 5348C 80062C8C 03000224 */  addiu      $v0, $zero, 0x3
    /* 53490 80062C90 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 53494 80062C94 000000AE */  sw         $zero, 0x0($s0)
    /* 53498 80062C98 080000AE */  sw         $zero, 0x8($s0)
    /* 5349C 80062C9C 0C0000AE */  sw         $zero, 0xC($s0)
    /* 534A0 80062CA0 100002A2 */  sb         $v0, 0x10($s0)
    /* 534A4 80062CA4 180002A2 */  sb         $v0, 0x18($s0)
    /* 534A8 80062CA8 200002A2 */  sb         $v0, 0x20($s0)
    /* 534AC 80062CAC 280002A2 */  sb         $v0, 0x28($s0)
    /* 534B0 80062CB0 300002A2 */  sb         $v0, 0x30($s0)
  .L80062CB4:
    /* 534B4 80062CB4 0000228E */  lw         $v0, 0x0($s1)
    /* 534B8 80062CB8 04003126 */  addiu      $s1, $s1, 0x4
    /* 534BC 80062CBC 01005226 */  addiu      $s2, $s2, 0x1
    /* 534C0 80062CC0 09F84000 */  jalr       $v0
    /* 534C4 80062CC4 21200002 */   addu      $a0, $s0, $zero
    /* 534C8 80062CC8 0500422A */  slti       $v0, $s2, 0x5
    /* 534CC 80062CCC F9FF4014 */  bnez       $v0, .L80062CB4
    /* 534D0 80062CD0 01000224 */   addiu     $v0, $zero, 0x1
    /* 534D4 80062CD4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 534D8 80062CD8 1800B28F */  lw         $s2, 0x18($sp)
    /* 534DC 80062CDC 1400B18F */  lw         $s1, 0x14($sp)
    /* 534E0 80062CE0 1000B08F */  lw         $s0, 0x10($sp)
    /* 534E4 80062CE4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 534E8 80062CE8 0800E003 */  jr         $ra
    /* 534EC 80062CEC 00000000 */   nop
.size func_80062C6C, . - func_80062C6C
