.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003B278
    /* 2BA78 8003B278 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2BA7C 8003B27C 0B008014 */  bnez       $a0, .L8003B2AC
    /* 2BA80 8003B280 1000BFAF */   sw        $ra, 0x10($sp)
    /* 2BA84 8003B284 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 2BA88 8003B288 7F030324 */  addiu      $v1, $zero, 0x37F
    /* 2BA8C 8003B28C 0C80023C */  lui        $v0, %hi(D_800BE1B4)
    /* 2BA90 8003B290 B4E14224 */  addiu      $v0, $v0, %lo(D_800BE1B4)
  .L8003B294:
    /* 2BA94 8003B294 000044AC */  sw         $a0, 0x0($v0)
    /* 2BA98 8003B298 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 2BA9C 8003B29C FDFF6104 */  bgez       $v1, .L8003B294
    /* 2BAA0 8003B2A0 FCFF4224 */   addiu     $v0, $v0, -0x4
    /* 2BAA4 8003B2A4 B1EC0008 */  j          .L8003B2C4
    /* 2BAA8 8003B2A8 00000000 */   nop
  .L8003B2AC:
    /* 2BAAC 8003B2AC 0B80043C */  lui        $a0, %hi(D_800B6230)
    /* 2BAB0 8003B2B0 30628424 */  addiu      $a0, $a0, %lo(D_800B6230)
    /* 2BAB4 8003B2B4 0C80053C */  lui        $a1, %hi(D_800BD3B8)
    /* 2BAB8 8003B2B8 B8D3A524 */  addiu      $a1, $a1, %lo(D_800BD3B8)
    /* 2BABC 8003B2BC B75D000C */  jal        func_800176DC
    /* 2BAC0 8003B2C0 70000624 */   addiu     $a2, $zero, 0x70
  .L8003B2C4:
    /* 2BAC4 8003B2C4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2BAC8 8003B2C8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2BACC 8003B2CC 0800E003 */  jr         $ra
    /* 2BAD0 8003B2D0 00000000 */   nop
.size func_8003B278, . - func_8003B278
