.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80048354
    /* 38B54 80048354 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 38B58 80048358 1000BFAF */  sw         $ra, 0x10($sp)
    /* 38B5C 8004835C 08008290 */  lbu        $v0, 0x8($a0)
    /* 38B60 80048360 00000000 */  nop
    /* 38B64 80048364 80100200 */  sll        $v0, $v0, 2
    /* 38B68 80048368 0980013C */  lui        $at, %hi(D_8008A76C)
    /* 38B6C 8004836C 21082200 */  addu       $at, $at, $v0
    /* 38B70 80048370 6CA7228C */  lw         $v0, %lo(D_8008A76C)($at)
    /* 38B74 80048374 00000000 */  nop
    /* 38B78 80048378 09F84000 */  jalr       $v0
    /* 38B7C 8004837C 00000000 */   nop
    /* 38B80 80048380 1000BF8F */  lw         $ra, 0x10($sp)
    /* 38B84 80048384 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 38B88 80048388 0800E003 */  jr         $ra
    /* 38B8C 8004838C 00000000 */   nop
.size func_80048354, . - func_80048354
