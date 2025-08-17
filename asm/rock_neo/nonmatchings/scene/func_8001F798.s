.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001F798
    /* FF98 8001F798 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* FF9C 8001F79C 21408000 */  addu       $t0, $a0, $zero
    /* FFA0 8001F7A0 40380800 */  sll        $a3, $t0, 1
    /* FFA4 8001F7A4 2110E800 */  addu       $v0, $a3, $t0
    /* FFA8 8001F7A8 80100200 */  sll        $v0, $v0, 2
    /* FFAC 8001F7AC 0980013C */  lui        $at, %hi(D_80089248)
    /* FFB0 8001F7B0 21082200 */  addu       $at, $at, $v0
    /* FFB4 8001F7B4 4892228C */  lw         $v0, %lo(D_80089248)($at)
    /* FFB8 8001F7B8 00000000 */  nop
    /* FFBC 8001F7BC 15004018 */  blez       $v0, .L8001F814
    /* FFC0 8001F7C0 21300000 */   addu      $a2, $zero, $zero
    /* FFC4 8001F7C4 2128E800 */  addu       $a1, $a3, $t0
  .L8001F7C8:
    /* FFC8 8001F7C8 80280500 */  sll        $a1, $a1, 2
    /* FFCC 8001F7CC 40180600 */  sll        $v1, $a2, 1
    /* FFD0 8001F7D0 0980013C */  lui        $at, %hi(D_8008924C)
    /* FFD4 8001F7D4 21082500 */  addu       $at, $at, $a1
    /* FFD8 8001F7D8 4C92228C */  lw         $v0, %lo(D_8008924C)($at)
    /* FFDC 8001F7DC 0980013C */  lui        $at, %hi(D_80089250)
    /* FFE0 8001F7E0 21082500 */  addu       $at, $at, $a1
    /* FFE4 8001F7E4 5092248C */  lw         $a0, %lo(D_80089250)($at)
    /* FFE8 8001F7E8 21106200 */  addu       $v0, $v1, $v0
    /* FFEC 8001F7EC 00004294 */  lhu        $v0, 0x0($v0)
    /* FFF0 8001F7F0 21186400 */  addu       $v1, $v1, $a0
    /* FFF4 8001F7F4 000062A4 */  sh         $v0, 0x0($v1)
    /* FFF8 8001F7F8 0980013C */  lui        $at, %hi(D_80089248)
    /* FFFC 8001F7FC 21082500 */  addu       $at, $at, $a1
    /* 10000 8001F800 4892228C */  lw         $v0, %lo(D_80089248)($at)
    /* 10004 8001F804 0100C624 */  addiu      $a2, $a2, 0x1
    /* 10008 8001F808 2A10C200 */  slt        $v0, $a2, $v0
    /* 1000C 8001F80C EEFF4014 */  bnez       $v0, .L8001F7C8
    /* 10010 8001F810 2128E800 */   addu      $a1, $a3, $t0
  .L8001F814:
    /* 10014 8001F814 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 10018 8001F818 0800E003 */  jr         $ra
    /* 1001C 8001F81C 00000000 */   nop
.size func_8001F798, . - func_8001F798
