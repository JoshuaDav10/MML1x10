.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001E7E4
    /* EFE4 8001E7E4 00240400 */  sll        $a0, $a0, 16
    /* EFE8 8001E7E8 002C0500 */  sll        $a1, $a1, 16
    /* EFEC 8001E7EC 00340600 */  sll        $a2, $a2, 16
    /* EFF0 8001E7F0 0C80013C */  lui        $at, %hi(D_800BC740)
    /* EFF4 8001E7F4 40C724AC */  sw         $a0, %lo(D_800BC740)($at)
    /* EFF8 8001E7F8 0C80013C */  lui        $at, %hi(D_800BC744)
    /* EFFC 8001E7FC 44C725AC */  sw         $a1, %lo(D_800BC744)($at)
    /* F000 8001E800 0C80013C */  lui        $at, %hi(D_800BC748)
    /* F004 8001E804 48C726AC */  sw         $a2, %lo(D_800BC748)($at)
    /* F008 8001E808 0800E003 */  jr         $ra
    /* F00C 8001E80C 00000000 */   nop
.size func_8001E7E4, . - func_8001E7E4
