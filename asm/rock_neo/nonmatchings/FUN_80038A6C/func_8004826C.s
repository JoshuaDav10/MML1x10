.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004826C
    /* 38A6C 8004826C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 38A70 80048270 21808000 */  addu       $s0, $a0, $zero
    /* 38A74 80048274 8F000424 */  addiu      $a0, $zero, 0x8F
    /* 38A78 80048278 21280000 */  addu       $a1, $zero, $zero
    /* 38A7C 8004827C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 38A80 80048280 0268000C */  jal        Sound_call
    /* 38A84 80048284 21300000 */   addu      $a2, $zero, $zero
    /* 38A88 80048288 21200002 */  addu       $a0, $s0, $zero
    /* 38A8C 8004828C 62C6000C */  jal        func_80031988
    /* 38A90 80048290 000000A2 */   sb        $zero, 0x0($s0)
    /* 38A94 80048294 1400BF8F */  lw         $ra, 0x14($sp)
    /* 38A98 80048298 1000B08F */  lw         $s0, 0x10($sp)
    /* 38A9C 8004829C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 38AA0 800482A0 0800E003 */  jr         $ra
    /* 38AA4 800482A4 00000000 */   nop
.size func_8004826C, . - func_8004826C
