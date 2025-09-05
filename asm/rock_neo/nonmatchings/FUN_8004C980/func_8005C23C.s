.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005C23C
    /* 4CA3C 8005C23C 0A80013C */  lui        $at, %hi(D_800989EC)
    /* 4CA40 8005C240 EC8924AC */  sw         $a0, %lo(D_800989EC)($at)
    /* 4CA44 8005C244 0800E003 */  jr         $ra
    /* 4CA48 8005C248 00000000 */   nop
.size func_8005C23C, . - func_8005C23C
