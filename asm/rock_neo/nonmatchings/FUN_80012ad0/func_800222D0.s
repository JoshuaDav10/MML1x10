.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel func_800222D0
    /* 12AD0 800222D0 21082200 */  addu       $at, $at, $v0
    /* 12AD4 800222D4 C00D2290 */  lbu        $v0, 0xDC0($at)
    /* 12AD8 800222D8 801F073C */  lui        $a3, (0x1F80001C >> 16)
    /* 12ADC 800222DC 1C00E734 */  ori        $a3, $a3, (0x1F80001C & 0xFFFF)
    /* 12AE0 800222E0 00140200 */  sll        $v0, $v0, 16
    /* 12AE4 800222E4 080062AE */  sw         $v0, 0x8($s3)
    /* 12AE8 800222E8 0000EC8C */  lw         $t4, 0x0($a3)
    /* 12AEC 800222EC 0400ED8C */  lw         $t5, 0x4($a3)
    /* 12AF0 800222F0 0800EE8C */  lw         $t6, 0x8($a3)
    /* 12AF4 800222F4 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
    /* 12AF8 800222F8 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
    /* 12AFC 800222FC 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
    /* 12B00 80022300 08008424 */  addiu      $a0, $a0, 0x8
    /* 12B04 80022304 D788000C */  jal        func_8002235C
    /* 12B08 80022308 1000A527 */   addiu     $a1, $sp, 0x10
    /* 12B0C 8002230C 801F073C */  lui        $a3, (0x1F800030 >> 16)
    /* 12B10 80022310 3000E734 */  ori        $a3, $a3, (0x1F800030 & 0xFFFF)
    /* 12B14 80022314 0000EC8C */  lw         $t4, 0x0($a3)
    /* 12B18 80022318 0400ED8C */  lw         $t5, 0x4($a3)
    /* 12B1C 8002231C 0800EE8C */  lw         $t6, 0x8($a3)
    /* 12B20 80022320 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
    /* 12B24 80022324 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
    /* 12B28 80022328 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
    /* 12B2C 8002232C 01001026 */  addiu      $s0, $s0, 0x1
    /* 12B30 80022330 2B101202 */  sltu       $v0, $s0, $s2
    /* 12B34 80022334 B8FF4014 */  bnez       $v0, .L80022218
    /* 12B38 80022338 04003126 */   addiu     $s1, $s1, 0x4
    /* 12B3C 8002233C 4000BF8F */  lw         $ra, 0x40($sp)
    /* 12B40 80022340 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 12B44 80022344 3800B28F */  lw         $s2, 0x38($sp)
    /* 12B48 80022348 3400B18F */  lw         $s1, 0x34($sp)
.size func_800222D0, . - func_800222D0
