.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003A13C
    /* 2A93C 8003A13C 0A80023C */  lui        $v0, %hi(D_800A3962)
    /* 2A940 8003A140 62394280 */  lb         $v0, %lo(D_800A3962)($v0)
    /* 2A944 8003A144 00000000 */  nop
    /* 2A948 8003A148 27100200 */  nor        $v0, $zero, $v0
    /* 2A94C 8003A14C 0800E003 */  jr         $ra
    /* 2A950 8003A150 C2170200 */   srl       $v0, $v0, 31
.size func_8003A13C, . - func_8003A13C
