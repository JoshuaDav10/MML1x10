.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002CFE0
    /* 1D7E0 8002CFE0 060022A4 */  sh         $v0, 0x6($at)
.size func_8002CFE0, . - func_8002CFE0
