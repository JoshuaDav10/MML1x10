.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800400F4
    /* 308F4 800400F4 C401010C */  jal        func_80040710
    /* 308F8 800400F8 21200002 */   addu      $a0, $s0, $zero
    /* 308FC 800400FC 07004014 */  bnez       $v0, .L8004011C
    /* 30900 80040100 00000000 */   nop
  .L80040104:
    /* 30904 80040104 12010382 */  lb         $v1, 0x112($s0)
    /* 30908 80040108 02000224 */  addiu      $v0, $zero, 0x2
    /* 3090C 8004010C 03006210 */  beq        $v1, $v0, .L8004011C
    /* 30910 80040110 21200002 */   addu      $a0, $s0, $zero
    /* 30914 80040114 DA02010C */  jal        func_80040B68
    /* 30918 80040118 02000524 */   addiu     $a1, $zero, 0x2
  .L8004011C:
    /* 3091C 8004011C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 30920 80040120 1000B08F */  lw         $s0, 0x10($sp)
    /* 30924 80040124 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 30928 80040128 0800E003 */  jr         $ra
    /* 3092C 8004012C 00000000 */   nop
.size func_800400F4, . - func_800400F4
