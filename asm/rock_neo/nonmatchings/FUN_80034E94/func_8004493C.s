.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004493C
    /* 3513C 8004493C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 35140 80044940 1000BFAF */  sw         $ra, 0x10($sp)
    /* 35144 80044944 62C6000C */  jal        func_80031988
    /* 35148 80044948 00000000 */   nop
    /* 3514C 8004494C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 35150 80044950 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 35154 80044954 0800E003 */  jr         $ra
    /* 35158 80044958 00000000 */   nop
.size func_8004493C, . - func_8004493C
