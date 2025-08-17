.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001EAE8
    /* F2E8 8001EAE8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* F2EC 8001EAEC 1000B0AF */  sw         $s0, 0x10($sp)
    /* F2F0 8001EAF0 21808000 */  addu       $s0, $a0, $zero
    /* F2F4 8001EAF4 1400BFAF */  sw         $ra, 0x14($sp)
    /* F2F8 8001EAF8 00000492 */  lbu        $a0, 0x0($s0)
    /* F2FC 8001EAFC 01000592 */  lbu        $a1, 0x1($s0)
    /* F300 8001EB00 03000692 */  lbu        $a2, 0x3($s0)
    /* F304 8001EB04 5A7A000C */  jal        func_8001E968
    /* F308 8001EB08 0C000726 */   addiu     $a3, $s0, 0xC
    /* F30C 8001EB0C 21204000 */  addu       $a0, $v0, $zero
    /* F310 8001EB10 03008014 */  bnez       $a0, .L8001EB20
    /* F314 8001EB14 40000224 */   addiu     $v0, $zero, 0x40
    /* F318 8001EB18 E17A0008 */  j          .L8001EB84
    /* F31C 8001EB1C 21100000 */   addu      $v0, $zero, $zero
  .L8001EB20:
    /* F320 8001EB20 03000392 */  lbu        $v1, 0x3($s0)
    /* F324 8001EB24 00000000 */  nop
    /* F328 8001EB28 0C006210 */  beq        $v1, $v0, .L8001EB5C
    /* F32C 8001EB2C 41006228 */   slti      $v0, $v1, 0x41
    /* F330 8001EB30 05004010 */  beqz       $v0, .L8001EB48
    /* F334 8001EB34 20000224 */   addiu     $v0, $zero, 0x20
    /* F338 8001EB38 08006210 */  beq        $v1, $v0, .L8001EB5C
    /* F33C 8001EB3C 21108000 */   addu      $v0, $a0, $zero
    /* F340 8001EB40 E17A0008 */  j          .L8001EB84
    /* F344 8001EB44 00000000 */   nop
  .L8001EB48:
    /* F348 8001EB48 60000224 */  addiu      $v0, $zero, 0x60
    /* F34C 8001EB4C 03006210 */  beq        $v1, $v0, .L8001EB5C
    /* F350 8001EB50 E0000224 */   addiu     $v0, $zero, 0xE0
    /* F354 8001EB54 0B006214 */  bne        $v1, $v0, .L8001EB84
    /* F358 8001EB58 21108000 */   addu      $v0, $a0, $zero
  .L8001EB5C:
    /* F35C 8001EB5C 04000292 */  lbu        $v0, 0x4($s0)
    /* F360 8001EB60 00000000 */  nop
    /* F364 8001EB64 030082A0 */  sb         $v0, 0x3($a0)
    /* F368 8001EB68 02000292 */  lbu        $v0, 0x2($s0)
    /* F36C 8001EB6C 00000000 */  nop
    /* F370 8001EB70 040082A0 */  sb         $v0, 0x4($a0)
    /* F374 8001EB74 0800028E */  lw         $v0, 0x8($s0)
    /* F378 8001EB78 00000000 */  nop
    /* F37C 8001EB7C 0C0082AC */  sw         $v0, 0xC($a0)
    /* F380 8001EB80 21108000 */  addu       $v0, $a0, $zero
  .L8001EB84:
    /* F384 8001EB84 1400BF8F */  lw         $ra, 0x14($sp)
    /* F388 8001EB88 1000B08F */  lw         $s0, 0x10($sp)
    /* F38C 8001EB8C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* F390 8001EB90 0800E003 */  jr         $ra
    /* F394 8001EB94 00000000 */   nop
.size func_8001EAE8, . - func_8001EAE8
