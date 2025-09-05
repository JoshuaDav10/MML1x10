.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80040178
    /* 30978 80040178 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3097C 8004017C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 30980 80040180 21888000 */  addu       $s1, $a0, $zero
    /* 30984 80040184 1800BFAF */  sw         $ra, 0x18($sp)
.size func_80040178, . - func_80040178
