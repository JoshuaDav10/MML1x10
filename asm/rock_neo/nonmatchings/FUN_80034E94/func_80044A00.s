.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80044A00
    /* 35200 80044A00 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 35204 80044A04 2000B0AF */  sw         $s0, 0x20($sp)
    /* 35208 80044A08 21808000 */  addu       $s0, $a0, $zero
    /* 3520C 80044A0C 2400BFAF */  sw         $ra, 0x24($sp)
    /* 35210 80044A10 0B000292 */  lbu        $v0, 0xB($s0)
    /* 35214 80044A14 00000000 */  nop
    /* 35218 80044A18 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 3521C 80044A1C 0B0002A2 */  sb         $v0, 0xB($s0)
    /* 35220 80044A20 FF004230 */  andi       $v0, $v0, 0xFF
    /* 35224 80044A24 06004014 */  bnez       $v0, .L80044A40
    /* 35228 80044A28 15110224 */   addiu     $v0, $zero, 0x1115
    /* 3522C 80044A2C 08000292 */  lbu        $v0, 0x8($s0)
    /* 35230 80044A30 00000000 */  nop
    /* 35234 80044A34 01004224 */  addiu      $v0, $v0, 0x1
    /* 35238 80044A38 080002A2 */  sb         $v0, 0x8($s0)
    /* 3523C 80044A3C 15110224 */  addiu      $v0, $zero, 0x1115
  .L80044A40:
    /* 35240 80044A40 18000426 */  addiu      $a0, $s0, 0x18
    /* 35244 80044A44 1000A527 */  addiu      $a1, $sp, 0x10
    /* 35248 80044A48 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3524C 80044A4C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 35250 80044A50 7AEB010C */  jal        ScaleMatrix
    /* 35254 80044A54 1000A2AF */   sw        $v0, 0x10($sp)
    /* 35258 80044A58 F7FF033C */  lui        $v1, (0xFFF7F7F8 >> 16)
    /* 3525C 80044A5C 4000028E */  lw         $v0, 0x40($s0)
    /* 35260 80044A60 F8F76334 */  ori        $v1, $v1, (0xFFF7F7F8 & 0xFFFF)
    /* 35264 80044A64 21104300 */  addu       $v0, $v0, $v1
    /* 35268 80044A68 400002AE */  sw         $v0, 0x40($s0)
    /* 3526C 80044A6C 2400BF8F */  lw         $ra, 0x24($sp)
    /* 35270 80044A70 2000B08F */  lw         $s0, 0x20($sp)
    /* 35274 80044A74 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 35278 80044A78 0800E003 */  jr         $ra
    /* 3527C 80044A7C 00000000 */   nop
.size func_80044A00, . - func_80044A00
