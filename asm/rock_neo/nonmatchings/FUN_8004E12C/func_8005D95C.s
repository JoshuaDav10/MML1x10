.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D95C
    /* 4E15C 8005D95C 0C80023C */  lui        $v0, %hi(D_800BBD87)
    /* 4E160 8005D960 87BD4290 */  lbu        $v0, %lo(D_800BBD87)($v0)
    /* 4E164 8005D964 0800E003 */  jr         $ra
    /* 4E168 8005D968 00000000 */   nop
.size func_8005D95C, . - func_8005D95C
