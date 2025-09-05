.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058584
    /* 48D84 80058584 0980033C */  lui        $v1, %hi(D_80097FEC)
    /* 48D88 80058588 EC7F6324 */  addiu      $v1, $v1, %lo(D_80097FEC)
    /* 48D8C 8005858C 78610108 */  j          .L800585E0
    /* 48D90 80058590 21200000 */   addu      $a0, $zero, $zero
  .L80058594:
    /* 48D94 80058594 00006380 */  lb         $v1, 0x0($v1)
    /* 48D98 80058598 00000000 */  nop
    /* 48D9C 8005859C 40100300 */  sll        $v0, $v1, 1
    /* 48DA0 800585A0 21104400 */  addu       $v0, $v0, $a0
    /* 48DA4 800585A4 00004294 */  lhu        $v0, 0x0($v0)
    /* 48DA8 800585A8 00000000 */  nop
    /* 48DAC 800585AC 05004014 */  bnez       $v0, .L800585C4
    /* 48DB0 800585B0 21200000 */   addu      $a0, $zero, $zero
    /* 48DB4 800585B4 0980033C */  lui        $v1, %hi(D_80097FE4)
    /* 48DB8 800585B8 E47F6324 */  addiu      $v1, $v1, %lo(D_80097FE4)
    /* 48DBC 800585BC 78610108 */  j          .L800585E0
    /* 48DC0 800585C0 00000000 */   nop
  .L800585C4:
    /* 48DC4 800585C4 0980013C */  lui        $at, %hi(D_8008D029)
    /* 48DC8 800585C8 21082300 */  addu       $at, $at, $v1
    /* 48DCC 800585CC 29D02290 */  lbu        $v0, %lo(D_8008D029)($at)
    /* 48DD0 800585D0 0980033C */  lui        $v1, %hi(D_80097FDC)
    /* 48DD4 800585D4 DC7F6324 */  addiu      $v1, $v1, %lo(D_80097FDC)
    /* 48DD8 800585D8 0980013C */  lui        $at, %hi(D_80097FE2)
    /* 48DDC 800585DC E27F22A0 */  sb         $v0, %lo(D_80097FE2)($at)
  .L800585E0:
    /* 48DE0 800585E0 21286000 */  addu       $a1, $v1, $zero
  .L800585E4:
    /* 48DE4 800585E4 6C00E28C */  lw         $v0, 0x6C($a3)
    /* 48DE8 800585E8 0000A390 */  lbu        $v1, 0x0($a1)
    /* 48DEC 800585EC 21108200 */  addu       $v0, $a0, $v0
    /* 48DF0 800585F0 01008424 */  addiu      $a0, $a0, 0x1
    /* 48DF4 800585F4 020043A0 */  sb         $v1, 0x2($v0)
    /* 48DF8 800585F8 08008228 */  slti       $v0, $a0, 0x8
    /* 48DFC 800585FC F9FF4014 */  bnez       $v0, .L800585E4
.size func_80058584, . - func_80058584
