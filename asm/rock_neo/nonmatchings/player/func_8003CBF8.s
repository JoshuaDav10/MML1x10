.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003CBF8
    /* 2D3F8 8003CBF8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2D3FC 8003CBFC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2D400 8003CC00 21808000 */  addu       $s0, $a0, $zero
    /* 2D404 8003CC04 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2D408 8003CC08 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2D40C 8003CC0C 00000000 */  nop
    /* 2D410 8003CC10 1E004014 */  bnez       $v0, .L8003CC8C
    /* 2D414 8003CC14 01000224 */   addiu     $v0, $zero, 0x1
    /* 2D418 8003CC18 0B000392 */  lbu        $v1, 0xB($s0)
    /* 2D41C 8003CC1C 0A0002A2 */  sb         $v0, 0xA($s0)
    /* 2D420 8003CC20 03006014 */  bnez       $v1, .L8003CC30
    /* 2D424 8003CC24 480000A6 */   sh        $zero, 0x48($s0)
    /* 2D428 8003CC28 0DF30008 */  j          .L8003CC34
    /* 2D42C 8003CC2C 50000224 */   addiu     $v0, $zero, 0x50
  .L8003CC30:
    /* 2D430 8003CC30 B0FF0224 */  addiu      $v0, $zero, -0x50
  .L8003CC34:
    /* 2D434 8003CC34 440002A6 */  sh         $v0, 0x44($s0)
    /* 2D438 8003CC38 74010292 */  lbu        $v0, 0x174($s0)
    /* 2D43C 8003CC3C 00000000 */  nop
    /* 2D440 8003CC40 04004334 */  ori        $v1, $v0, 0x4
    /* 2D444 8003CC44 C0006230 */  andi       $v0, $v1, 0xC0
    /* 2D448 8003CC48 05004014 */  bnez       $v0, .L8003CC60
    /* 2D44C 8003CC4C 740103A2 */   sb        $v1, 0x174($s0)
    /* 2D450 8003CC50 77010282 */  lb         $v0, 0x177($s0)
    /* 2D454 8003CC54 00000000 */  nop
    /* 2D458 8003CC58 0C004010 */  beqz       $v0, .L8003CC8C
    /* 2D45C 8003CC5C 00000000 */   nop
  .L8003CC60:
    /* 2D460 8003CC60 40006230 */  andi       $v0, $v1, 0x40
    /* 2D464 8003CC64 03004010 */  beqz       $v0, .L8003CC74
    /* 2D468 8003CC68 21200002 */   addu      $a0, $s0, $zero
    /* 2D46C 8003CC6C 1EF30008 */  j          .L8003CC78
    /* 2D470 8003CC70 40000524 */   addiu     $a1, $zero, 0x40
  .L8003CC74:
    /* 2D474 8003CC74 60000524 */  addiu      $a1, $zero, 0x60
  .L8003CC78:
    /* 2D478 8003CC78 00018690 */  lbu        $a2, 0x100($a0)
    /* 2D47C 8003CC7C 7707010C */  jal        func_80041DDC
    /* 2D480 8003CC80 21380000 */   addu      $a3, $zero, $zero
    /* 2D484 8003CC84 4EF30008 */  j          .L8003CD38
    /* 2D488 8003CC88 00000000 */   nop
  .L8003CC8C:
    /* 2D48C 8003CC8C 74010282 */  lb         $v0, 0x174($s0)
    /* 2D490 8003CC90 00000000 */  nop
    /* 2D494 8003CC94 C0004230 */  andi       $v0, $v0, 0xC0
    /* 2D498 8003CC98 27004014 */  bnez       $v0, .L8003CD38
    /* 2D49C 8003CC9C 00000000 */   nop
    /* 2D4A0 8003CCA0 77010282 */  lb         $v0, 0x177($s0)
    /* 2D4A4 8003CCA4 00000000 */  nop
    /* 2D4A8 8003CCA8 23004014 */  bnez       $v0, .L8003CD38
    /* 2D4AC 8003CCAC 00000000 */   nop
    /* 2D4B0 8003CCB0 0B000292 */  lbu        $v0, 0xB($s0)
    /* 2D4B4 8003CCB4 00000000 */  nop
    /* 2D4B8 8003CCB8 09004014 */  bnez       $v0, .L8003CCE0
    /* 2D4BC 8003CCBC 21200002 */   addu      $a0, $s0, $zero
    /* 2D4C0 8003CCC0 0C000524 */  addiu      $a1, $zero, 0xC
    /* 2D4C4 8003CCC4 21300000 */  addu       $a2, $zero, $zero
    /* 2D4C8 8003CCC8 7707010C */  jal        func_80041DDC
    /* 2D4CC 8003CCCC 21380000 */   addu      $a3, $zero, $zero
    /* 2D4D0 8003CCD0 21200002 */  addu       $a0, $s0, $zero
    /* 2D4D4 8003CCD4 20000524 */  addiu      $a1, $zero, 0x20
    /* 2D4D8 8003CCD8 3FF30008 */  j          .L8003CCFC
    /* 2D4DC 8003CCDC 20000624 */   addiu     $a2, $zero, 0x20
  .L8003CCE0:
    /* 2D4E0 8003CCE0 0D000524 */  addiu      $a1, $zero, 0xD
    /* 2D4E4 8003CCE4 21300000 */  addu       $a2, $zero, $zero
    /* 2D4E8 8003CCE8 7707010C */  jal        func_80041DDC
    /* 2D4EC 8003CCEC 21380000 */   addu      $a3, $zero, $zero
    /* 2D4F0 8003CCF0 21200002 */  addu       $a0, $s0, $zero
    /* 2D4F4 8003CCF4 40000524 */  addiu      $a1, $zero, 0x40
    /* 2D4F8 8003CCF8 40000624 */  addiu      $a2, $zero, 0x40
  .L8003CCFC:
    /* 2D4FC 8003CCFC 1108010C */  jal        func_80042044
    /* 2D500 8003CD00 00000000 */   nop
    /* 2D504 8003CD04 A6000282 */  lb         $v0, 0xA6($s0)
    /* 2D508 8003CD08 00000000 */  nop
    /* 2D50C 8003CD0C 80004230 */  andi       $v0, $v0, 0x80
    /* 2D510 8003CD10 04004010 */  beqz       $v0, .L8003CD24
    /* 2D514 8003CD14 90000424 */   addiu     $a0, $zero, 0x90
    /* 2D518 8003CD18 21280000 */  addu       $a1, $zero, $zero
    /* 2D51C 8003CD1C 0268000C */  jal        Sound_call
    /* 2D520 8003CD20 21300000 */   addu      $a2, $zero, $zero
  .L8003CD24:
    /* 2D524 8003CD24 21200002 */  addu       $a0, $s0, $zero
    /* 2D528 8003CD28 44008584 */  lh         $a1, 0x44($a0)
    /* 2D52C 8003CD2C 21300000 */  addu       $a2, $zero, $zero
    /* 2D530 8003CD30 A407010C */  jal        func_80041E90
    /* 2D534 8003CD34 21380000 */   addu      $a3, $zero, $zero
  .L8003CD38:
    /* 2D538 8003CD38 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2D53C 8003CD3C 1000B08F */  lw         $s0, 0x10($sp)
    /* 2D540 8003CD40 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2D544 8003CD44 0800E003 */  jr         $ra
    /* 2D548 8003CD48 00000000 */   nop
.size func_8003CBF8, . - func_8003CBF8
