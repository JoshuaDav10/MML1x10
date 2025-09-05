.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80041ECC
    /* 326CC 80041ECC 56000296 */  lhu        $v0, 0x56($s0)
    /* 326D0 80041ED0 16010396 */  lhu        $v1, 0x116($s0)
    /* 326D4 80041ED4 00000000 */  nop
    /* 326D8 80041ED8 21104300 */  addu       $v0, $v0, $v1
    /* 326DC 80041EDC 560002A6 */  sh         $v0, 0x56($s0)
    /* 326E0 80041EE0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 326E4 80041EE4 1000B08F */  lw         $s0, 0x10($sp)
    /* 326E8 80041EE8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 326EC 80041EEC 0800E003 */  jr         $ra
    /* 326F0 80041EF0 00000000 */   nop
.size func_80041ECC, . - func_80041ECC
