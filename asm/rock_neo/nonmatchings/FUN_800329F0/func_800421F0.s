.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800421F0
    /* 329F0 800421F0 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 329F4 800421F4 560082A4 */  sh         $v0, 0x56($a0)
    /* 329F8 800421F8 2110E000 */  addu       $v0, $a3, $zero
    /* 329FC 800421FC 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 32A00 80042200 0800E003 */  jr         $ra
    /* 32A04 80042204 00000000 */   nop
.size func_800421F0, . - func_800421F0
