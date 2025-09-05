.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004557C
    /* 35D7C 8004557C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 35D80 80045580 1000BFAF */  sw         $ra, 0x10($sp)
    /* 35D84 80045584 62C6000C */  jal        func_80031988
    /* 35D88 80045588 00000000 */   nop
    /* 35D8C 8004558C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 35D90 80045590 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 35D94 80045594 0800E003 */  jr         $ra
    /* 35D98 80045598 00000000 */   nop
.size func_8004557C, . - func_8004557C
