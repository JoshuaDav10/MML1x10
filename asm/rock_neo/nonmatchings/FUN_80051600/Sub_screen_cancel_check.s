.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sub_screen_cancel_check
    /* 51664 80060E64 0C80023C */  lui        $v0, %hi(D_800C0C2A)
    /* 51668 80060E68 2A0C4294 */  lhu        $v0, %lo(D_800C0C2A)($v0)
    /* 5166C 80060E6C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 51670 80060E70 08104230 */  andi       $v0, $v0, 0x1008
    /* 51674 80060E74 03004014 */  bnez       $v0, .L80060E84
    /* 51678 80060E78 1000BFAF */   sw        $ra, 0x10($sp)
    /* 5167C 80060E7C AC830108 */  j          .L80060EB0
.size Sub_screen_cancel_check, . - Sub_screen_cancel_check
