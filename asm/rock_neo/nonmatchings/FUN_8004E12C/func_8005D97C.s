.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D97C
    /* 4E17C 8005D97C 0C80013C */  lui        $at, %hi(D_800BBDAB)
    /* 4E180 8005D980 ABBD20A0 */  sb         $zero, %lo(D_800BBDAB)($at)
    /* 4E184 8005D984 0800E003 */  jr         $ra
    /* 4E188 8005D988 00000000 */   nop
.size func_8005D97C, . - func_8005D97C
