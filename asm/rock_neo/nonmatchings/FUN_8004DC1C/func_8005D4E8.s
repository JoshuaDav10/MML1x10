.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D4E8
    /* 4DCE8 8005D4E8 0C80013C */  lui        $at, %hi(D_800BBD84)
    /* 4DCEC 8005D4EC 84BD20A0 */  sb         $zero, %lo(D_800BBD84)($at)
    /* 4DCF0 8005D4F0 0800E003 */  jr         $ra
    /* 4DCF4 8005D4F4 00000000 */   nop
.size func_8005D4E8, . - func_8005D4E8
