.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002DD68
    /* 1E568 8002DD68 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 1E56C 8002DD6C 00310600 */  sll        $a2, $a2, 4
    /* 1E570 8002DD70 2130C500 */  addu       $a2, $a2, $a1
    /* 1E574 8002DD74 0000C38C */  lw         $v1, 0x0($a2)
    /* 1E578 8002DD78 21108000 */  addu       $v0, $a0, $zero
    /* 1E57C 8002DD7C 0000A3AF */  sw         $v1, 0x0($sp)
    /* 1E580 8002DD80 0300A38B */  lwl        $v1, 0x3($sp)
    /* 1E584 8002DD84 0000A39B */  lwr        $v1, 0x0($sp)
    /* 1E588 8002DD88 00000000 */  nop
    /* 1E58C 8002DD8C 030043A8 */  swl        $v1, 0x3($v0)
    /* 1E590 8002DD90 000043B8 */  swr        $v1, 0x0($v0)
    /* 1E594 8002DD94 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 1E598 8002DD98 0800E003 */  jr         $ra
    /* 1E59C 8002DD9C 00000000 */   nop
.size func_8002DD68, . - func_8002DD68
