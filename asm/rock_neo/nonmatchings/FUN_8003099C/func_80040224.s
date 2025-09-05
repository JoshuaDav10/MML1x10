.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80040224
    /* 30A24 80040224 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 30A28 80040228 1000B0AF */  sw         $s0, 0x10($sp)
.size func_80040224, . - func_80040224
