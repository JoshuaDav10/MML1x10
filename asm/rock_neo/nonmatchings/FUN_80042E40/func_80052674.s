.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80052674
    /* 42E74 80052674 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 42E78 80052678 21408000 */  addu       $t0, $a0, $zero
.size func_80052674, . - func_80052674
