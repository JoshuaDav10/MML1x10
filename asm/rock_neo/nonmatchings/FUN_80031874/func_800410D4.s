.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800410D4
    /* 318D4 800410D4 74018280 */  lb         $v0, 0x174($a0)
    /* 318D8 800410D8 00000000 */  nop
    /* 318DC 800410DC C0004530 */  andi       $a1, $v0, 0xC0
.size func_800410D4, . - func_800410D4
