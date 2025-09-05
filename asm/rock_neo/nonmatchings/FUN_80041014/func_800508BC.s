.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800508BC
    /* 410BC 800508BC 801F033C */  lui        $v1, (0x1F8000D4 >> 16)
    /* 410C0 800508C0 D4006384 */  lh         $v1, (0x1F8000D4 & 0xFFFF)($v1)
    /* 410C4 800508C4 00000000 */  nop
    /* 410C8 800508C8 10006010 */  beqz       $v1, .L8005090C
    /* 410CC 800508CC 21280000 */   addu      $a1, $zero, $zero
    /* 410D0 800508D0 04008284 */  lh         $v0, 0x4($a0)
    /* 410D4 800508D4 02006104 */  bgez       $v1, .L800508E0
    /* 410D8 800508D8 00000000 */   nop
    /* 410DC 800508DC 23180300 */  negu       $v1, $v1
.size func_800508BC, . - func_800508BC
