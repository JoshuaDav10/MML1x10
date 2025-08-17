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
    /* 371D0 800469D0 1C0000A6 */  sh         $zero, 0x1C($s0)
    /* 371D4 800469D4 1A0000A6 */  sh         $zero, 0x1A($s0)
    /* 371D8 800469D8 280002A6 */  sh         $v0, 0x28($s0)
    /* 371DC 800469DC 200002A6 */  sh         $v0, 0x20($s0)
    /* 371E0 800469E0 1AEF010C */  jal        RotMatrixY
    /* 371E4 800469E4 180002A6 */   sh        $v0, 0x18($s0)
    /* 371E8 800469E8 0C000296 */  lhu        $v0, 0xC($s0)
    /* 371EC 800469EC 00000000 */  nop
    /* 371F0 800469F0 00014224 */  addiu      $v0, $v0, 0x100
    /* 371F4 800469F4 0C0002A6 */  sh         $v0, 0xC($s0)
    /* 371F8 800469F8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 371FC 800469FC 1000B08F */  lw         $s0, 0x10($sp)
    /* 37200 80046A00 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 37204 80046A04 0800E003 */  jr         $ra
    /* 37208 80046A08 00000000 */   nop
.size func_800469A4, . - func_800469A4
