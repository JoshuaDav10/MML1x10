.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002FE74
    /* 20674 8002FE74 2000822C */  sltiu      $v0, $a0, 0x20
    /* 20678 8002FE78 03004010 */  beqz       $v0, .L8002FE88
    /* 2067C 8002FE7C 00000000 */   nop
    /* 20680 8002FE80 A7BF0008 */  j          .L8002FE9C
    /* 20684 8002FE84 10008430 */   andi      $a0, $a0, 0x10
  .L8002FE88:
    /* 20688 8002FE88 E0008430 */  andi       $a0, $a0, 0xE0
    /* 2068C 8002FE8C A0000224 */  addiu      $v0, $zero, 0xA0
    /* 20690 8002FE90 02008214 */  bne        $a0, $v0, .L8002FE9C
    /* 20694 8002FE94 00000000 */   nop
    /* 20698 8002FE98 80000424 */  addiu      $a0, $zero, 0x80
  .L8002FE9C:
    /* 2069C 8002FE9C 0800E003 */  jr         $ra
    /* 206A0 8002FEA0 21108000 */   addu      $v0, $a0, $zero
.size func_8002FE74, . - func_8002FE74
