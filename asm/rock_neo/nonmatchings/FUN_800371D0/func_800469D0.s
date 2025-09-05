.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800469D0
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
.size func_800469D0, . - func_800469D0
