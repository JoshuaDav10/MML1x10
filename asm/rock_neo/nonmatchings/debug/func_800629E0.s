.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800629E0
    /* 531E0 800629E0 0C80013C */  lui        $at, %hi(Debug_work)
    /* 531E4 800629E4 104C20AC */  sw         $zero, %lo(Debug_work)($at)
    /* 531E8 800629E8 0800E003 */  jr         $ra
    /* 531EC 800629EC 00000000 */   nop
.size func_800629E0, . - func_800629E0
