.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L80059714
    /* 49F14 80059714 0980013C */  lui        $at, %hi(D_8008CBA0)
    /* 49F18 80059718 21082200 */  addu       $at, $at, $v0
    /* 49F1C 8005971C A0CB228C */  lw         $v0, %lo(D_8008CBA0)($at)
    /* 49F20 80059720 0800E003 */  jr         $ra
    /* 49F24 80059724 140082AC */   sw        $v0, 0x14($a0)
.size .L80059714, . - .L80059714
