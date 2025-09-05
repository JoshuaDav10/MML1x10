.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80043F34
    /* 34734 80043F34 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 34738 80043F38 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3473C 80043F3C 08008290 */  lbu        $v0, 0x8($a0)
    /* 34740 80043F40 00000000 */  nop
    /* 34744 80043F44 80100200 */  sll        $v0, $v0, 2
    /* 34748 80043F48 0980013C */  lui        $at, %hi(D_8008A208)
    /* 3474C 80043F4C 21082200 */  addu       $at, $at, $v0
    /* 34750 80043F50 08A2228C */  lw         $v0, %lo(D_8008A208)($at)
    /* 34754 80043F54 00000000 */  nop
    /* 34758 80043F58 09F84000 */  jalr       $v0
    /* 3475C 80043F5C 00000000 */   nop
    /* 34760 80043F60 1000BF8F */  lw         $ra, 0x10($sp)
    /* 34764 80043F64 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 34768 80043F68 0800E003 */  jr         $ra
    /* 3476C 80043F6C 00000000 */   nop
.size func_80043F34, . - func_80043F34
