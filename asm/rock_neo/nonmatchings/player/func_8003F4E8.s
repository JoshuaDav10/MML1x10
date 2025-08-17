.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003F4E8
    /* 2FCE8 8003F4E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2FCEC 8003F4EC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2FCF0 8003F4F0 21808000 */  addu       $s0, $a0, $zero
    /* 2FCF4 8003F4F4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2FCF8 8003F4F8 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2FCFC 8003F4FC 00000000 */  nop
    /* 2FD00 8003F500 08004014 */  bnez       $v0, .L8003F524
    /* 2FD04 8003F504 34000524 */   addiu     $a1, $zero, 0x34
    /* 2FD08 8003F508 21300000 */  addu       $a2, $zero, $zero
    /* 2FD0C 8003F50C 7707010C */  jal        func_80041DDC
    /* 2FD10 8003F510 01000724 */   addiu     $a3, $zero, 0x1
    /* 2FD14 8003F514 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2FD18 8003F518 00000000 */  nop
    /* 2FD1C 8003F51C 01004224 */  addiu      $v0, $v0, 0x1
    /* 2FD20 8003F520 0A0002A2 */  sb         $v0, 0xA($s0)
  .L8003F524:
    /* 2FD24 8003F524 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2FD28 8003F528 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FD2C 8003F52C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2FD30 8003F530 0800E003 */  jr         $ra
    /* 2FD34 8003F534 00000000 */   nop
.size func_8003F4E8, . - func_8003F4E8
