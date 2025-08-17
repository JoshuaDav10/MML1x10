.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80047318
    /* 37B18 80047318 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 37B1C 8004731C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 37B20 80047320 08008290 */  lbu        $v0, 0x8($a0)
    /* 37B24 80047324 00000000 */  nop
    /* 37B28 80047328 80100200 */  sll        $v0, $v0, 2
    /* 37B2C 8004732C 0980013C */  lui        $at, %hi(D_8008A708)
    /* 37B30 80047330 21082200 */  addu       $at, $at, $v0
    /* 37B34 80047334 08A7228C */  lw         $v0, %lo(D_8008A708)($at)
    /* 37B38 80047338 00000000 */  nop
    /* 37B3C 8004733C 09F84000 */  jalr       $v0
    /* 37B40 80047340 00000000 */   nop
    /* 37B44 80047344 1000BF8F */  lw         $ra, 0x10($sp)
    /* 37B48 80047348 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 37B4C 8004734C 0800E003 */  jr         $ra
    /* 37B50 80047350 00000000 */   nop
.size func_80047318, . - func_80047318
