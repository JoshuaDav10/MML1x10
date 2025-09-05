.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800433FC
    /* 33BFC 800433FC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 33C00 80043400 2800B0AF */  sw         $s0, 0x28($sp)
    /* 33C04 80043404 21808000 */  addu       $s0, $a0, $zero
.size func_800433FC, . - func_800433FC
