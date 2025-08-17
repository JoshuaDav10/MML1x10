.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003F498
    /* 2FC98 8003F498 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2FC9C 8003F49C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2FCA0 8003F4A0 21808000 */  addu       $s0, $a0, $zero
    /* 2FCA4 8003F4A4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2FCA8 8003F4A8 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2FCAC 8003F4AC 00000000 */  nop
    /* 2FCB0 8003F4B0 08004014 */  bnez       $v0, .L8003F4D4
    /* 2FCB4 8003F4B4 33000524 */   addiu     $a1, $zero, 0x33
    /* 2FCB8 8003F4B8 21300000 */  addu       $a2, $zero, $zero
    /* 2FCBC 8003F4BC 7707010C */  jal        func_80041DDC
    /* 2FCC0 8003F4C0 01000724 */   addiu     $a3, $zero, 0x1
    /* 2FCC4 8003F4C4 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2FCC8 8003F4C8 00000000 */  nop
    /* 2FCCC 8003F4CC 01004224 */  addiu      $v0, $v0, 0x1
    /* 2FCD0 8003F4D0 0A0002A2 */  sb         $v0, 0xA($s0)
  .L8003F4D4:
    /* 2FCD4 8003F4D4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2FCD8 8003F4D8 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FCDC 8003F4DC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2FCE0 8003F4E0 0800E003 */  jr         $ra
    /* 2FCE4 8003F4E4 00000000 */   nop
.size func_8003F498, . - func_8003F498
