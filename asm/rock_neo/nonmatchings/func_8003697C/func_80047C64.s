.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80047C64
    /* 38464 80047C64 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 38468 80047C68 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3846C 80047C6C 361F010C */  jal        func_80047CD8
    /* 38470 80047C70 00000000 */   nop
    /* 38474 80047C74 1000BF8F */  lw         $ra, 0x10($sp)
    /* 38478 80047C78 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3847C 80047C7C 0800E003 */  jr         $ra
    /* 38480 80047C80 00000000 */   nop
.size func_80047C64, . - func_80047C64
