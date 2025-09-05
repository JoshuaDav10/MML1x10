.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060500
    /* 50D00 80060500 21380000 */  addu       $a3, $zero, $zero
    /* 50D04 80060504 CB000424 */  addiu      $a0, $zero, 0xCB
    /* 50D08 80060508 3C000524 */  addiu      $a1, $zero, 0x3C
    /* 50D0C 8006050C 25000692 */  lbu        $a2, 0x25($s0)
    /* 50D10 80060510 8B86010C */  jal        Sub_screen_gauge_set
    /* 50D14 80060514 01000724 */   addiu     $a3, $zero, 0x1
    /* 50D18 80060518 CB000424 */  addiu      $a0, $zero, 0xCB
    /* 50D1C 8006051C 46000524 */  addiu      $a1, $zero, 0x46
    /* 50D20 80060520 2A000692 */  lbu        $a2, 0x2A($s0)
.size func_80060500, . - func_80060500
