.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80048590
    /* 38D90 80048590 40100200 */  sll        $v0, $v0, 1
    /* 38D94 80048594 0980013C */  lui        $at, %hi(D_8008A732)
    /* 38D98 80048598 21082200 */  addu       $at, $at, $v0
    /* 38D9C 8004859C 32A72294 */  lhu        $v0, %lo(D_8008A732)($at)
    /* 38DA0 800485A0 00000000 */  nop
    /* 38DA4 800485A4 230082A0 */  sb         $v0, 0x23($a0)
  .L800485A8:
    /* 38DA8 800485A8 0E008390 */  lbu        $v1, 0xE($a0)
    /* 38DAC 800485AC 80000224 */  addiu      $v0, $zero, 0x80
    /* 38DB0 800485B0 02006214 */  bne        $v1, $v0, .L800485BC
    /* 38DB4 800485B4 02000224 */   addiu     $v0, $zero, 0x2
    /* 38DB8 800485B8 080082A0 */  sb         $v0, 0x8($a0)
  .L800485BC:
    /* 38DBC 800485BC 0800E003 */  jr         $ra
    /* 38DC0 800485C0 00000000 */   nop
.size func_80048590, . - func_80048590
