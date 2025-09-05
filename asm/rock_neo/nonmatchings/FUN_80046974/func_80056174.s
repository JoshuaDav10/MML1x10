.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80056174
    /* 46974 80056174 140082AC */  sw         $v0, 0x14($a0)
    /* 46978 80056178 0800E003 */  jr         $ra
    /* 4697C 8005617C 120083A4 */   sh        $v1, 0x12($a0)
.size func_80056174, . - func_80056174
