.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059134
    /* 49934 80059134 70118393 */  lbu        $v1, %gp_rel(D_800989D4)($gp)
    /* 49938 80059138 00000000 */  nop
    /* 4993C 8005913C 2B104300 */  sltu       $v0, $v0, $v1
    /* 49940 80059140 3E004010 */  beqz       $v0, .L8005923C
    /* 49944 80059144 81000424 */   addiu     $a0, $zero, 0x81
    /* 49948 80059148 01000524 */  addiu      $a1, $zero, 0x1
    /* 4994C 8005914C CC12828F */  lw         $v0, %gp_rel(Moji_flag3)($gp)
.size func_80059134, . - func_80059134
    /* 49950 80059150 00000000 */  nop
