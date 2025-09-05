.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L800578C0
    /* 480C0 800578C0 4400038E */  lw         $v1, 0x44($s0)
    /* 480C4 800578C4 00000000 */  nop
    /* 480C8 800578C8 06006010 */  beqz       $v1, .L800578E4
    /* 480CC 800578CC C20004A6 */   sh        $a0, 0xC2($s0)
    /* 480D0 800578D0 40100500 */  sll        $v0, $a1, 1
    /* 480D4 800578D4 21104300 */  addu       $v0, $v0, $v1
    /* 480D8 800578D8 00004294 */  lhu        $v0, 0x0($v0)
    /* 480DC 800578DC 3D5E0108 */  j          .L800578F4
    /* 480E0 800578E0 21106200 */   addu      $v0, $v1, $v0
  .L800578E4:
    /* 480E4 800578E4 80100500 */  sll        $v0, $a1, 2
    /* 480E8 800578E8 0980013C */  lui        $at, %hi(D_8008CACC)
    /* 480EC 800578EC 21082200 */  addu       $at, $at, $v0
    /* 480F0 800578F0 CCCA228C */  lw         $v0, %lo(D_8008CACC)($at)
.size .L800578C0, . - .L800578C0
  .L800578F4:
    /* 480F4 800578F4 00000000 */  nop
