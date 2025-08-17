.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80012F24
    /* 3724 80012F24 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3728 80012F28 1000B0AF */  sw         $s0, 0x10($sp)
    /* 372C 80012F2C C0810400 */  sll        $s0, $a0, 7
    /* 3730 80012F30 1400BFAF */  sw         $ra, 0x14($sp)
    /* 3734 80012F34 2080013C */  lui        $at, %hi(D_801F8100)
    /* 3738 80012F38 21080102 */  addu       $at, $s0, $at
    /* 373C 80012F3C 008120A4 */  sh         $zero, %lo(D_801F8100)($at)
    /* 3740 80012F40 DCFF010C */  jal        func_8007FF70
    /* 3744 80012F44 00000000 */   nop
    /* 3748 80012F48 2080013C */  lui        $at, %hi(D_801F8108)
    /* 374C 80012F4C 21080102 */  addu       $at, $s0, $at
    /* 3750 80012F50 0881248C */  lw         $a0, %lo(D_801F8108)($at)
    /* 3754 80012F54 C8FF010C */  jal        CloseTh
    /* 3758 80012F58 00000000 */   nop
    /* 375C 80012F5C E0FF010C */  jal        func_8007FF80
    /* 3760 80012F60 00000000 */   nop
    /* 3764 80012F64 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3768 80012F68 1000B08F */  lw         $s0, 0x10($sp)
    /* 376C 80012F6C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3770 80012F70 0800E003 */  jr         $ra
    /* 3774 80012F74 00000000 */   nop
.size func_80012F24, . - func_80012F24
