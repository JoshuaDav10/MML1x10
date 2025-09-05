.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800509A0
    /* 411A0 800509A0 07004014 */  bnez       $v0, .L800509C0
    /* 411A4 800509A4 0100A338 */   xori      $v1, $a1, 0x1
    /* 411A8 800509A8 72420108 */  j          .L800509C8
    /* 411AC 800509AC 00000000 */   nop
.size func_800509A0, . - func_800509A0
