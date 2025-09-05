.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800433C0
    /* 33BC0 800433C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 33BC4 800433C4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 33BC8 800433C8 08008290 */  lbu        $v0, 0x8($a0)
    /* 33BCC 800433CC 00000000 */  nop
    /* 33BD0 800433D0 80100200 */  sll        $v0, $v0, 2
    /* 33BD4 800433D4 0980013C */  lui        $at, %hi(D_8008A0CC)
    /* 33BD8 800433D8 21082200 */  addu       $at, $at, $v0
    /* 33BDC 800433DC CCA0228C */  lw         $v0, %lo(D_8008A0CC)($at)
    /* 33BE0 800433E0 00000000 */  nop
    /* 33BE4 800433E4 09F84000 */  jalr       $v0
    /* 33BE8 800433E8 00000000 */   nop
    /* 33BEC 800433EC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 33BF0 800433F0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 33BF4 800433F4 0800E003 */  jr         $ra
    /* 33BF8 800433F8 00000000 */   nop
.size func_800433C0, . - func_800433C0
