.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005619C
    /* 4699C 8005619C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 469A0 800561A0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 469A4 800561A4 21808000 */  addu       $s0, $a0, $zero
    /* 469A8 800561A8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 469AC 800561AC 9E76010C */  jal        func_8005DA78
    /* 469B0 800561B0 01000424 */   addiu     $a0, $zero, 0x1
    /* 469B4 800561B4 03004014 */  bnez       $v0, .L800561C4
    /* 469B8 800561B8 01000224 */   addiu     $v0, $zero, 0x1
    /* 469BC 800561BC 75580108 */  j          .L800561D4
    /* 469C0 800561C0 21100000 */   addu      $v0, $zero, $zero
  .L800561C4:
    /* 469C4 800561C4 6C00038E */  lw         $v1, 0x6C($s0)
    /* 469C8 800561C8 00000000 */  nop
    /* 469CC 800561CC 01006324 */  addiu      $v1, $v1, 0x1
    /* 469D0 800561D0 6C0003AE */  sw         $v1, 0x6C($s0)
  .L800561D4:
    /* 469D4 800561D4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 469D8 800561D8 1000B08F */  lw         $s0, 0x10($sp)
    /* 469DC 800561DC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 469E0 800561E0 0800E003 */  jr         $ra
    /* 469E4 800561E4 00000000 */   nop
.size func_8005619C, . - func_8005619C
