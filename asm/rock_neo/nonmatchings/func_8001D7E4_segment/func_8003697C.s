.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003697C
    /* 2717C 8003697C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 27180 80036980 000E0224 */  addiu      $v0, $zero, 0xE00
    /* 27184 80036984 0C80043C */  lui        $a0, %hi(D_800BC81C)
    /* 27188 80036988 1CC88494 */  lhu        $a0, %lo(D_800BC81C)($a0)
    /* 2718C 8003698C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 27190 80036990 801F013C */  lui        $at, (0x1F800074 >> 16)
    /* 27194 80036994 740020A0 */  sb         $zero, (0x1F800074 & 0xFFFF)($at)
    /* 27198 80036998 801F013C */  lui        $at, (0x1F800006 >> 16)
    /* 2719C 8003699C 060022A4 */  sh         $v0, (0x1F800006 & 0xFFFF)($at)
    /* 271A0 800369A0 801F013C */  lui        $at, (0x1F800076 >> 16)
    /* 271A4 800369A4 760022A4 */  sh         $v0, (0x1F800076 & 0xFFFF)($at)
    /* 271A8 800369A8 73E8010C */  jal        SetFogNear
    /* 271AC 800369AC 80010524 */   addiu     $a1, $zero, 0x180
    /* 271B0 800369B0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 271B4 800369B4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 271B8 800369B8 0800E003 */  jr         $ra
    /* 271BC 800369BC 00000000 */   nop
.size func_8003697C, . - func_8003697C
