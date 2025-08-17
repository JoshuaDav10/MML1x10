.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80039A38
    /* 2A238 80039A38 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2A23C 80039A3C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2A240 80039A40 080580AF */  sw         $zero, %gp_rel(D_80097D6C)($gp)
    /* 2A244 80039A44 0C0580AF */  sw         $zero, %gp_rel(D_80097D70)($gp)
    /* 2A248 80039A48 7BE6000C */  jal        func_800399EC
    /* 2A24C 80039A4C 00000000 */   nop
    /* 2A250 80039A50 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2A254 80039A54 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2A258 80039A58 0800E003 */  jr         $ra
    /* 2A25C 80039A5C 00000000 */   nop
.size func_80039A38, . - func_80039A38
