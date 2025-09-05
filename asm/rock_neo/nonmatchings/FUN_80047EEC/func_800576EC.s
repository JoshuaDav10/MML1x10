.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800576EC
    /* 47EEC 800576EC 0980013C */  lui        $at, %hi(D_8008CBA4)
    /* 47EF0 800576F0 21082300 */  addu       $at, $at, $v1
    /* 47EF4 800576F4 A4CB228C */  lw         $v0, %lo(D_8008CBA4)($at)
    /* 47EF8 800576F8 00000000 */  nop
    /* 47EFC 800576FC 6C0082AC */  sw         $v0, 0x6C($a0)
    /* 47F00 80057700 0800E003 */  jr         $ra
    /* 47F04 80057704 01000224 */   addiu     $v0, $zero, 0x1
.size func_800576EC, . - func_800576EC
