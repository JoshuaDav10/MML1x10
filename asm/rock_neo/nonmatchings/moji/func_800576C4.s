.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800576C4
    /* 47EC4 800576C4 C0008594 */  lhu        $a1, 0xC0($a0)
    /* 47EC8 800576C8 CC0F8393 */  lbu        $v1, %gp_rel(D_80098830)($gp)
    /* 47ECC 800576CC 0100A224 */  addiu      $v0, $a1, 0x1
    /* 47ED0 800576D0 80280500 */  sll        $a1, $a1, 2
    /* 47ED4 800576D4 2128A400 */  addu       $a1, $a1, $a0
    /* 47ED8 800576D8 C00082A4 */  sh         $v0, 0xC0($a0)
    /* 47EDC 800576DC 6C00828C */  lw         $v0, 0x6C($a0)
    /* 47EE0 800576E0 80180300 */  sll        $v1, $v1, 2
    /* 47EE4 800576E4 01004224 */  addiu      $v0, $v0, 0x1
    /* 47EE8 800576E8 4C00A2AC */  sw         $v0, 0x4C($a1)
    /* 47EEC 800576EC 0980013C */  lui        $at, %hi(D_8008CBA4)
    /* 47EF0 800576F0 21082300 */  addu       $at, $at, $v1
    /* 47EF4 800576F4 A4CB228C */  lw         $v0, %lo(D_8008CBA4)($at)
    /* 47EF8 800576F8 00000000 */  nop
    /* 47EFC 800576FC 6C0082AC */  sw         $v0, 0x6C($a0)
    /* 47F00 80057700 0800E003 */  jr         $ra
    /* 47F04 80057704 01000224 */   addiu     $v0, $zero, 0x1
.size func_800576C4, . - func_800576C4
