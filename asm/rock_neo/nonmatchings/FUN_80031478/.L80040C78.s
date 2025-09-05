.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L80040C78
    /* 31478 80040C78 75010292 */  lbu        $v0, 0x175($s0)
    /* 3147C 80040C7C 03000324 */  addiu      $v1, $zero, 0x3
    /* 31480 80040C80 03004230 */  andi       $v0, $v0, 0x3
    /* 31484 80040C84 11004314 */  bne        $v0, $v1, .L80040CCC
    /* 31488 80040C88 00000000 */   nop
    /* 3148C 80040C8C 10DD000C */  jal        func_80037440
.size .L80040C78, . - .L80040C78
