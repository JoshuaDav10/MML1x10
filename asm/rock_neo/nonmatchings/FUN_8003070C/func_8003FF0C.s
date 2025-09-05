.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003FF0C
    /* 3070C 8003FF0C 21280000 */  addu       $a1, $zero, $zero
    /* 30710 8003FF10 1F004014 */  bnez       $v0, .L8003FF90
    /* 30714 8003FF14 00000000 */   nop
  .L8003FF18:
    /* 30718 8003FF18 74010282 */  lb         $v0, 0x174($s0)
    /* 3071C 8003FF1C 00000000 */  nop
    /* 30720 8003FF20 C0004230 */  andi       $v0, $v0, 0xC0
    /* 30724 8003FF24 11004014 */  bnez       $v0, .L8003FF6C
    /* 30728 8003FF28 00000000 */   nop
    /* 3072C 8003FF2C 77010282 */  lb         $v0, 0x177($s0)
    /* 30730 8003FF30 00000000 */  nop
    /* 30734 8003FF34 0D004014 */  bnez       $v0, .L8003FF6C
    /* 30738 8003FF38 00000000 */   nop
    /* 3073C 8003FF3C B100010C */  jal        func_800402C4
.size func_8003FF0C, . - func_8003FF0C
