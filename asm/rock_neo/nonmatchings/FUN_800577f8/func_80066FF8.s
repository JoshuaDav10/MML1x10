.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80066FF8
    /* 577F8 80066FF8 0980053C */  lui        $a1, %hi(D_8008CB5C)
    /* 577FC 80066FFC 5CCBA58C */  lw         $a1, %lo(D_8008CB5C)($a1)
.size func_80066FF8, . - func_80066FF8
