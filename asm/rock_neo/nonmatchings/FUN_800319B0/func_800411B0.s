.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800411B0
    /* 319B0 800411B0 21186200 */  addu       $v1, $v1, $v0
    /* 319B4 800411B4 80180300 */  sll        $v1, $v1, 2
    /* 319B8 800411B8 0980013C */  lui        $at, %hi(D_80089A8A)
    /* 319BC 800411BC 21082300 */  addu       $at, $at, $v1
    /* 319C0 800411C0 8A9A2290 */  lbu        $v0, %lo(D_80089A8A)($at)
    /* 319C4 800411C4 00000000 */  nop
    /* 319C8 800411C8 02004014 */  bnez       $v0, .L800411D4
    /* 319CC 800411CC 21100000 */   addu      $v0, $zero, $zero
  .L800411D0:
    /* 319D0 800411D0 01000224 */  addiu      $v0, $zero, 0x1
  .L800411D4:
    /* 319D4 800411D4 0800E003 */  jr         $ra
    /* 319D8 800411D8 00000000 */   nop
.size func_800411B0, . - func_800411B0
