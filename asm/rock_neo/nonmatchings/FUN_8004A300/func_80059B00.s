.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059B00
    /* 4A300 80059B00 21200000 */  addu       $a0, $zero, $zero
  .L80059B04:
    /* 4A304 80059B04 0200053C */  lui        $a1, (0x20019 >> 16)
    /* 4A308 80059B08 F08F010C */  jal        func_80063FC0
    /* 4A30C 80059B0C 1900A534 */   ori       $a1, $a1, (0x20019 & 0xFFFF)
    /* 4A310 80059B10 C9660108 */  j          .L80059B24
    /* 4A314 80059B14 21100000 */   addu      $v0, $zero, $zero
  .L80059B18:
    /* 4A318 80059B18 FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 4A31C 80059B1C 040002A6 */  sh         $v0, 0x4($s0)
  .L80059B20:
    /* 4A320 80059B20 21100000 */  addu       $v0, $zero, $zero
  .L80059B24:
    /* 4A324 80059B24 3000BF8F */  lw         $ra, 0x30($sp)
    /* 4A328 80059B28 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 4A32C 80059B2C 2800B28F */  lw         $s2, 0x28($sp)
    /* 4A330 80059B30 2400B18F */  lw         $s1, 0x24($sp)
    /* 4A334 80059B34 2000B08F */  lw         $s0, 0x20($sp)
    /* 4A338 80059B38 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 4A33C 80059B3C 0800E003 */  jr         $ra
    /* 4A340 80059B40 00000000 */   nop
.size func_80059B00, . - func_80059B00
