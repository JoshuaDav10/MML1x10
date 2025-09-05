.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80043E2C
    /* 3462C 80043E2C 82000224 */  addiu      $v0, $zero, 0x82
    /* 34630 80043E30 020082A0 */  sb         $v0, 0x2($a0)
    /* 34634 80043E34 14000296 */  lhu        $v0, 0x14($s0)
    /* 34638 80043E38 00000000 */  nop
    /* 3463C 80043E3C 1C0082A4 */  sh         $v0, 0x1C($a0)
    /* 34640 80043E40 16000296 */  lhu        $v0, 0x16($s0)
    /* 34644 80043E44 00000000 */  nop
    /* 34648 80043E48 1E0082A4 */  sh         $v0, 0x1E($a0)
.size func_80043E2C, . - func_80043E2C
