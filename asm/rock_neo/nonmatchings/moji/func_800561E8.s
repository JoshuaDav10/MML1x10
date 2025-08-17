.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800561E8
    /* 469E8 800561E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 469EC 800561EC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 469F0 800561F0 21808000 */  addu       $s0, $a0, $zero
    /* 469F4 800561F4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 469F8 800561F8 BB76010C */  jal        func_8005DAEC
    /* 469FC 800561FC 01000424 */   addiu     $a0, $zero, 0x1
    /* 46A00 80056200 03004014 */  bnez       $v0, .L80056210
    /* 46A04 80056204 01000224 */   addiu     $v0, $zero, 0x1
    /* 46A08 80056208 88580108 */  j          .L80056220
    /* 46A0C 8005620C 21100000 */   addu      $v0, $zero, $zero
  .L80056210:
    /* 46A10 80056210 6C00038E */  lw         $v1, 0x6C($s0)
    /* 46A14 80056214 00000000 */  nop
    /* 46A18 80056218 01006324 */  addiu      $v1, $v1, 0x1
    /* 46A1C 8005621C 6C0003AE */  sw         $v1, 0x6C($s0)
  .L80056220:
    /* 46A20 80056220 1400BF8F */  lw         $ra, 0x14($sp)
    /* 46A24 80056224 1000B08F */  lw         $s0, 0x10($sp)
    /* 46A28 80056228 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 46A2C 8005622C 0800E003 */  jr         $ra
    /* 46A30 80056230 00000000 */   nop
.size func_800561E8, . - func_800561E8
