.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054B4C
    /* 4534C 80054B4C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 45350 80054B50 1000BFAF */  sw         $ra, 0x10($sp)
    /* 45354 80054B54 7C008290 */  lbu        $v0, 0x7C($a0)
    /* 45358 80054B58 00000000 */  nop
    /* 4535C 80054B5C 80100200 */  sll        $v0, $v0, 2
    /* 45360 80054B60 0980013C */  lui        $at, %hi(D_8008AB08)
    /* 45364 80054B64 21082200 */  addu       $at, $at, $v0
    /* 45368 80054B68 08AB228C */  lw         $v0, %lo(D_8008AB08)($at)
    /* 4536C 80054B6C 00000000 */  nop
    /* 45370 80054B70 09F84000 */  jalr       $v0
    /* 45374 80054B74 00000000 */   nop
    /* 45378 80054B78 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4537C 80054B7C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 45380 80054B80 0800E003 */  jr         $ra
    /* 45384 80054B84 00000000 */   nop
.size func_80054B4C, . - func_80054B4C
