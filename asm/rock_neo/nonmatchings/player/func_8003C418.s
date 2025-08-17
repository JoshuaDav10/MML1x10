.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003C418
    /* 2CC18 8003C418 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2CC1C 8003C41C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2CC20 8003C420 21808000 */  addu       $s0, $a0, $zero
    /* 2CC24 8003C424 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2CC28 8003C428 08000292 */  lbu        $v0, 0x8($s0)
    /* 2CC2C 8003C42C 00000000 */  nop
    /* 2CC30 8003C430 80100200 */  sll        $v0, $v0, 2
    /* 2CC34 8003C434 0980013C */  lui        $at, %hi(D_80089F94)
    /* 2CC38 8003C438 21082200 */  addu       $at, $at, $v0
    /* 2CC3C 8003C43C 949F228C */  lw         $v0, %lo(D_80089F94)($at)
    /* 2CC40 8003C440 00000000 */  nop
    /* 2CC44 8003C444 09F84000 */  jalr       $v0
    /* 2CC48 8003C448 00000000 */   nop
    /* 2CC4C 8003C44C 930C010C */  jal        func_8004324C
    /* 2CC50 8003C450 21200002 */   addu      $a0, $s0, $zero
    /* 2CC54 8003C454 05004014 */  bnez       $v0, .L8003C46C
    /* 2CC58 8003C458 00000000 */   nop
    /* 2CC5C 8003C45C AC000292 */  lbu        $v0, 0xAC($s0)
    /* 2CC60 8003C460 A4000392 */  lbu        $v1, 0xA4($s0)
    /* 2CC64 8003C464 040102A2 */  sb         $v0, 0x104($s0)
    /* 2CC68 8003C468 000103A2 */  sb         $v1, 0x100($s0)
  .L8003C46C:
    /* 2CC6C 8003C46C 04010692 */  lbu        $a2, 0x104($s0)
    /* 2CC70 8003C470 05010292 */  lbu        $v0, 0x105($s0)
    /* 2CC74 8003C474 00000000 */  nop
    /* 2CC78 8003C478 0800C210 */  beq        $a2, $v0, .L8003C49C
    /* 2CC7C 8003C47C 21200002 */   addu      $a0, $s0, $zero
    /* 2CC80 8003C480 74010592 */  lbu        $a1, 0x174($s0)
    /* 2CC84 8003C484 00010792 */  lbu        $a3, 0x100($s0)
    /* 2CC88 8003C488 72C8000C */  jal        func_800321C8
    /* 2CC8C 8003C48C 0300A530 */   andi      $a1, $a1, 0x3
    /* 2CC90 8003C490 04010292 */  lbu        $v0, 0x104($s0)
    /* 2CC94 8003C494 2AF10008 */  j          .L8003C4A8
    /* 2CC98 8003C498 050102A2 */   sb        $v0, 0x105($s0)
  .L8003C49C:
    /* 2CC9C 8003C49C 74010592 */  lbu        $a1, 0x174($s0)
    /* 2CCA0 8003C4A0 FFC8000C */  jal        func_800323FC
    /* 2CCA4 8003C4A4 0300A530 */   andi      $a1, $a1, 0x3
  .L8003C4A8:
    /* 2CCA8 8003C4A8 AC000592 */  lbu        $a1, 0xAC($s0)
    /* 2CCAC 8003C4AC AD000292 */  lbu        $v0, 0xAD($s0)
    /* 2CCB0 8003C4B0 00000000 */  nop
    /* 2CCB4 8003C4B4 0600A210 */  beq        $a1, $v0, .L8003C4D0
    /* 2CCB8 8003C4B8 21200002 */   addu      $a0, $s0, $zero
    /* 2CCBC 8003C4BC A4008690 */  lbu        $a2, 0xA4($a0)
    /* 2CCC0 8003C4C0 2EC8000C */  jal        func_800320B8
    /* 2CCC4 8003C4C4 00000000 */   nop
    /* 2CCC8 8003C4C8 36F10008 */  j          .L8003C4D8
    /* 2CCCC 8003C4CC 00000000 */   nop
  .L8003C4D0:
    /* 2CCD0 8003C4D0 D3C8000C */  jal        func_8003234C
    /* 2CCD4 8003C4D4 21200002 */   addu      $a0, $s0, $zero
  .L8003C4D8:
    /* 2CCD8 8003C4D8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2CCDC 8003C4DC 1000B08F */  lw         $s0, 0x10($sp)
    /* 2CCE0 8003C4E0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2CCE4 8003C4E4 0800E003 */  jr         $ra
    /* 2CCE8 8003C4E8 00000000 */   nop
.size func_8003C418, . - func_8003C418
