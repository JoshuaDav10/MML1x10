.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L80052AA0
    /* 432A0 80052AA0 05004010 */  beqz       $v0, .L80052AB8
    /* 432A4 80052AA4 00300232 */   andi      $v0, $s0, 0x3000
    /* 432A8 80052AA8 4000A28F */  lw         $v0, 0x40($sp)
    /* 432AC 80052AAC 00000000 */  nop
    /* 432B0 80052AB0 240042AE */  sw         $v0, 0x24($s2)
    /* 432B4 80052AB4 00300232 */  andi       $v0, $s0, 0x3000
  .L80052AB8:
    /* 432B8 80052AB8 04004010 */  beqz       $v0, .L80052ACC
    /* 432BC 80052ABC 21202002 */   addu      $a0, $s1, $zero
    /* 432C0 80052AC0 3C00A28F */  lw         $v0, 0x3C($sp)
    /* 432C4 80052AC4 00000000 */  nop
    /* 432C8 80052AC8 200042AE */  sw         $v0, 0x20($s2)
  .L80052ACC:
    /* 432CC 80052ACC 54C0000C */  jal        func_80030150
    /* 432D0 80052AD0 14004526 */   addiu     $a1, $s2, 0x14
  .L80052AD4:
    /* 432D4 80052AD4 21100002 */  addu       $v0, $s0, $zero
    /* 432D8 80052AD8 A400BF8F */  lw         $ra, 0xA4($sp)
    /* 432DC 80052ADC A000B68F */  lw         $s6, 0xA0($sp)
    /* 432E0 80052AE0 9C00B58F */  lw         $s5, 0x9C($sp)
    /* 432E4 80052AE4 9800B48F */  lw         $s4, 0x98($sp)
.size .L80052AA0, . - .L80052AA0
