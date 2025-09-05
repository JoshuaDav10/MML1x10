.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80042238
    /* 32A38 80042238 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 32A3C 8004223C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 32A40 80042240 21808000 */  addu       $s0, $a0, $zero
    /* 32A44 80042244 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 32A48 80042248 1400BFAF */  sw         $ra, 0x14($sp)
.size func_80042238, . - func_80042238
