.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80012298
    /* 2A98 80012298 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2A9C 8001229C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2AA0 800122A0 0C80043C */  lui        $a0, %hi(D_800C0C00)
    /* 2AA4 800122A4 000C8424 */  addiu      $a0, $a0, %lo(D_800C0C00)
    /* 2AA8 800122A8 6B48000C */  jal        func_800121AC
    /* 2AAC 800122AC 00000000 */   nop
    /* 2AB0 800122B0 0C80043C */  lui        $a0, %hi(D_800C0D68)
    /* 2AB4 800122B4 680D8424 */  addiu      $a0, $a0, %lo(D_800C0D68)
    /* 2AB8 800122B8 6B48000C */  jal        func_800121AC
    /* 2ABC 800122BC 00000000 */   nop
    /* 2AC0 800122C0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2AC4 800122C4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2AC8 800122C8 0800E003 */  jr         $ra
    /* 2ACC 800122CC 00000000 */   nop
.size func_80012298, . - func_80012298
