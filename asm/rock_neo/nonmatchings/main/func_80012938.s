.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80012938
    /* 3138 80012938 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 313C 8001293C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3140 80012940 DCFF010C */  jal        func_8007FF70
    /* 3144 80012944 00000000 */   nop
    /* 3148 80012948 00F0043C */  lui        $a0, (0xF0000010 >> 16)
    /* 314C 8001294C 10008434 */  ori        $a0, $a0, (0xF0000010 & 0xFFFF)
    /* 3150 80012950 00100524 */  addiu      $a1, $zero, 0x1000
    /* 3154 80012954 0180073C */  lui        $a3, %hi(func_8001246C)
    /* 3158 80012958 6C24E724 */  addiu      $a3, $a3, %lo(func_8001246C)
    /* 315C 8001295C B4FF010C */  jal        OpenEvent
    /* 3160 80012960 00100624 */   addiu     $a2, $zero, 0x1000
    /* 3164 80012964 741082AF */  sw         $v0, %gp_rel(D_800988D8)($gp)
    /* 3168 80012968 C0FF010C */  jal        EnableEvent
    /* 316C 8001296C 21204000 */   addu      $a0, $v0, $zero
    /* 3170 80012970 E0FF010C */  jal        func_8007FF80
    /* 3174 80012974 00000000 */   nop
    /* 3178 80012978 1000BF8F */  lw         $ra, 0x10($sp)
    /* 317C 8001297C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3180 80012980 0800E003 */  jr         $ra
    /* 3184 80012984 00000000 */   nop
.size func_80012938, . - func_80012938
