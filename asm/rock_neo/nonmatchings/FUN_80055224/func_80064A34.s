.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80064A34
    /* 55234 80064A34 B40E848F */  lw         $a0, %gp_rel(D_80098718)($gp)
    /* 55238 80064A38 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5523C 80064A3C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 55240 80064A40 BCFF010C */  jal        TestEvent
    /* 55244 80064A44 00000000 */   nop
    /* 55248 80064A48 BC0E848F */  lw         $a0, %gp_rel(D_80098720)($gp)
    /* 5524C 80064A4C BCFF010C */  jal        TestEvent
    /* 55250 80064A50 00000000 */   nop
    /* 55254 80064A54 B80E848F */  lw         $a0, %gp_rel(D_8009871C)($gp)
    /* 55258 80064A58 BCFF010C */  jal        TestEvent
    /* 5525C 80064A5C 00000000 */   nop
    /* 55260 80064A60 C00E848F */  lw         $a0, %gp_rel(D_80098724)($gp)
    /* 55264 80064A64 BCFF010C */  jal        TestEvent
    /* 55268 80064A68 00000000 */   nop
    /* 5526C 80064A6C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 55270 80064A70 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 55274 80064A74 0800E003 */  jr         $ra
    /* 55278 80064A78 00000000 */   nop
.size func_80064A34, . - func_80064A34
