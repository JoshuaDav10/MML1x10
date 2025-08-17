.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80039BA4
    /* 2A3A4 80039BA4 0A80013C */  lui        $at, %hi(D_800A395A)
    /* 2A3A8 80039BA8 5A3924A0 */  sb         $a0, %lo(D_800A395A)($at)
    /* 2A3AC 80039BAC 0A80013C */  lui        $at, %hi(D_800A395B)
    /* 2A3B0 80039BB0 5B3925A0 */  sb         $a1, %lo(D_800A395B)($at)
    /* 2A3B4 80039BB4 0800E003 */  jr         $ra
    /* 2A3B8 80039BB8 00000000 */   nop
.size func_80039BA4, . - func_80039BA4
