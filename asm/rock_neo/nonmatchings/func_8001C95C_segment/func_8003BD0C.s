.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003BD0C
    /* 2C50C 8003BD0C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2C510 8003BD10 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2C514 8003BD14 21988000 */  addu       $s3, $a0, $zero
    /* 2C518 8003BD18 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2C51C 8003BD1C 2190A000 */  addu       $s2, $a1, $zero
    /* 2C520 8003BD20 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2C524 8003BD24 01001124 */  addiu      $s1, $zero, 0x1
    /* 2C528 8003BD28 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2C52C 8003BD2C FFFF143C */  lui        $s4, (0xFFFF0000 >> 16)
    /* 2C530 8003BD30 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2C534 8003BD34 1580103C */  lui        $s0, (0x8015C012 >> 16)
    /* 2C538 8003BD38 12C01036 */  ori        $s0, $s0, (0x8015C012 & 0xFFFF)
    /* 2C53C 8003BD3C 2400BFAF */  sw         $ra, 0x24($sp)
  .L8003BD40:
    /* 2C540 8003BD40 0200028E */  lw         $v0, 0x2($s0)
    /* 2C544 8003BD44 00000000 */  nop
    /* 2C548 8003BD48 14004010 */  beqz       $v0, .L8003BD9C
    /* 2C54C 8003BD4C 00000000 */   nop
    /* 2C550 8003BD50 0000428C */  lw         $v0, 0x0($v0)
    /* 2C554 8003BD54 00000000 */  nop
    /* 2C558 8003BD58 24105400 */  and        $v0, $v0, $s4
    /* 2C55C 8003BD5C 0B005214 */  bne        $v0, $s2, .L8003BD8C
    /* 2C560 8003BD60 00000000 */   nop
    /* 2C564 8003BD64 00000286 */  lh         $v0, 0x0($s0)
    /* 2C568 8003BD68 00000000 */  nop
    /* 2C56C 8003BD6C 07004014 */  bnez       $v0, .L8003BD8C
    /* 2C570 8003BD70 00000000 */   nop
    /* 2C574 8003BD74 08ED000C */  jal        func_8003B420
    /* 2C578 8003BD78 21202002 */   addu      $a0, $s1, $zero
    /* 2C57C 8003BD7C 04004018 */  blez       $v0, .L8003BD90
    /* 2C580 8003BD80 01003126 */   addiu     $s1, $s1, 0x1
    /* 2C584 8003BD84 67EF0008 */  j          .L8003BD9C
    /* 2C588 8003BD88 000060AE */   sw        $zero, 0x0($s3)
  .L8003BD8C:
    /* 2C58C 8003BD8C 01003126 */  addiu      $s1, $s1, 0x1
  .L8003BD90:
    /* 2C590 8003BD90 0008222E */  sltiu      $v0, $s1, 0x800
    /* 2C594 8003BD94 EAFF4014 */  bnez       $v0, .L8003BD40
    /* 2C598 8003BD98 0C001026 */   addiu     $s0, $s0, 0xC
  .L8003BD9C:
    /* 2C59C 8003BD9C 2400BF8F */  lw         $ra, 0x24($sp)
    /* 2C5A0 8003BDA0 2000B48F */  lw         $s4, 0x20($sp)
    /* 2C5A4 8003BDA4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2C5A8 8003BDA8 1800B28F */  lw         $s2, 0x18($sp)
    /* 2C5AC 8003BDAC 1400B18F */  lw         $s1, 0x14($sp)
    /* 2C5B0 8003BDB0 1000B08F */  lw         $s0, 0x10($sp)
    /* 2C5B4 8003BDB4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2C5B8 8003BDB8 0800E003 */  jr         $ra
    /* 2C5BC 8003BDBC 00000000 */   nop
.size func_8003BD0C, . - func_8003BD0C
