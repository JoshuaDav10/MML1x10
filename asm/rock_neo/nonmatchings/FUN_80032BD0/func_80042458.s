.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80042458
    /* 32C58 80042458 09008390 */  lbu        $v1, 0x9($a0)
    /* 32C5C 8004245C 00000000 */  nop
    /* 32C60 80042460 0B00622C */  sltiu      $v0, $v1, 0xB
    /* 32C64 80042464 18004010 */  beqz       $v0, .L800424C8
    /* 32C68 80042468 80100300 */   sll       $v0, $v1, 2
    /* 32C6C 8004246C 0180013C */  lui        $at, %hi(jtbl_80010CA4)
    /* 32C70 80042470 21082200 */  addu       $at, $at, $v0
    /* 32C74 80042474 A40C228C */  lw         $v0, %lo(jtbl_80010CA4)($at)
    /* 32C78 80042478 00000000 */  nop
    /* 32C7C 8004247C 08004000 */  jr         $v0
.size func_80042458, . - func_80042458
