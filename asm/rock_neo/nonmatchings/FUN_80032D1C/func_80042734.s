.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80042734
    /* 32F34 80042734 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 32F38 80042738 1000BFAF */  sw         $ra, 0x10($sp)
    /* 32F3C 8004273C 71018280 */  lb         $v0, 0x171($a0)
    /* 32F40 80042740 00000000 */  nop
    /* 32F44 80042744 80100200 */  sll        $v0, $v0, 2
    /* 32F48 80042748 0980013C */  lui        $at, %hi(D_8008A0C4)
    /* 32F4C 8004274C 21082200 */  addu       $at, $at, $v0
    /* 32F50 80042750 C4A0228C */  lw         $v0, %lo(D_8008A0C4)($at)
    /* 32F54 80042754 00000000 */  nop
    /* 32F58 80042758 09F84000 */  jalr       $v0
    /* 32F5C 8004275C 00000000 */   nop
    /* 32F60 80042760 1000BF8F */  lw         $ra, 0x10($sp)
    /* 32F64 80042764 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 32F68 80042768 0800E003 */  jr         $ra
    /* 32F6C 8004276C 00000000 */   nop
.size func_80042734, . - func_80042734
