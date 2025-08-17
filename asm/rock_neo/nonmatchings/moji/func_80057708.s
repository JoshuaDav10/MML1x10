.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057708
    /* 47F08 80057708 BE008594 */  lhu        $a1, 0xBE($a0)
    /* 47F0C 8005770C CC0F8393 */  lbu        $v1, %gp_rel(D_80098830)($gp)
    /* 47F10 80057710 0100A224 */  addiu      $v0, $a1, 0x1
    /* 47F14 80057714 80280500 */  sll        $a1, $a1, 2
    /* 47F18 80057718 2128A400 */  addu       $a1, $a1, $a0
    /* 47F1C 8005771C BE0082A4 */  sh         $v0, 0xBE($a0)
    /* 47F20 80057720 1400828C */  lw         $v0, 0x14($a0)
    /* 47F24 80057724 80180300 */  sll        $v1, $v1, 2
    /* 47F28 80057728 01004224 */  addiu      $v0, $v0, 0x1
    /* 47F2C 8005772C 1800A2AC */  sw         $v0, 0x18($a1)
    /* 47F30 80057730 0980013C */  lui        $at, %hi(D_8008CBA4)
    /* 47F34 80057734 21082300 */  addu       $at, $at, $v1
    /* 47F38 80057738 A4CB228C */  lw         $v0, %lo(D_8008CBA4)($at)
    /* 47F3C 8005773C 0800E003 */  jr         $ra
    /* 47F40 80057740 140082AC */   sw        $v0, 0x14($a0)
.size func_80057708, . - func_80057708
