.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058F18
    /* 49718 80058F18 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4971C 80058F1C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 49720 80058F20 21808000 */  addu       $s0, $a0, $zero
    /* 49724 80058F24 1800BFAF */  sw         $ra, 0x18($sp)
.size func_80058F18, . - func_80058F18
