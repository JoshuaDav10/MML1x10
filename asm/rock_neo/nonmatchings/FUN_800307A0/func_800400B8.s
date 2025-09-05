.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800400B8
    /* 308B8 800400B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 308BC 800400BC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 308C0 800400C0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 308C4 800400C4 0602010C */  jal        func_80040818
    /* 308C8 800400C8 21808000 */   addu      $s0, $a0, $zero
    /* 308CC 800400CC 13004014 */  bnez       $v0, .L8004011C
    /* 308D0 800400D0 00000000 */   nop
    /* 308D4 800400D4 74000282 */  lb         $v0, 0x74($s0)
    /* 308D8 800400D8 00000000 */  nop
    /* 308DC 800400DC 09004014 */  bnez       $v0, .L80040104
    /* 308E0 800400E0 01000224 */   addiu     $v0, $zero, 0x1
    /* 308E4 800400E4 0A000392 */  lbu        $v1, 0xA($s0)
    /* 308E8 800400E8 00000000 */  nop
    /* 308EC 800400EC 05006214 */  bne        $v1, $v0, .L80040104
.size func_800400B8, . - func_800400B8
