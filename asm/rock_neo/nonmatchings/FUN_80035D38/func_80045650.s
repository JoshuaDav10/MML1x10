.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80045650
    /* 35E50 80045650 08008290 */  lbu        $v0, 0x8($a0)
    /* 35E54 80045654 00000000 */  nop
    /* 35E58 80045658 FBFF4224 */  addiu      $v0, $v0, -0x5
    /* 35E5C 8004565C 80100200 */  sll        $v0, $v0, 2
    /* 35E60 80045660 0980013C */  lui        $at, %hi(D_80097E08)
    /* 35E64 80045664 21082200 */  addu       $at, $at, $v0
    /* 35E68 80045668 087E2394 */  lhu        $v1, %lo(D_80097E08)($at)
.size func_80045650, . - func_80045650
