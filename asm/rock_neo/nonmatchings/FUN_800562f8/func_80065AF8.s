.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80065AF8
    /* 562F8 80065AF8 0B800C3C */  lui        $t4, %hi(D_800B7AB8)
    /* 562FC 80065AFC B87A8C8D */  lw         $t4, %lo(D_800B7AB8)($t4)
.size func_80065AF8, . - func_80065AF8
