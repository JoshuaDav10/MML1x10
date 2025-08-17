.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003F588
    /* 2FD88 8003F588 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2FD8C 8003F58C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2FD90 8003F590 21808000 */  addu       $s0, $a0, $zero
    /* 2FD94 8003F594 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2FD98 8003F598 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2FD9C 8003F59C 00000000 */  nop
    /* 2FDA0 8003F5A0 08004014 */  bnez       $v0, .L8003F5C4
    /* 2FDA4 8003F5A4 36000524 */   addiu     $a1, $zero, 0x36
    /* 2FDA8 8003F5A8 21300000 */  addu       $a2, $zero, $zero
    /* 2FDAC 8003F5AC 7707010C */  jal        func_80041DDC
    /* 2FDB0 8003F5B0 01000724 */   addiu     $a3, $zero, 0x1
    /* 2FDB4 8003F5B4 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2FDB8 8003F5B8 00000000 */  nop
    /* 2FDBC 8003F5BC 01004224 */  addiu      $v0, $v0, 0x1
    /* 2FDC0 8003F5C0 0A0002A2 */  sb         $v0, 0xA($s0)
  .L8003F5C4:
    /* 2FDC4 8003F5C4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2FDC8 8003F5C8 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FDCC 8003F5CC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2FDD0 8003F5D0 0800E003 */  jr         $ra
    /* 2FDD4 8003F5D4 00000000 */   nop
.size func_8003F588, . - func_8003F588
