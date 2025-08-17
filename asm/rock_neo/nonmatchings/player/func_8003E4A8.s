.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003E4A8
    /* 2ECA8 8003E4A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2ECAC 8003E4AC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2ECB0 8003E4B0 21808000 */  addu       $s0, $a0, $zero
    /* 2ECB4 8003E4B4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2ECB8 8003E4B8 0A000392 */  lbu        $v1, 0xA($s0)
    /* 2ECBC 8003E4BC 01000224 */  addiu      $v0, $zero, 0x1
    /* 2ECC0 8003E4C0 68006210 */  beq        $v1, $v0, .L8003E664
    /* 2ECC4 8003E4C4 13000524 */   addiu     $a1, $zero, 0x13
    /* 2ECC8 8003E4C8 02006228 */  slti       $v0, $v1, 0x2
    /* 2ECCC 8003E4CC 05004010 */  beqz       $v0, .L8003E4E4
    /* 2ECD0 8003E4D0 00000000 */   nop
    /* 2ECD4 8003E4D4 08006010 */  beqz       $v1, .L8003E4F8
    /* 2ECD8 8003E4D8 00000000 */   nop
    /* 2ECDC 8003E4DC A7F90008 */  j          .L8003E69C
    /* 2ECE0 8003E4E0 00000000 */   nop
  .L8003E4E4:
    /* 2ECE4 8003E4E4 02000224 */  addiu      $v0, $zero, 0x2
    /* 2ECE8 8003E4E8 65006210 */  beq        $v1, $v0, .L8003E680
    /* 2ECEC 8003E4EC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 2ECF0 8003E4F0 A7F90008 */  j          .L8003E69C
    /* 2ECF4 8003E4F4 00000000 */   nop
  .L8003E4F8:
    /* 2ECF8 8003E4F8 0B000292 */  lbu        $v0, 0xB($s0)
    /* 2ECFC 8003E4FC 00000000 */  nop
    /* 2ED00 8003E500 FFFF4324 */  addiu      $v1, $v0, -0x1
    /* 2ED04 8003E504 0800622C */  sltiu      $v0, $v1, 0x8
    /* 2ED08 8003E508 43004010 */  beqz       $v0, .L8003E618
    /* 2ED0C 8003E50C 80100300 */   sll       $v0, $v1, 2
    /* 2ED10 8003E510 0180013C */  lui        $at, %hi(jtbl_80010BFC)
    /* 2ED14 8003E514 21082200 */  addu       $at, $at, $v0
    /* 2ED18 8003E518 FC0B228C */  lw         $v0, %lo(jtbl_80010BFC)($at)
    /* 2ED1C 8003E51C 00000000 */  nop
    /* 2ED20 8003E520 08004000 */  jr         $v0
    /* 2ED24 8003E524 00000000 */   nop
  glabel .L8003E528
    /* 2ED28 8003E528 2400028E */  lw         $v0, 0x24($s0)
    /* 2ED2C 8003E52C E8FF033C */  lui        $v1, (0xFFE80000 >> 16)
    /* 2ED30 8003E530 21104300 */  addu       $v0, $v0, $v1
    /* 2ED34 8003E534 240002AE */  sw         $v0, 0x24($s0)
    /* 2ED38 8003E538 2000028E */  lw         $v0, 0x20($s0)
    /* 2ED3C 8003E53C 84F90008 */  j          .L8003E610
    /* 2ED40 8003E540 2000033C */   lui       $v1, (0x200000 >> 16)
  glabel .L8003E544
    /* 2ED44 8003E544 2400028E */  lw         $v0, 0x24($s0)
    /* 2ED48 8003E548 1800033C */  lui        $v1, (0x180000 >> 16)
    /* 2ED4C 8003E54C 21104300 */  addu       $v0, $v0, $v1
    /* 2ED50 8003E550 240002AE */  sw         $v0, 0x24($s0)
    /* 2ED54 8003E554 2000028E */  lw         $v0, 0x20($s0)
    /* 2ED58 8003E558 84F90008 */  j          .L8003E610
    /* 2ED5C 8003E55C 2000033C */   lui       $v1, (0x200000 >> 16)
  glabel .L8003E560
    /* 2ED60 8003E560 1C00028E */  lw         $v0, 0x1C($s0)
    /* 2ED64 8003E564 1800033C */  lui        $v1, (0x180000 >> 16)
    /* 2ED68 8003E568 21104300 */  addu       $v0, $v0, $v1
    /* 2ED6C 8003E56C 1C0002AE */  sw         $v0, 0x1C($s0)
    /* 2ED70 8003E570 2000028E */  lw         $v0, 0x20($s0)
    /* 2ED74 8003E574 84F90008 */  j          .L8003E610
    /* 2ED78 8003E578 2000033C */   lui       $v1, (0x200000 >> 16)
  glabel .L8003E57C
    /* 2ED7C 8003E57C 1C00028E */  lw         $v0, 0x1C($s0)
    /* 2ED80 8003E580 E8FF033C */  lui        $v1, (0xFFE80000 >> 16)
    /* 2ED84 8003E584 21104300 */  addu       $v0, $v0, $v1
    /* 2ED88 8003E588 1C0002AE */  sw         $v0, 0x1C($s0)
    /* 2ED8C 8003E58C 2000028E */  lw         $v0, 0x20($s0)
    /* 2ED90 8003E590 84F90008 */  j          .L8003E610
    /* 2ED94 8003E594 2000033C */   lui       $v1, (0x200000 >> 16)
  glabel .L8003E598
    /* 2ED98 8003E598 0C00043C */  lui        $a0, (0xC0000 >> 16)
    /* 2ED9C 8003E59C 1C00028E */  lw         $v0, 0x1C($s0)
    /* 2EDA0 8003E5A0 2400038E */  lw         $v1, 0x24($s0)
    /* 2EDA4 8003E5A4 21104400 */  addu       $v0, $v0, $a0
    /* 2EDA8 8003E5A8 1C0002AE */  sw         $v0, 0x1C($s0)
    /* 2EDAC 8003E5AC 2000028E */  lw         $v0, 0x20($s0)
    /* 2EDB0 8003E5B0 82F90008 */  j          .L8003E608
    /* 2EDB4 8003E5B4 23186400 */   subu      $v1, $v1, $a0
  glabel .L8003E5B8
    /* 2EDB8 8003E5B8 1C00028E */  lw         $v0, 0x1C($s0)
    /* 2EDBC 8003E5BC F4FF033C */  lui        $v1, (0xFFF40000 >> 16)
    /* 2EDC0 8003E5C0 21104300 */  addu       $v0, $v0, $v1
    /* 2EDC4 8003E5C4 1C0002AE */  sw         $v0, 0x1C($s0)
    /* 2EDC8 8003E5C8 2400028E */  lw         $v0, 0x24($s0)
    /* 2EDCC 8003E5CC 0C00033C */  lui        $v1, (0xC0000 >> 16)
    /* 2EDD0 8003E5D0 21104300 */  addu       $v0, $v0, $v1
    /* 2EDD4 8003E5D4 240002AE */  sw         $v0, 0x24($s0)
    /* 2EDD8 8003E5D8 2000028E */  lw         $v0, 0x20($s0)
    /* 2EDDC 8003E5DC 84F90008 */  j          .L8003E610
    /* 2EDE0 8003E5E0 2000033C */   lui       $v1, (0x200000 >> 16)
  glabel .L8003E5E4
    /* 2EDE4 8003E5E4 7CF90008 */  j          .L8003E5F0
    /* 2EDE8 8003E5E8 F4FF043C */   lui       $a0, (0xFFF40000 >> 16)
  glabel .L8003E5EC
    /* 2EDEC 8003E5EC 0C00043C */  lui        $a0, (0xC0000 >> 16)
  .L8003E5F0:
    /* 2EDF0 8003E5F0 1C00028E */  lw         $v0, 0x1C($s0)
    /* 2EDF4 8003E5F4 2400038E */  lw         $v1, 0x24($s0)
    /* 2EDF8 8003E5F8 21104400 */  addu       $v0, $v0, $a0
    /* 2EDFC 8003E5FC 1C0002AE */  sw         $v0, 0x1C($s0)
    /* 2EE00 8003E600 2000028E */  lw         $v0, 0x20($s0)
    /* 2EE04 8003E604 21186400 */  addu       $v1, $v1, $a0
  .L8003E608:
    /* 2EE08 8003E608 240003AE */  sw         $v1, 0x24($s0)
    /* 2EE0C 8003E60C 2000033C */  lui        $v1, (0x200000 >> 16)
  .L8003E610:
    /* 2EE10 8003E610 21104300 */  addu       $v0, $v0, $v1
    /* 2EE14 8003E614 200002AE */  sw         $v0, 0x20($s0)
  .L8003E618:
    /* 2EE18 8003E618 86C5000C */  jal        func_80031618
    /* 2EE1C 8003E61C 00000000 */   nop
    /* 2EE20 8003E620 04004010 */  beqz       $v0, .L8003E634
    /* 2EE24 8003E624 21200002 */   addu      $a0, $s0, $zero
    /* 2EE28 8003E628 21284000 */  addu       $a1, $v0, $zero
    /* 2EE2C 8003E62C 4A09010C */  jal        func_80042528
    /* 2EE30 8003E630 21300000 */   addu      $a2, $zero, $zero
  .L8003E634:
    /* 2EE34 8003E634 1C000426 */  addiu      $a0, $s0, 0x1C
    /* 2EE38 8003E638 54C0000C */  jal        func_80030150
    /* 2EE3C 8003E63C 14000526 */   addiu     $a1, $s0, 0x14
    /* 2EE40 8003E640 21200002 */  addu       $a0, $s0, $zero
    /* 2EE44 8003E644 12000524 */  addiu      $a1, $zero, 0x12
    /* 2EE48 8003E648 21300000 */  addu       $a2, $zero, $zero
    /* 2EE4C 8003E64C 7707010C */  jal        func_80041DDC
    /* 2EE50 8003E650 21380000 */   addu      $a3, $zero, $zero
    /* 2EE54 8003E654 480000A6 */  sh         $zero, 0x48($s0)
    /* 2EE58 8003E658 460000A6 */  sh         $zero, 0x46($s0)
    /* 2EE5C 8003E65C A7F90008 */  j          .L8003E69C
    /* 2EE60 8003E660 440000A6 */   sh        $zero, 0x44($s0)
  .L8003E664:
    /* 2EE64 8003E664 21200002 */  addu       $a0, $s0, $zero
    /* 2EE68 8003E668 21300000 */  addu       $a2, $zero, $zero
    /* 2EE6C 8003E66C 7707010C */  jal        func_80041DDC
    /* 2EE70 8003E670 01000724 */   addiu     $a3, $zero, 0x1
    /* 2EE74 8003E674 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2EE78 8003E678 A6F90008 */  j          .L8003E698
    /* 2EE7C 8003E67C 01004224 */   addiu     $v0, $v0, 0x1
  .L8003E680:
    /* 2EE80 8003E680 A7000382 */  lb         $v1, 0xA7($s0)
    /* 2EE84 8003E684 00000000 */  nop
    /* 2EE88 8003E688 04006214 */  bne        $v1, $v0, .L8003E69C
    /* 2EE8C 8003E68C 08000224 */   addiu     $v0, $zero, 0x8
    /* 2EE90 8003E690 090002A2 */  sb         $v0, 0x9($s0)
    /* 2EE94 8003E694 06000224 */  addiu      $v0, $zero, 0x6
  .L8003E698:
    /* 2EE98 8003E698 0A0002A2 */  sb         $v0, 0xA($s0)
  .L8003E69C:
    /* 2EE9C 8003E69C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2EEA0 8003E6A0 1000B08F */  lw         $s0, 0x10($sp)
    /* 2EEA4 8003E6A4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2EEA8 8003E6A8 0800E003 */  jr         $ra
    /* 2EEAC 8003E6AC 00000000 */   nop
.size func_8003E4A8, . - func_8003E4A8
