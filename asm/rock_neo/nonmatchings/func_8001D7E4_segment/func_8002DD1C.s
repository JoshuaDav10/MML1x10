.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002DD1C
    /* 1E51C 8002DD1C 21108000 */  addu       $v0, $a0, $zero
    /* 1E520 8002DD20 C0300600 */  sll        $a2, $a2, 3
    /* 1E524 8002DD24 2130C500 */  addu       $a2, $a2, $a1
    /* 1E528 8002DD28 0000C38C */  lw         $v1, 0x0($a2)
    /* 1E52C 8002DD2C 0400C48C */  lw         $a0, 0x4($a2)
    /* 1E530 8002DD30 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 1E534 8002DD34 0000A3AF */  sw         $v1, 0x0($sp)
    /* 1E538 8002DD38 0400A4AF */  sw         $a0, 0x4($sp)
    /* 1E53C 8002DD3C 0300A38B */  lwl        $v1, 0x3($sp)
    /* 1E540 8002DD40 0000A39B */  lwr        $v1, 0x0($sp)
    /* 1E544 8002DD44 0700A48B */  lwl        $a0, 0x7($sp)
    /* 1E548 8002DD48 0400A49B */  lwr        $a0, 0x4($sp)
    /* 1E54C 8002DD4C 030043A8 */  swl        $v1, 0x3($v0)
    /* 1E550 8002DD50 000043B8 */  swr        $v1, 0x0($v0)
    /* 1E554 8002DD54 070044A8 */  swl        $a0, 0x7($v0)
    /* 1E558 8002DD58 040044B8 */  swr        $a0, 0x4($v0)
    /* 1E55C 8002DD5C 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 1E560 8002DD60 0800E003 */  jr         $ra
    /* 1E564 8002DD64 00000000 */   nop
.size func_8002DD1C, . - func_8002DD1C
