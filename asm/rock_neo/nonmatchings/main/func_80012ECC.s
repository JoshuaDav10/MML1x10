.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80012ECC
    /* 36CC 80012ECC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 36D0 80012ED0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 36D4 80012ED4 1F80103C */  lui        $s0, (0x801F8300 >> 16)
    /* 36D8 80012ED8 00831036 */  ori        $s0, $s0, (0x801F8300 & 0xFFFF)
    /* 36DC 80012EDC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 36E0 80012EE0 0000028E */  lw         $v0, 0x0($s0)
    /* 36E4 80012EE4 DCFF010C */  jal        func_8007FF70
    /* 36E8 80012EE8 000040A4 */   sh        $zero, 0x0($v0)
    /* 36EC 80012EEC 0000028E */  lw         $v0, 0x0($s0)
    /* 36F0 80012EF0 00000000 */  nop
    /* 36F4 80012EF4 0800448C */  lw         $a0, 0x8($v0)
    /* 36F8 80012EF8 C8FF010C */  jal        CloseTh
    /* 36FC 80012EFC 00000000 */   nop
    /* 3700 80012F00 E0FF010C */  jal        func_8007FF80
    /* 3704 80012F04 00000000 */   nop
    /* 3708 80012F08 CCFF010C */  jal        ChangeTh
    /* 370C 80012F0C 00FF043C */   lui       $a0, (0xFF000000 >> 16)
    /* 3710 80012F10 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3714 80012F14 1000B08F */  lw         $s0, 0x10($sp)
    /* 3718 80012F18 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 371C 80012F1C 0800E003 */  jr         $ra
    /* 3720 80012F20 00000000 */   nop
.size func_80012ECC, . - func_80012ECC
