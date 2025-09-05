.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004FF14
    /* 40714 8004FF14 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 40718 8004FF18 1800BFAF */  sw         $ra, 0x18($sp)
    /* 4071C 8004FF1C 01000224 */  addiu      $v0, $zero, 0x1
    /* 40720 8004FF20 1500A210 */  beq        $a1, $v0, .L8004FF78
    /* 40724 8004FF24 21388000 */   addu      $a3, $a0, $zero
    /* 40728 8004FF28 0200A228 */  slti       $v0, $a1, 0x2
    /* 4072C 8004FF2C 05004010 */  beqz       $v0, .L8004FF44
    /* 40730 8004FF30 00000000 */   nop
    /* 40734 8004FF34 0B00A010 */  beqz       $a1, .L8004FF64
    /* 40738 8004FF38 00000000 */   nop
    /* 4073C 8004FF3C 76400108 */  j          .L800501D8
    /* 40740 8004FF40 21100000 */   addu      $v0, $zero, $zero
  .L8004FF44:
    /* 40744 8004FF44 02000224 */  addiu      $v0, $zero, 0x2
    /* 40748 8004FF48 1500A210 */  beq        $a1, $v0, .L8004FFA0
    /* 4074C 8004FF4C 00000000 */   nop
    /* 40750 8004FF50 03000224 */  addiu      $v0, $zero, 0x3
    /* 40754 8004FF54 1700A210 */  beq        $a1, $v0, .L8004FFB4
    /* 40758 8004FF58 21100000 */   addu      $v0, $zero, $zero
    /* 4075C 8004FF5C 76400108 */  j          .L800501D8
    /* 40760 8004FF60 00000000 */   nop
.size func_8004FF14, . - func_8004FF14
