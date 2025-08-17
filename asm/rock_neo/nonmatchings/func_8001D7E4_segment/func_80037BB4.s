.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80037BB4
    /* 283B4 80037BB4 14008018 */  blez       $a0, .L80037C08
    /* 283B8 80037BB8 FFFF8330 */   andi      $v1, $a0, 0xFFFF
    /* 283BC 80037BBC FF7F0224 */  addiu      $v0, $zero, 0x7FFF
    /* 283C0 80037BC0 2B104300 */  sltu       $v0, $v0, $v1
    /* 283C4 80037BC4 11004014 */  bnez       $v0, .L80037C0C
    /* 283C8 80037BC8 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 283CC 80037BCC 40100300 */  sll        $v0, $v1, 1
    /* 283D0 80037BD0 21104300 */  addu       $v0, $v0, $v1
    /* 283D4 80037BD4 80100200 */  sll        $v0, $v0, 2
    /* 283D8 80037BD8 1680013C */  lui        $at, %hi(D_8015C006)
    /* 283DC 80037BDC 21084100 */  addu       $at, $v0, $at
    /* 283E0 80037BE0 06C02294 */  lhu        $v0, %lo(D_8015C006)($at)
    /* 283E4 80037BE4 00000000 */  nop
    /* 283E8 80037BE8 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 283EC 80037BEC 03006014 */  bnez       $v1, .L80037BFC
    /* 283F0 80037BF0 0F00023C */   lui       $v0, (0xF0000 >> 16)
    /* 283F4 80037BF4 03DF0008 */  j          .L80037C0C
    /* 283F8 80037BF8 21100000 */   addu      $v0, $zero, $zero
  .L80037BFC:
    /* 283FC 80037BFC 24108200 */  and        $v0, $a0, $v0
    /* 28400 80037C00 02004014 */  bnez       $v0, .L80037C0C
    /* 28404 80037C04 21106000 */   addu      $v0, $v1, $zero
  .L80037C08:
    /* 28408 80037C08 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L80037C0C:
    /* 2840C 80037C0C 0800E003 */  jr         $ra
    /* 28410 80037C10 00000000 */   nop
.size func_80037BB4, . - func_80037BB4
