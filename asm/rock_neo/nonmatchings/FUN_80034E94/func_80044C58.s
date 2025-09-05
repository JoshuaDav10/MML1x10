.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80044C58
    /* 35458 80044C58 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3545C 80044C5C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 35460 80044C60 08008290 */  lbu        $v0, 0x8($a0)
    /* 35464 80044C64 00000000 */  nop
    /* 35468 80044C68 80100200 */  sll        $v0, $v0, 2
    /* 3546C 80044C6C 0980013C */  lui        $at, %hi(D_8008A258)
    /* 35470 80044C70 21082200 */  addu       $at, $at, $v0
    /* 35474 80044C74 58A2228C */  lw         $v0, %lo(D_8008A258)($at)
    /* 35478 80044C78 00000000 */  nop
    /* 3547C 80044C7C 09F84000 */  jalr       $v0
    /* 35480 80044C80 00000000 */   nop
    /* 35484 80044C84 1000BF8F */  lw         $ra, 0x10($sp)
    /* 35488 80044C88 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3548C 80044C8C 0800E003 */  jr         $ra
    /* 35490 80044C90 00000000 */   nop
.size func_80044C58, . - func_80044C58
