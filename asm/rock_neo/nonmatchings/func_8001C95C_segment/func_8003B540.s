.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003B540
    /* 2BD40 8003B540 1900A004 */  bltz       $a1, .L8003B5A8
    /* 2BD44 8003B544 2138C000 */   addu      $a3, $a2, $zero
    /* 2BD48 8003B548 0980013C */  lui        $at, %hi(D_80089F04)
    /* 2BD4C 8003B54C 21082400 */  addu       $at, $at, $a0
    /* 2BD50 8003B550 049F2480 */  lb         $a0, %lo(D_80089F04)($at)
    /* 2BD54 8003B554 00000000 */  nop
    /* 2BD58 8003B558 13008004 */  bltz       $a0, .L8003B5A8
    /* 2BD5C 8003B55C 01000224 */   addiu     $v0, $zero, 0x1
    /* 2BD60 8003B560 40220400 */  sll        $a0, $a0, 9
    /* 2BD64 8003B564 0C80033C */  lui        $v1, %hi(D_800BD3B8)
    /* 2BD68 8003B568 B8D36324 */  addiu      $v1, $v1, %lo(D_800BD3B8)
    /* 2BD6C 8003B56C 21208300 */  addu       $a0, $a0, $v1
    /* 2BD70 8003B570 03310500 */  sra        $a2, $a1, 4
    /* 2BD74 8003B574 80300600 */  sll        $a2, $a2, 2
    /* 2BD78 8003B578 2130C400 */  addu       $a2, $a2, $a0
    /* 2BD7C 8003B57C 0F00A530 */  andi       $a1, $a1, 0xF
    /* 2BD80 8003B580 40280500 */  sll        $a1, $a1, 1
    /* 2BD84 8003B584 03000324 */  addiu      $v1, $zero, 0x3
    /* 2BD88 8003B588 0418A300 */  sllv       $v1, $v1, $a1
    /* 2BD8C 8003B58C 27180300 */  nor        $v1, $zero, $v1
    /* 2BD90 8003B590 0000C48C */  lw         $a0, 0x0($a2)
    /* 2BD94 8003B594 0428A700 */  sllv       $a1, $a3, $a1
    /* 2BD98 8003B598 24208300 */  and        $a0, $a0, $v1
    /* 2BD9C 8003B59C 25208500 */  or         $a0, $a0, $a1
    /* 2BDA0 8003B5A0 6BED0008 */  j          .L8003B5AC
    /* 2BDA4 8003B5A4 0000C4AC */   sw        $a0, 0x0($a2)
  .L8003B5A8:
    /* 2BDA8 8003B5A8 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L8003B5AC:
    /* 2BDAC 8003B5AC 0800E003 */  jr         $ra
    /* 2BDB0 8003B5B0 00000000 */   nop
.size func_8003B540, . - func_8003B540
