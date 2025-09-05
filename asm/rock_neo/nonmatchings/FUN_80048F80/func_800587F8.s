.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800587F8
    /* 48FF8 800587F8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 48FFC 800587FC 1000B0AF */  sw         $s0, 0x10($sp)
.size func_800587F8, . - func_800587F8
