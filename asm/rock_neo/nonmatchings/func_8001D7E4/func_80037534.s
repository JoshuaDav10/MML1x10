.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80037534
    /* 27D34 80037534 F4048724 */  addiu      $a3, $a0, 0x4F4
    /* 27D38 80037538 21300000 */  addu       $a2, $zero, $zero
    /* 27D3C 8003753C FA048424 */  addiu      $a0, $a0, 0x4FA
    /* 27D40 80037540 0980053C */  lui        $a1, %hi(D_80089EAC)
    /* 27D44 80037544 AC9EA524 */  addiu      $a1, $a1, %lo(D_80089EAC)
  .L80037548:
    /* 27D48 80037548 0000E0A0 */  sb         $zero, 0x0($a3)
    /* 27D4C 8003754C FBFF80A0 */  sb         $zero, -0x5($a0)
    /* 27D50 80037550 FCFF80A0 */  sb         $zero, -0x4($a0)
    /* 27D54 80037554 FDFF80A0 */  sb         $zero, -0x3($a0)
    /* 27D58 80037558 FEFF80A0 */  sb         $zero, -0x2($a0)
    /* 27D5C 8003755C 0000A38C */  lw         $v1, 0x0($a1)
    /* 27D60 80037560 0400A524 */  addiu      $a1, $a1, 0x4
    /* 27D64 80037564 FBFF8280 */  lb         $v0, -0x5($a0)
    /* 27D68 80037568 0100C624 */  addiu      $a2, $a2, 0x1
    /* 27D6C 8003756C C0100200 */  sll        $v0, $v0, 3
    /* 27D70 80037570 21104300 */  addu       $v0, $v0, $v1
    /* 27D74 80037574 02004294 */  lhu        $v0, 0x2($v0)
    /* 27D78 80037578 0800E724 */  addiu      $a3, $a3, 0x8
    /* 27D7C 8003757C 000082A4 */  sh         $v0, 0x0($a0)
    /* 27D80 80037580 1000C228 */  slti       $v0, $a2, 0x10
    /* 27D84 80037584 F0FF4014 */  bnez       $v0, .L80037548
    /* 27D88 80037588 08008424 */   addiu     $a0, $a0, 0x8
    /* 27D8C 8003758C 0800E003 */  jr         $ra
    /* 27D90 80037590 00000000 */   nop
.size func_80037534, . - func_80037534
