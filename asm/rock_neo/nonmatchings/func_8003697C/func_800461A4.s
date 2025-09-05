.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800461A4
    /* 369A4 800461A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 369A8 800461A8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 369AC 800461AC 21808000 */  addu       $s0, $a0, $zero
    /* 369B0 800461B0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 369B4 800461B4 00000292 */  lbu        $v0, 0x0($s0)
    /* 369B8 800461B8 03000526 */  addiu      $a1, $s0, 0x3
.size func_800461A4, . - func_800461A4
