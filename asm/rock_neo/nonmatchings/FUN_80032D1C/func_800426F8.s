.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800426F8
    /* 32EF8 800426F8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 32EFC 800426FC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 32F00 80042700 70018280 */  lb         $v0, 0x170($a0)
    /* 32F04 80042704 00000000 */  nop
    /* 32F08 80042708 80100200 */  sll        $v0, $v0, 2
    /* 32F0C 8004270C 0980013C */  lui        $at, %hi(D_8008A08C)
    /* 32F10 80042710 21082200 */  addu       $at, $at, $v0
    /* 32F14 80042714 8CA0228C */  lw         $v0, %lo(D_8008A08C)($at)
    /* 32F18 80042718 00000000 */  nop
    /* 32F1C 8004271C 09F84000 */  jalr       $v0
    /* 32F20 80042720 00000000 */   nop
    /* 32F24 80042724 1000BF8F */  lw         $ra, 0x10($sp)
    /* 32F28 80042728 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 32F2C 8004272C 0800E003 */  jr         $ra
    /* 32F30 80042730 00000000 */   nop
.size func_800426F8, . - func_800426F8
