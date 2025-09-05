.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80051F3C
    /* 4273C 80051F3C 0C01B78F */  lw         $s7, 0x10C($sp)
    /* 42740 80051F40 F400BFAF */  sw         $ra, 0xF4($sp)
    /* 42744 80051F44 F000BEAF */  sw         $fp, 0xF0($sp)
    /* 42748 80051F48 E400B5AF */  sw         $s5, 0xE4($sp)
    /* 4274C 80051F4C D400B1AF */  sw         $s1, 0xD4($sp)
    /* 42750 80051F50 74005E82 */  lb         $fp, 0x74($s2)
    /* 42754 80051F54 AC4D010C */  jal        func_800536B0
    /* 42758 80051F58 21300002 */   addu      $a2, $s0, $zero
    /* 4275C 80051F5C 7800448E */  lw         $a0, 0x78($s2)
    /* 42760 80051F60 F02C010C */  jal        func_8004B3C0
    /* 42764 80051F64 00000000 */   nop
    /* 42768 80051F68 01004492 */  lbu        $a0, 0x1($s2)
    /* 4276C 80051F6C 9DBF000C */  jal        func_8002FE74
    /* 42770 80051F70 00000000 */   nop
    /* 42774 80051F74 21204002 */  addu       $a0, $s2, $zero
    /* 42778 80051F78 21286002 */  addu       $a1, $s3, $zero
    /* 4277C 80051F7C 21308002 */  addu       $a2, $s4, $zero
    /* 42780 80051F80 2138E002 */  addu       $a3, $s7, $zero
    /* 42784 80051F84 0100422C */  sltiu      $v0, $v0, 0x1
    /* 42788 80051F88 C0AB0200 */  sll        $s5, $v0, 15
.size func_80051F3C, . - func_80051F3C
