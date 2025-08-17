.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003ACF4
    /* 2B4F4 8003ACF4 40100400 */  sll        $v0, $a0, 1
    /* 2B4F8 8003ACF8 21104400 */  addu       $v0, $v0, $a0
    /* 2B4FC 8003ACFC 80100200 */  sll        $v0, $v0, 2
    /* 2B500 8003AD00 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2B504 8003AD04 21084100 */  addu       $at, $v0, $at
    /* 2B508 8003AD08 08C025AC */  sw         $a1, %lo(D_8015C008)($at)
    /* 2B50C 8003AD0C 0800E003 */  jr         $ra
    /* 2B510 8003AD10 00000000 */   nop
.size func_8003ACF4, . - func_8003ACF4
