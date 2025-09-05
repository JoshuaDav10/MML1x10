.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80045980
    /* 36180 80045980 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 36184 80045984 1000BFAF */  sw         $ra, 0x10($sp)
    /* 36188 80045988 62C6000C */  jal        func_80031988
    /* 3618C 8004598C 00000000 */   nop
    /* 36190 80045990 1000BF8F */  lw         $ra, 0x10($sp)
    /* 36194 80045994 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 36198 80045998 0800E003 */  jr         $ra
    /* 3619C 8004599C 00000000 */   nop
.size func_80045980, . - func_80045980
