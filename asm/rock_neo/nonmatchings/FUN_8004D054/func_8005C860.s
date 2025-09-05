.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005C860
    /* 4D060 8005C860 0800E003 */  jr         $ra
    /* 4D064 8005C864 00000000 */   nop
.size func_8005C860, . - func_8005C860
