.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800469A4
    /* 371A4 800469A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 371A8 800469A8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 371AC 800469AC 21808000 */  addu       $s0, $a0, $zero
    /* 371B0 800469B0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 371B4 800469B4 3E000296 */  lhu        $v0, 0x3E($s0)
    /* 371B8 800469B8 0C000486 */  lh         $a0, 0xC($s0)
    /* 371BC 800469BC 18000526 */  addiu      $a1, $s0, 0x18
    /* 371C0 800469C0 260000A6 */  sh         $zero, 0x26($s0)
    /* 371C4 800469C4 240000A6 */  sh         $zero, 0x24($s0)
    /* 371C8 800469C8 220000A6 */  sh         $zero, 0x22($s0)
    /* 371CC 800469CC 1E0000A6 */  sh         $zero, 0x1E($s0)
.size func_800469A4, . - func_800469A4
