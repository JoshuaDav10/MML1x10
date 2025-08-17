.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001E4C4
    /* ECC4 8001E4C4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* ECC8 8001E4C8 1000B0AF */  sw         $s0, 0x10($sp)
    /* ECCC 8001E4CC 21808000 */  addu       $s0, $a0, $zero
    /* ECD0 8001E4D0 1800B2AF */  sw         $s2, 0x18($sp)
    /* ECD4 8001E4D4 2190A000 */  addu       $s2, $a1, $zero
    /* ECD8 8001E4D8 1400B1AF */  sw         $s1, 0x14($sp)
    /* ECDC 8001E4DC 21880000 */  addu       $s1, $zero, $zero
    /* ECE0 8001E4E0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* ECE4 8001E4E4 FF001324 */  addiu      $s3, $zero, 0xFF
    /* ECE8 8001E4E8 2000BFAF */  sw         $ra, 0x20($sp)
  .L8001E4EC:
    /* ECEC 8001E4EC 00000492 */  lbu        $a0, 0x0($s0)
    /* ECF0 8001E4F0 00000000 */  nop
    /* ECF4 8001E4F4 0E008010 */  beqz       $a0, .L8001E530
    /* ECF8 8001E4F8 00000000 */   nop
    /* ECFC 8001E4FC 00004592 */  lbu        $a1, 0x0($s2)
    /* ED00 8001E500 00000000 */  nop
    /* ED04 8001E504 FF00A630 */  andi       $a2, $a1, 0xFF
    /* ED08 8001E508 0400D310 */  beq        $a2, $s3, .L8001E51C
    /* ED0C 8001E50C 0100A530 */   andi      $a1, $a1, 0x1
    /* ED10 8001E510 42300600 */  srl        $a2, $a2, 1
    /* ED14 8001E514 1879000C */  jal        func_8001E460
    /* ED18 8001E518 0100C630 */   andi      $a2, $a2, 0x1
  .L8001E51C:
    /* ED1C 8001E51C 01003126 */  addiu      $s1, $s1, 0x1
    /* ED20 8001E520 01005226 */  addiu      $s2, $s2, 0x1
    /* ED24 8001E524 0800222A */  slti       $v0, $s1, 0x8
    /* ED28 8001E528 F0FF4014 */  bnez       $v0, .L8001E4EC
    /* ED2C 8001E52C 01001026 */   addiu     $s0, $s0, 0x1
  .L8001E530:
    /* ED30 8001E530 2000BF8F */  lw         $ra, 0x20($sp)
    /* ED34 8001E534 1C00B38F */  lw         $s3, 0x1C($sp)
    /* ED38 8001E538 1800B28F */  lw         $s2, 0x18($sp)
    /* ED3C 8001E53C 1400B18F */  lw         $s1, 0x14($sp)
    /* ED40 8001E540 1000B08F */  lw         $s0, 0x10($sp)
    /* ED44 8001E544 2800BD27 */  addiu      $sp, $sp, 0x28
    /* ED48 8001E548 0800E003 */  jr         $ra
    /* ED4C 8001E54C 00000000 */   nop
.size func_8001E4C4, . - func_8001E4C4
