.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057AB8
    /* 482B8 80057AB8 1800A2AC */  sw         $v0, 0x18($a1)
    /* 482BC 80057ABC 0980013C */  lui        $at, %hi(D_8008CBA4)
    /* 482C0 80057AC0 21082300 */  addu       $at, $at, $v1
    /* 482C4 80057AC4 A4CB228C */  lw         $v0, %lo(D_8008CBA4)($at)
    /* 482C8 80057AC8 0800E003 */  jr         $ra
    /* 482CC 80057ACC 140082AC */   sw        $v0, 0x14($a0)
.size func_80057AB8, . - func_80057AB8
