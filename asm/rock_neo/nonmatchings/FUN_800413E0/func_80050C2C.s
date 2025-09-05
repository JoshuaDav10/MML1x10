.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80050C2C
    /* 4142C 80050C2C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 41430 80050C30 2000B0AF */  sw         $s0, 0x20($sp)
    /* 41434 80050C34 21808000 */  addu       $s0, $a0, $zero
    /* 41438 80050C38 3400BFAF */  sw         $ra, 0x34($sp)
    /* 4143C 80050C3C 3000B4AF */  sw         $s4, 0x30($sp)
    /* 41440 80050C40 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 41444 80050C44 2800B2AF */  sw         $s2, 0x28($sp)
    /* 41448 80050C48 2400B1AF */  sw         $s1, 0x24($sp)
    /* 4144C 80050C4C 7800058E */  lw         $a1, 0x78($s0)
    /* 41450 80050C50 3F45010C */  jal        func_800514FC
    /* 41454 80050C54 1000A627 */   addiu     $a2, $sp, 0x10
.size func_80050C2C, . - func_80050C2C
