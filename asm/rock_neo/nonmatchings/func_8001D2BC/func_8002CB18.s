.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002CB18
    /* 1D318 8002CB18 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 1D31C 8002CB1C 3000B4AF */  sw         $s4, 0x30($sp)
.size func_8002CB18, . - func_8002CB18
