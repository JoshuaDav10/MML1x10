.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A874
    /* 4B074 8005A874 21308000 */  addu       $a2, $a0, $zero
    /* 4B078 8005A878 7D00C390 */  lbu        $v1, 0x7D($a2)
    /* 4B07C 8005A87C 01000224 */  addiu      $v0, $zero, 0x1
.size func_8005A874, . - func_8005A874
