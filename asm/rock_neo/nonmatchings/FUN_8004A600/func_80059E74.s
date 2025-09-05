.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059E74
    /* 4A674 80059E74 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 4A678 80059E78 7000B0AF */  sw         $s0, 0x70($sp)
    /* 4A67C 80059E7C 21808000 */  addu       $s0, $a0, $zero
.size func_80059E74, . - func_80059E74
