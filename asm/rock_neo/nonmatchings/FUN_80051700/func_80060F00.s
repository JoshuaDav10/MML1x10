.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060F00
    /* 51700 80060F00 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 51704 80060F04 00042232 */  andi       $v0, $s1, 0x400
    /* 51708 80060F08 0C004010 */  beqz       $v0, .L80060F3C
    /* 5170C 80060F0C 00000000 */   nop
    /* 51710 80060F10 00000292 */  lbu        $v0, 0x0($s0)
    /* 51714 80060F14 00000000 */  nop
    /* 51718 80060F18 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 5171C 80060F1C 000002A2 */  sb         $v0, 0x0($s0)
    /* 51720 80060F20 00160200 */  sll        $v0, $v0, 24
.size func_80060F00, . - func_80060F00
