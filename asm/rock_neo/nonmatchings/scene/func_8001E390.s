.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001E390
    /* EB90 8001E390 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* EB94 8001E394 1400B1AF */  sw         $s1, 0x14($sp)
    /* EB98 8001E398 21888000 */  addu       $s1, $a0, $zero
    /* EB9C 8001E39C 1000B0AF */  sw         $s0, 0x10($sp)
    /* EBA0 8001E3A0 E0021024 */  addiu      $s0, $zero, 0x2E0
    /* EBA4 8001E3A4 1800BFAF */  sw         $ra, 0x18($sp)
  .L8001E3A8:
    /* EBA8 8001E3A8 05003016 */  bne        $s1, $s0, .L8001E3C0
    /* EBAC 8001E3AC 00000000 */   nop
    /* EBB0 8001E3B0 A376000C */  jal        Sce_flag_on
    /* EBB4 8001E3B4 21200002 */   addu      $a0, $s0, $zero
    /* EBB8 8001E3B8 F3780008 */  j          .L8001E3CC
    /* EBBC 8001E3BC 01001026 */   addiu     $s0, $s0, 0x1
  .L8001E3C0:
    /* EBC0 8001E3C0 3477000C */  jal        Sce_flag_off
    /* EBC4 8001E3C4 21200002 */   addu      $a0, $s0, $zero
    /* EBC8 8001E3C8 01001026 */  addiu      $s0, $s0, 0x1
  .L8001E3CC:
    /* EBCC 8001E3CC EC02022E */  sltiu      $v0, $s0, 0x2EC
    /* EBD0 8001E3D0 F5FF4014 */  bnez       $v0, .L8001E3A8
    /* EBD4 8001E3D4 00000000 */   nop
    /* EBD8 8001E3D8 1800BF8F */  lw         $ra, 0x18($sp)
    /* EBDC 8001E3DC 1400B18F */  lw         $s1, 0x14($sp)
    /* EBE0 8001E3E0 1000B08F */  lw         $s0, 0x10($sp)
    /* EBE4 8001E3E4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* EBE8 8001E3E8 0800E003 */  jr         $ra
    /* EBEC 8001E3EC 00000000 */   nop
.size func_8001E390, . - func_8001E390
