.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80064B60
    /* 55360 80064B60 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 55364 80064B64 1000BFAF */  sw         $ra, 0x10($sp)
    /* 55368 80064B68 04FF010C */  jal        _card_info
    /* 5536C 80064B6C 00210400 */   sll       $a0, $a0, 4
    /* 55370 80064B70 4792010C */  jal        func_8006491C
    /* 55374 80064B74 00000000 */   nop
    /* 55378 80064B78 21184000 */  addu       $v1, $v0, $zero
    /* 5537C 80064B7C 01000224 */  addiu      $v0, $zero, 0x1
.size func_80064B60, . - func_80064B60
