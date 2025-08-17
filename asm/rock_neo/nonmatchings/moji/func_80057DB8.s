.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057DB8
    /* 485B8 80057DB8 00FF0524 */  addiu      $a1, $zero, -0x100
    /* 485BC 80057DBC F411838F */  lw         $v1, %gp_rel(Moji_flag)($gp)
    /* 485C0 80057DC0 6C00828C */  lw         $v0, 0x6C($a0)
    /* 485C4 80057DC4 24286500 */  and        $a1, $v1, $a1
    /* 485C8 80057DC8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 485CC 80057DCC F41185AF */  sw         $a1, %gp_rel(Moji_flag)($gp)
    /* 485D0 80057DD0 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 485D4 80057DD4 21082300 */  addu       $at, $at, $v1
    /* 485D8 80057DD8 F8E22390 */  lbu        $v1, %lo(D_800BE2F8)($at)
    /* 485DC 80057DDC 01004224 */  addiu      $v0, $v0, 0x1
    /* 485E0 80057DE0 6C0082AC */  sw         $v0, 0x6C($a0)
    /* 485E4 80057DE4 2528A300 */  or         $a1, $a1, $v1
    /* 485E8 80057DE8 F41185AF */  sw         $a1, %gp_rel(Moji_flag)($gp)
    /* 485EC 80057DEC 0800E003 */  jr         $ra
    /* 485F0 80057DF0 01000224 */   addiu     $v0, $zero, 0x1
.size func_80057DB8, . - func_80057DB8
