.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003F538
    /* 2FD38 8003F538 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2FD3C 8003F53C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2FD40 8003F540 21808000 */  addu       $s0, $a0, $zero
    /* 2FD44 8003F544 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2FD48 8003F548 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2FD4C 8003F54C 00000000 */  nop
    /* 2FD50 8003F550 08004014 */  bnez       $v0, .L8003F574
    /* 2FD54 8003F554 35000524 */   addiu     $a1, $zero, 0x35
    /* 2FD58 8003F558 21300000 */  addu       $a2, $zero, $zero
    /* 2FD5C 8003F55C 7707010C */  jal        func_80041DDC
    /* 2FD60 8003F560 01000724 */   addiu     $a3, $zero, 0x1
    /* 2FD64 8003F564 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2FD68 8003F568 00000000 */  nop
    /* 2FD6C 8003F56C 01004224 */  addiu      $v0, $v0, 0x1
    /* 2FD70 8003F570 0A0002A2 */  sb         $v0, 0xA($s0)
  .L8003F574:
    /* 2FD74 8003F574 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2FD78 8003F578 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FD7C 8003F57C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2FD80 8003F580 0800E003 */  jr         $ra
    /* 2FD84 8003F584 00000000 */   nop
.size func_8003F538, . - func_8003F538
