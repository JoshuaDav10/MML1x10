.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003FE1C
    /* 3061C 8003FE1C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 30620 8003FE20 1000B0AF */  sw         $s0, 0x10($sp)
    /* 30624 8003FE24 21808000 */  addu       $s0, $a0, $zero
    /* 30628 8003FE28 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3062C 8003FE2C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 30630 8003FE30 1C011196 */  lhu        $s1, 0x11C($s0)
    /* 30634 8003FE34 5604010C */  jal        func_80041158
    /* 30638 8003FE38 00000000 */   nop
    /* 3063C 8003FE3C 52004014 */  bnez       $v0, .L8003FF88
    /* 30640 8003FE40 00000000 */   nop
    /* 30644 8003FE44 24010396 */  lhu        $v1, 0x124($s0)
    /* 30648 8003FE48 26010596 */  lhu        $a1, 0x126($s0)
    /* 3064C 8003FE4C 2C010296 */  lhu        $v0, 0x12C($s0)
    /* 30650 8003FE50 2E010496 */  lhu        $a0, 0x12E($s0)
    /* 30654 8003FE54 25186500 */  or         $v1, $v1, $a1
    /* 30658 8003FE58 25104400 */  or         $v0, $v0, $a0
    /* 3065C 8003FE5C 25186200 */  or         $v1, $v1, $v0
    /* 30660 8003FE60 38010296 */  lhu        $v0, 0x138($s0)
    /* 30664 8003FE64 3A010496 */  lhu        $a0, 0x13A($s0)
    /* 30668 8003FE68 3C010596 */  lhu        $a1, 0x13C($s0)
    /* 3066C 8003FE6C 25104300 */  or         $v0, $v0, $v1
    /* 30670 8003FE70 25208500 */  or         $a0, $a0, $a1
    /* 30674 8003FE74 28010396 */  lhu        $v1, 0x128($s0)
    /* 30678 8003FE78 2A010596 */  lhu        $a1, 0x12A($s0)
.size func_8003FE1C, . - func_8003FE1C
