.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057FF8
    /* 487F8 80057FF8 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 487FC 80057FFC 5000B0AF */  sw         $s0, 0x50($sp)
.size func_80057FF8, . - func_80057FF8
