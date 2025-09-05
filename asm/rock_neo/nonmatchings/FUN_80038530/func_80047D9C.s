.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80047D9C
    /* 3859C 80047D9C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 385A0 80047DA0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 385A4 80047DA4 08008290 */  lbu        $v0, 0x8($a0)
    /* 385A8 80047DA8 00000000 */  nop
    /* 385AC 80047DAC 80100200 */  sll        $v0, $v0, 2
    /* 385B0 80047DB0 0980013C */  lui        $at, %hi(D_8008A724)
    /* 385B4 80047DB4 21082200 */  addu       $at, $at, $v0
    /* 385B8 80047DB8 24A7228C */  lw         $v0, %lo(D_8008A724)($at)
    /* 385BC 80047DBC 00000000 */  nop
    /* 385C0 80047DC0 09F84000 */  jalr       $v0
    /* 385C4 80047DC4 00000000 */   nop
    /* 385C8 80047DC8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 385CC 80047DCC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 385D0 80047DD0 0800E003 */  jr         $ra
    /* 385D4 80047DD4 00000000 */   nop
.size func_80047D9C, . - func_80047D9C
