.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80045A7C
    /* 3627C 80045A7C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 36280 80045A80 1000B0AF */  sw         $s0, 0x10($sp)
    /* 36284 80045A84 21808000 */  addu       $s0, $a0, $zero
    /* 36288 80045A88 CF000424 */  addiu      $a0, $zero, 0xCF
    /* 3628C 80045A8C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 36290 80045A90 1468000C */  jal        Sound_call2
    /* 36294 80045A94 38000526 */   addiu     $a1, $s0, 0x38
    /* 36298 80045A98 62C6000C */  jal        func_80031988
    /* 3629C 80045A9C 21200002 */   addu      $a0, $s0, $zero
    /* 362A0 80045AA0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 362A4 80045AA4 1000B08F */  lw         $s0, 0x10($sp)
    /* 362A8 80045AA8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 362AC 80045AAC 0800E003 */  jr         $ra
    /* 362B0 80045AB0 00000000 */   nop
.size func_80045A7C, . - func_80045A7C
