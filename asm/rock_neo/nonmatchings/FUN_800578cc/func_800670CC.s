.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800670CC
    /* 578CC 800670CC 579C0108 */  j          .L8006715C
    /* 578D0 800670D0 060003A2 */   sb        $v1, 0x6($s0)
  glabel .L800670D4
    /* 578D4 800670D4 02000424 */  addiu      $a0, $zero, 0x2
    /* 578D8 800670D8 0980053C */  lui        $a1, %hi(D_8008CB1C)
    /* 578DC 800670DC 1CCBA58C */  lw         $a1, %lo(D_8008CB1C)($a1)
    /* 578E0 800670E0 0B4E010C */  jal        MojiTaskExec
    /* 578E4 800670E4 FFFF0624 */   addiu     $a2, $zero, -0x1
    /* 578E8 800670E8 06000292 */  lbu        $v0, 0x6($s0)
    /* 578EC 800670EC 00000000 */  nop
    /* 578F0 800670F0 02004224 */  addiu      $v0, $v0, 0x2
    /* 578F4 800670F4 579C0108 */  j          .L8006715C
    /* 578F8 800670F8 060002A2 */   sb        $v0, 0x6($s0)
  glabel .L800670FC
    /* 578FC 800670FC 02000424 */  addiu      $a0, $zero, 0x2
.size func_800670CC, . - func_800670CC
