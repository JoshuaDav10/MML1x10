.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L8007E2FC
    /* 6EAFC 8007E2FC 1000A397 */  lhu        $v1, 0x10($sp)
    /* 6EB00 8007E300 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 6EB04 8007E304 3F006230 */  andi       $v0, $v1, 0x3F
    /* 6EB08 8007E308 06004014 */  bnez       $v0, .L8007E324
    /* 6EB0C 8007E30C 80300800 */   sll       $a2, $t0, 2
    /* 6EB10 8007E310 1400A297 */  lhu        $v0, 0x14($sp)
    /* 6EB14 8007E314 00000000 */  nop
    /* 6EB18 8007E318 3F004230 */  andi       $v0, $v0, 0x3F
.size .L8007E2FC, . - .L8007E2FC
