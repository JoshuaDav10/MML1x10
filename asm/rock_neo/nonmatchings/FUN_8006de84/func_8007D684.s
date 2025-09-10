.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8007D684
    /* 6DE84 8007D684 09F84000 */  jalr       $v0
    /* 6DE88 8007D688 21380000 */   addu      $a3, $zero, $zero
    /* 6DE8C 8007D68C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6DE90 8007D690 1000B08F */  lw         $s0, 0x10($sp)
.size func_8007D684, . - func_8007D684
