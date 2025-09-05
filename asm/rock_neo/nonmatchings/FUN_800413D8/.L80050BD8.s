.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L80050BD8
    /* 413D8 80050BD8 04008284 */  lh         $v0, 0x4($a0)
.size .L80050BD8, . - .L80050BD8
    /* 413DC 80050BDC 00000000 */  nop
